<?php

/**
 * Description of HttpServer
 *
 * @author Sgenmi
 * @date 2017-5-23
 * @email 150560159@qq.com
 */

define("APP", __DIR__);
define("TPL", APP . "/templete");
define('LOSE_COUNT', 2);

class MD {

    public static $table;

}

class HttpServer {

    public static $instance;
    public $http;
    public static $get;
    public static $header;
    public static $server;

    public function __construct() {
        $http = new Swoole\Http\Server("0.0.0.0", 3388);
        $http->set(
                array(
                    'worker_num' => 2,
                    'open_cpu_affinity' => 4,
//                    'daemonize' => TRUE,
                    'daemonize' => FALSE,
                    'max_request' => 1000000,
//                    'dispatch_mode' => 1,
                    'task_worker_num' => 2,
                    'log_file' => APP . '/domain.log',
                    'backlog' => 1024
                )
        );
//        $http->on('WorkerStart', array($this, 'onWorkerStart'));
        $http->on('request', array($this, 'onRequest'));
        $http->on("task", array($this, "onTask"));
        $http->on("finish", array($this, "onFinish"));
        $this->http = $http;
        $this->create_table();
        $http->start();
    }

    //创建内存表
    public function create_table() {}

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
            'get' => HttpServer::$get
        );


        //调试
//        print_r(HttpServer::$get);
//        print_r(HttpServer::$server);
//        print_r(HttpServer::$header);
//        
//        
        //解决chrome自动访问favicon
        if (HttpServer::$server['request_uri'] == "/favicon.ico") {
            $response->status(200);
            $response->end();
            return TRUE;
        }
        //查看是否被封
        if (HttpServer::$server['request_uri'] == "/seeStatus") {
            $html = "ffff";
            $response->header('Content-Type', 'text/html;charset=utf-8');
            $response->status(200);
            $response->write(implode("<br><br>", $html));
            $response->end();
            return TRUE;
        }

        //重启
        if (isset(HttpServer::$get['ac']) && HttpServer::$get['ac'] == 'reload') {
            $this->http->reload();
            return TRUE;
        }

        $html = $this->http->taskwait(serialize($data));
        $response->status(200);
        $response->write($html);
        $response->end();
        return TRUE;
    }

    public function onTask(Swoole\Server $serv, $taskId, $fromId, $taskData) {
        $req_data = unserialize($taskData);
        if (isset($req_data['get']['code']) && $req_data['get']['code'])
        {
            $advert_id = $req_data['get']['code'];
        }else{
            return "404";
        }
        $ref = isset($req_data['header']['referer']) && $req_data['header']['referer'] ? $req_data['header']['referer'] :"";
        ob_start();
        require TPL . "/gs.php";
        $ads_html = ob_get_contents();
        ob_end_clean();
        return $ads_html;
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
