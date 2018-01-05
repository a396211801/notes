<?php

/**
 * Description of HttpServer
 *
 * @author Sgenmi
 * @date 2017-06-29
 * @email 150560159@qq.com
 */
require_once 'PK.php';
require_once 'Domain.php';

class ProxyList{
    static $proxyList=  array(
            array(
                "server" => "yeodkec.cc:45267",
                'username' => "freecont",
                "password" => "qg!@#629"
            )
        );
    
        static function getProxy()
        {
           $servKey =  array_rand(self::$proxyList);
           return self::$proxyList[$servKey];
        }
    
}

class HttpServer {
    private $setting = array(
        'worker_num' => 1,
        'open_cpu_affinity' => 1,
        'daemonize' => FALSE,
        'max_request' => 10000000,
        'task_worker_num' => 2,
        'log_file' =>   './log',
        'backlog' => 2024
    );
    public static $instance;
    public $http;
    public static $get;
    public static $header;
    public static $server;

    public function __construct() {
//        swoole_set_process_name("ProxyList");
        $http = new Swoole\Http\Server("0.0.0.0", 3388);
        $http->set($this->setting);
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

        //收集google请求,定时请求,如果返回没有广告,则视为被封号

        $data = array(
            'header' => HttpServer::$header,
            'get' => HttpServer::$get,
        );


        //解决chrome自动访问favicon
        if (HttpServer::$server['request_uri'] == "/favicon.ico") {
            $response->status(200);
            $response->end();
            return TRUE;
        }

        //查看数据
        if (HttpServer::$server['request_uri'] == '/getlist/') {
            $json = $this->http->taskwait("json");
            $response->status(200);
            $response->write( json_encode($json));
            $response->end();
            return TRUE;
        }
        $response->status(200);
        $response->write('404');
        $response->end();
    }

    public function onTask(Swoole\Server $serv, $taskId, $fromId, $taskData) {
        $server = ProxyList::getProxy();
        $pk = new PK($server['username'], $server['password']);
        $getPk = $pk->getEn();
        $arr = array(
            'code' => 0,
            'data' => array(
                'domains' => Domain::getDomains(),
                'purl' => array(
                    'type' => "https",
                    'serv' => $server['server']
                ),
                'time' => $getPk['time'],
                'pk' => $getPk['pk']
            )
        );
        return $arr;
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
