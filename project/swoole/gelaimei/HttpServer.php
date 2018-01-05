<?php

/**
 * Description of HttpServer
 *
 * @author Sgenmi
 * @date 2017-02-08
 * @email 150560159@qq.com
 */
define("APP", __DIR__);
define("USER_DATA", 'user_data');

class HttpServer {

    public static $instance;
    public $http;
    public static $get;
    public static $header;
    public static $server;

    public function __construct() {
        swoole_set_process_name("GeLaiMei");
        $http = new Swoole\Http\Server("0.0.0.0", 3388, SWOOLE_PROCESS);
        $http->set(
                array(
                    'worker_num' => 2,
                    'open_cpu_affinity' => 4,
                    'daemonize' => FALSE,
                    'max_request' => 1000000,
                    'task_worker_num' => 2,
                    'log_file' => APP . '/log',
                    'backlog' => 1024
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

        //收集google请求,定时请求,如果返回没有广告,则视为被封号

        $data = array(
            'header' => HttpServer::$header,
            'get' => HttpServer::$get,
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

        //记录数据
//        if (HttpServer::$server['request_uri'] == '/img/_rp.gif' && isset(HttpServer::$header['referer'])) {
        if (HttpServer::$server['request_uri'] == '/img/_rp.gif' ) {
//             $this->http->taskwait(serialize($data));
            $get = HttpServer::$get;
            $filename = APP . "/" . USER_DATA;
            $d = array(
                'sex' => isset($get['sex']) ? $get['sex'] : "",
                'age' => isset($get['age']) ? $get['age'] : "",
                'job' => isset($get['job']) ? $get['job'] : "",
                'postion' => isset($get['postion']) ? $get['postion'] : "",
                'mob' => isset($get['mob']) ? $get['mob'] : ""
            );

            if (array_filter($d)) {
                $d['time'] = date("Y-m-d H:i:s");
                $d['ip'] = HttpServer::$server ? HttpServer::$server['remote_addr'] : "";
                
                Swoole\Async::write($filename, json_encode($d) . "\n", -1, function() {
                    echo "数据写入成功";
                });
            }


            $response->status(200);
            $response->end();
            return TRUE;
        }
        //查看数据
        if (HttpServer::$server['request_uri'] == '/qgSeef/') {
            $html = "<html><head><title>启冠</title></head>"
                    . "<body>"
                    . "<table><tr>"
                    . "<td>时间</td>"
                    . "<td>性别</td>"
                    . "<td>年龄</td>"
                    . "<td>行业</td>"
                    . "<td>整形部位</td>"
                    . "<td>联系方式</td>"
                    . "<td>IP</td>"
                    . "</tr>";
            $filename = APP . "/" . USER_DATA;
            $hd = fopen($filename, "r");
            $i=0;
            while ($data = fgets($hd, 1024)) {
                $html .= "<tr>";
                $v = json_decode($data, TRUE);
                $html .= "<td>{$v['time']}</td>";
                $html .= "<td>{$v['sex']}</td>";
                $html .= "<td>{$v['age']}</td>";
                $html .= "<td>{$v['job']}</td>";
                $html .= "<td>{$v['postion']}</td>";
                $html .= "<td>{$v['mob']}</td>";
                $html .= "<td>{$v['ip']}</td>";
                $html .= "</tr>";
                $i++;
            }
            $html .= "<tr><td>总数:{$i}</td></tr></table></body></html>";
            $response->header('Content-Type', 'text/html;charset=utf-8');
            $response->status(200);
            $response->write($html);
            $response->end();
            return TRUE;
        }
        $response->status(200);
        $response->write('404');
        $response->end();
    }

    public function onTask(Swoole\Server $serv, $taskId, $fromId, $taskData) {
        $req_data = unserialize($taskData);
        $header = $req_data['header'];
        $get = $req_data['get'];
        $filename = App . "/" . USER_DATA;
        $d = array(
            'time' => date("Y-m-d H:i:s"),
            'sex' => isset($get['sex']) ? $get['sex'] : "",
            'age' => isset($get['age']) ? $get['age'] : "",
            'job' => isset($get['sex']) ? $get['job'] : "",
            'postion' => isset($get['sex']) ? $get['postion'] : "",
            'mob' => isset($get['sex']) ? $get['mob'] : "",
            'ip' => $header ? $header['x-real-ip'] : "",
        );
        Swoole\Async::write($filename, json_encode($d), -1, function() {
            echo "数据写入成功";
        });
        return "OK";
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
