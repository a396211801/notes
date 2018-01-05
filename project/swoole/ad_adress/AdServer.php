<?php

/**
 * Description of HttpServer
 *
 * @author Sgenmi
 * @date 2017-03-28
 * @email 150560159@qq.com
 */
define("APP", __DIR__);

class HttpServer {

    public static $instance;
    public $http;
    public static $get;
    public static $header;
    public static $server;
    private $mongoDB = array(
        'host' => "192.168.1.199",
        'port' => 27017,
        'db_name' => "lonlat_data",
        'db_table' => 'tbl_map',
        'db_user' => "",
        'db_pwd' => ""
    );

    public function __construct() {
        swoole_set_process_name("Ad_Adress");
        $http = new Swoole\Http\Server("0.0.0.0", 3388, SWOOLE_PROCESS);
        $http->set(
                array(
                    'worker_num' => 2,
                    'open_cpu_affinity' => 4,
                    'daemonize' => FALSE,
                    'max_request' => 1000000,
                    'task_worker_num' => 2,
                    'log_file' => APP . '/log',
                    'backlog' => 1024,
                    'mongo' => $this->mongoDB
                )
        );
        $http->on('request', array($this, 'onRequest'));
        $http->on("task", array($this, "onTask"));
        $http->on("finish", array($this, "onFinish"));
        $this->http = $http;
        $http->start();
    }

    public function onRequest(Swoole\Http\Request $request, Swoole\Http\Response $response) {
        if (isset($request->header)) {
            HttpServer::$header = $request->header;
        } else {
            HttpServer::$header = [];
        }
        if (isset($request->get)) {
            HttpServer::$get = $request->get;
        } else {
            HttpServer::$get = [];
        }

        if (isset($request->server)) {
            HttpServer::$server = $request->server;
        } else {
            HttpServer::$server = [];
        }
        $ad = isset($request->get['had']) ? $request->get['had'] : "";
        $ad_json = $this->http->taskwait($ad);

        $response->status(200);
        $response->write(json_encode($ad_json));
        $response->end();
    }

    public function onTask(Swoole\Server $serv, $taskId, $fromId, $taskData) {

        $ret = array(
            'code' => 1,
            'data' => array()
        );
        if (!$taskData) {
            return $ret;
        }
        static $DBlink = null;
        $db_config = $serv->setting['mongo'];
        if ($DBlink == null) {
            $connect_str = sprintf("mongodb://%s:%s/%s", $db_config['host'], $db_config['port'], $db_config['db_name']);
            $DBlink = new \MongoDB\Driver\Manager($connect_str);
            if (!$DBlink) {
                $DBlink = null;
                return array("code" => '10000', "data" => array());
            }
        }
        $where = array(
            'ad' => $taskData
        );
        $options = array(
            "projection" => array(
                '_id' => FALSE,
                'lat' => true,
                'lon' => true,
                'province' => true,
                'city' => true,
                'district' => true
            ),
            'limit' => 1
        );
        $query = new MongoDB\Driver\Query($where, $options);
        $ad_info = $DBlink->executeQuery($db_config['db_name'] . "." . $db_config['db_table'], $query)->toArray();

        $data = array(
            'lat' => "",
            'lon' => "",
            'province' => "",
            'city' => "",
            'district' => ""
        );

        if ($ad_info) {
            $data['lat'] = $ad_info[0]->lat;
            $data['lon'] = $ad_info[0]->lon;
            $data['province'] = $ad_info[0]->province;
            $data['city'] = $ad_info[0]->city;
            $data['district'] = $ad_info[0]->district;
            $ret['code'] = 0;
            $ret['data'] = $data;
        } else {
            $ret['code'] = 9999;
        }
        return $ret;
    }

    function onFinish(Swoole\Server $serv, $taskId, $data) {
        return $data;
    }

    public static function getInstance() {
        if (!self::$instance) {
            self::$instance = new HttpServer;
        }
        return self::$instance;
    }

}

HttpServer::getInstance();
