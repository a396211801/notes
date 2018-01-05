<?php

/**
 * Description of HttpServer
 *
 * @author Sgenmi
 * @date 2016-12-27
 * @email 150560159@qq.com
 */
//http://www.gieuods.cc/x.html 这是浙江已经被封的一个单子 
//http://www.isueosk.cc/lol.html这个是正在投放，比较危险的单子 

define("APP", __DIR__);
define("DOMAIN", APP . "/domains");
define('DOMAIN_LOSE', DOMAIN . "/domainLose");
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
        $http->on('WorkerStart', array($this, 'onWorkerStart'));
        $http->on('request', array($this, 'onRequest'));
        $http->on("task", array($this, "onTask"));
        $http->on("finish", array($this, "onFinish"));
        $this->http = $http;
        $this->create_table();
        $http->start();
    }

    //创建内存表
    public function create_table() {
        //当前正常域名
        $domain_table = new swoole_table(50);
        $domain_table->column('domain', Swoole\Table::TYPE_STRING, 30);       //1,2,4,8
        $domain_table->column('status', Swoole\Table::TYPE_INT, 1);             //域名状态
        $domain_table->column('lose_count', Swoole\Table::TYPE_INT, 1);             //获取广告失败次数
        $domain_table->column('req_ref', Swoole\Table::TYPE_STRING, 100);       //投放广告页面,自动采集
        $domain_table->column('req_ua', Swoole\Table::TYPE_STRING, 110);    //客户端ua,自动采集
        $domain_table->column('req_ip', Swoole\Table::TYPE_STRING, 16);    //客户端ip,自动采集
        $domain_table->column('req_google', Swoole\Table::TYPE_STRING, 1300);   //客户端请求google广告地址,自动采集

        $domain_table->create();
        MD::$table['okDomain'] = $domain_table;
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
            $html = array(
                '域名|投放地址|客户UA|客户IP|剩余可用次数[每个域名二次机会]|域名状态'
            );
            foreach (MD::$table['okDomain'] as $v) {
                $status = "正常";
                if ($v['status'] == 0) {
                    $status = "被封";
                }
                $html[] = $v['domain'] . " | " . $v['req_ref'] . " | " . $v['req_ua'] . " | " . $v['req_ip'] . " | " . $v['lose_count']." | ".$status;
            }
            $response->header('Content-Type', 'text/html;charset=utf-8');
            $response->status(200);
            
            $response->write(implode("<br><br>", $html));
            $response->end();
            return TRUE;
        }


        //收集数据
        if (HttpServer::$server['request_uri'] == '/img/_rf.gif' && isset(HttpServer::$header['referer'])) {
            //只有域名内存中存在时
            if (MD::$table['okDomain']->exist(HttpServer::$header['host'])) {
                $req = array(
                    'req_ref' => HttpServer::$header ? HttpServer::$header['referer'] : "",
                    'req_ua' => HttpServer::$header ? HttpServer::$header['user-agent'] : "",
                    'req_ip' => HttpServer::$header ? HttpServer::$header['x-real-ip'] : "",
                    'req_google' => HttpServer::$get ? HttpServer::$get['f'] : "",
                );
                MD::$table['okDomain']->set(HttpServer::$header['host'], $req);
            }
            $response->status(200);
            $response->end();
            return TRUE;
        }
        //重启
        if (isset(HttpServer::$get['ac']) && HttpServer::$get['ac'] == 'reload') {
            $this->http->reload();
            return TRUE;
        }
        
        if(HttpServer::$server['request_uri']=='/asw/c.html')
        {
             $html = $this->http->taskwait(serialize($data));
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
        //判断域名
        if (!isset($req_data['header']['host']) || !$req_data['header']['host']) {
            return "OK";
        }
        $host = $req_data['header']['host'];
        $domain_d = array();
        //域名google 内存状态
        if (!MD::$table['okDomain']->exist($host)) {
            $domain_d = array('domain' => $host, 'status' => 1);
            MD::$table['okDomain']->set($host, $domain_d);
        } else {
            $domain_d = MD::$table['okDomain']->get($host);
        }

        $file_path = DOMAIN . "/" . $req_data['header']['host'];
        $file_ads_config = $file_path . "/ads.php";
        if (!is_dir($file_path) || !is_file($file_ads_config)) {
            return "OK";
        }
        //加载广告配置
        $ads_config = require $file_ads_config;
        if ($domain_d['status'] == 0) {
            if (isset($ads_config['google'])) {
                unset($ads_config['google']);
            }
        }

        //排序,取权重最高的
        arsort($ads_config);
        //取第一个key值
        $first_key = key($ads_config);
        $file_ads = $file_path . "/" . $first_key . ".html";
        if (!is_file($file_ads)) {
            return 'OK';
        }
        ob_start();
        require $file_ads;
        $ads_html = ob_get_contents();
        ob_end_clean();
        return $ads_html;
//        return "OK";
    }

    function onFinish(Swoole\Server $serv, $taskId, $data) {
        return $data;
    }

    public function onWorkerStart(Swoole\Server $serv, $worker_id) {

        if (is_file(DOMAIN_LOSE) && ( $content = file_get_contents(DOMAIN_LOSE))) {
            $content_arr = unserialize($content);
            foreach ($content_arr as $v) {
                MD::$table['okDomain']->set($v, array('domain' => $v, 'status' => 0));
            }
        }

        if ($worker_id == 0) {
            //定时任务,每10分钟,来跑一次域名
            $time = 2000;
//            $time = 600000;
            $serv->tick($time, function($id) {
                foreach (MD::$table['okDomain'] as $v) {
                    if ($v['status'] == 1 && $v['req_google'] && $v['req_google'] !='undefined') {
                        
                        echo $v['domain']." | 发送google请求\n";
                        $ch = curl_init();
                        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                        curl_setopt($ch, CURLOPT_URL, $v['req_google']);
                        $ip = '125.122.48.13';
//                        $ip = $v['req_ip'];
                        $headerArr[] = 'Referer:' . $v['req_ref'];
                        $headerArr[] = 'User-Agent:' . $v['req_ua'];
                        $headerArr[] = 'CLIENT-IP:' . $ip;
                        $headerArr[] = 'X-FORWARDED-FOR:' . $ip;
                        $headerArr[] = 'REMOTE_ADDR:' . $ip;
                        curl_setopt($ch, CURLOPT_HTTPHEADER, $headerArr);
                        curl_setopt($ch, CURLOPT_USERAGENT, $v['req_ua']);
                        curl_setopt($ch, CURLOPT_TIMEOUT, 10);
                        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
                        curl_setopt($ch, CURLOPT_MAXREDIRS, 1);
                        $ret = curl_exec($ch);
                        $code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
                        
                        //默认
                        $lose_count = 0;
                        $status = 1;
                        
                        if ($code == 200 && mb_strlen(trim($ret)) < 200) {
                            $_count = $v['lose_count'] ? $v['lose_count'] : 0;
                            $lose_count = $_count + 1;
                            if ($lose_count >= LOSE_COUNT) {
                                $status = 0;
                            }
                        } else if ($code == 200 && mb_strlen(trim($ret)) > 200) {
                            $lose_count = 0;
                            $status = 1;
                        }

                        if ($status == 0) {
                            $arr = array();
                            if (is_file(DOMAIN_LOSE) && ($domain_content = file_get_contents(DOMAIN_LOSE))) {
                                $arr = unserialize($domain_content);
                            }
                            $arr[] = $v['domain'];
                            swoole_async_writefile(DOMAIN_LOSE, serialize(array_unique($arr)));
                            echo $v['domain'] . '域名被封|' . date("Y-m-d H:i:s") . "\n";
                        }

                        MD::$table['okDomain']->set($v['domain'], array('status' => $status, 'lose_count' => $lose_count));
                    }
                }
            });
        }
    }

    public static function getInstance() {
        if (!self::$instance) {
            self::$instance = new HttpServer;
        }
        return self::$instance;
    }

}

HttpServer::getInstance();
