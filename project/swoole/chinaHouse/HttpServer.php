<?php

/**
 * Description of HttpServer
 *
 * @author Sgenmi
 * @date 2017-08-03
 * @email 150560159@qq.com
 */
define("APP", __DIR__);
define("LOSE_LOG", 'loseLog');
error_reporting(0);
class HttpServer {

    public static $instance;
    public $http;
    public static $get;
    public static $header;
    public static $server;
    public static $houseConfig = array(
        'h_from' => array(
            0 => "新房",
            1 => "二手房",
            2 => '租房'
        )
    );

    public function __construct() {
        swoole_set_process_name("ChinaHouse");
        $http = new Swoole\Http\Server("0.0.0.0", 3388, SWOOLE_PROCESS);
        $http->set(
                array(
                    'worker_num' => 2,
                    'open_cpu_affinity' => 4,
                    'daemonize' => FALSE,
                    'max_request' => 1000000,
                    'task_worker_num' => 10,
                    'log_file' => APP . '/log',
                    'backlog' => 1024,
                    'dbServer' => array(
                        'database_type' => 'mysql',
                        'server' => '192.168.1.134',
                        'user' => 'root',
                        'passwd' => '123456',
                        'dbName' => 'loupan',
                        'port' => 3306
                    ),
                    'redis' => array(
                        'server' => '192.168.1.134',
                        'port' => 6388
                    )
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

        $data = array(
//            'header' => HttpServer::$header,
            'get' => HttpServer::$get
        );


        //解决chrome自动访问favicon
        if (HttpServer::$server['request_uri'] == "/favicon.ico") {
            $response->status(200);
            $response->end();
            return TRUE;
        }

        //记录数据

        if (HttpServer::$server['request_uri'] == '/chinahouse/get') {
            $rData = $data['get'];
            if (!isset($rData['host']) || !isset($rData['mark']) || !trim($rData['host']) || !trim($rData['mark'])) {
                $response->status(404);
                $response->end();
                return TRUE;
            }
            $d = $this->http->taskwait(serialize($rData));

            if (!$d || $d['error'] > 0) {
                if (isset($d['error']) && $d['error'] == 30001) {
                    $rData['louPan'] = 0;
                }
                $filename = APP . "/" . LOSE_LOG;
                Swoole\Async::write($filename, json_encode($rData) . "\n", -1, function() {
                    echo "数据写入成功\n";
                });
            }

            $response->status(200);
            $response->write(json_encode($d));
            $response->end();
            return TRUE;
        }

        $response->status(404);
//        $response->write('404');
        $response->end();
    }

    public function onTask(Swoole\Server $serv, $taskId, $fromId, $taskData) {
        $rdata = unserialize($taskData);

        static $redis = null;
        if ($redis == null) {
            $redis = new Redis();
            try {
                $_redisConfig = $serv->setting['redis'];
                $redisConnect = $redis->pconnect($_redisConfig['server'], $_redisConfig['port']);
                if(!$redisConnect){
                    throw  new Exception("redis连接失败", 6000);
                }
            } catch (Exception $exc) {
                echo $exc->getMessage()."_" . date("Y-m-d H:i:s") . "\n";
                $redis = null;
            }
        }

        if ($redis != null) {
            if (($redisData = $redis->hGet($rdata['host'], $rdata['mark']))) {
                return json_decode($redisData, TRUE);
            }
        }

        $_config = $serv->setting['dbServer'];
        $type = strtolower($_config['database_type']);
        $dsn = $type . ':host=' . $_config['server'] . ';port=' . $_config['port'] . ';dbname=' . $_config['dbName'];

        static $link = null;
        if ($link == null) {
            try {
                $link = new PDO($dsn, $_config['user'], $_config['passwd'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
                    PDO::ATTR_CASE => PDO::CASE_NATURAL, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
            } catch (PDOException $exc) {
                $link = null;
                return array("data" => array(), 'error' => 33001);
            }
        }
        if (strpos($rdata['host'], 'fang.com') !== FALSE && $rdata['mark'] == 1) {
            $urlSql = sprintf("SELECT lp_id,mark FROM  `url_lp` WHERE host='%s'  ", $rdata['host']);
        } else {
            $urlSql = sprintf("SELECT lp_id,mark FROM  `url_lp` WHERE host='%s' AND mark='%s' ", $rdata['host'], $rdata['mark']);
        }

        try {
            $urlDataQ = $link->query($urlSql);
        } catch (Exception $e) {
            //重新连接
            if ($e->getCode() == 'HY000') {
                echo "数据库重新连接_" . date("Y-m-d H:i:s") . "\n";
                try {
                    $link = new PDO($dsn, $_config['user'], $_config['passwd'], array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
                        PDO::ATTR_CASE => PDO::CASE_NATURAL, PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
                } catch (PDOException $exc) {
                    $link = null;
                    return array("data" => array(), 'error' => 33002);
                }
                $urlDataQ = $link->query($urlSql);
            }
        }
        if (!$urlDataQ) {
            return array("data" => array(), 'error' => 33003);
        }
        $urlData = $urlDataQ->fetch(\PDO::FETCH_ASSOC);
        if (!$urlData) {
            return array("data" => array(), 'error' => 30000);
        }

        $louPanSql = sprintf("SELECT * FROM  `loupan` WHERE id='%s'  ", $urlData['lp_id']);
        $louPanData = $link->query($louPanSql)->fetch(\PDO::FETCH_ASSOC);
        if (!$louPanData) {
            return array("data" => array(), 'error' => 30001);
        }
        unset($louPanData['id']);
        $h_from = HttpServer::$houseConfig['h_from'];
        $louPanData['h_from'] = isset($h_from[$louPanData['h_from']]) ? $h_from[$louPanData['h_from']] : "新房";
        $louPanData['title'] = null;
        $louPanData['keywords'] = null;
        $louPanData['description'] = null;
        
        foreach ( $louPanData as &$v){
            $v= trim($v);   
        }
        
        $ret = array("data" => $louPanData, 'error' => 0);
        if ($redis != NULL) {
            $redis->hSet($rdata['host'], $rdata['mark'], json_encode($ret));
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
