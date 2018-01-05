<?php

define("APP", __DIR__);
define("APP_CLASS", APP . "/class/");
define("TPL_CLASS", APP . "/tpl/");
define("REDIS_HOST", "127.0.0.1");
define('REDIS_PORT', 6379);

define("BID_LOG", FALSE);

require APP_CLASS . 'RedisClient.php';

class Http_Server {

    public $http_serv;
    public $redis;

    public function __construct() {
        $http_serv = new Swoole\Http\Server("*.*.*.*", 11001);
        $this->redis = new RedisClient(REDIS_HOST, REDIS_PORT);

        $http_serv->set([
            'worker_num' => 8,
            'daemonize' => 1,
            'max_request' => 30000000,
            'dispatch_mode' => 1,
            'task_worker_num' => 20,
            'log_file' => APP.'/data/mgtv.log',
            'backlog'=>1024
        ]);

        $http_serv->on('start', array($this, 'onStart'));
        $http_serv->on("task", array($this, "onTask"));
        $http_serv->on("finish", array($this, "onFinish"));
        $http_serv->on("workerStart", array($this, "onWorkerStart"));

        $http_serv->on("request", function ( Swoole\Http\Request $req, Swoole\Http\Response $res) use ( $http_serv ) {

//            echo $req->server['request_uri'] . "\n";
            $params = array();

            switch ($req->server['request_uri']) {
                case '/favicon.ico':
                    break;
                case '/bid':
                case '/bid/':   //竞价请求
                    $params['action'] = "bid";
                    $params['request_bid'] = $req->rawContent();
                    
//                    if(!$params['request_bid'])
//                    {
//                        $res->status(200);
//                        $res->end();
//                        break;
//                    }
                    
                    if(BID_LOG)
                    {
                        $_date = date("Y-m-d");
                         $file = APP . "/data/" . $_date."_bid.log";
                        swoole_async_write($file,  $params['request_bid']."\n", -1, function($filename)
                        {
                            echo "接收bid,OK";    
                        });
                    }
                    
                    $task_d = $http_serv->taskwait(serialize($params));
                    $res->header("Server", "QWS");
                    $res->header("Content-Type", 'application/json');
                    $res->write(json_encode($task_d) . "\n");
                    $res->end();
                    break;
                case '/wd_s/':
                case '/wd_s':       //展示广告pv统计 
                    //异步redis实例
                    $get = $req->get;
                    //取广告id
                    $pid = explode("_", $get['pid']);
                    if (isset($pid[0]) && is_numeric($pid[0])) {
                        $date = date("Y-m-d");
                        $pv_key = 'pv_' . $date . '_' . $pid[0];
                        $this->redis->incr($pv_key, function($result, $success) {
//                            echo "pv:{$result}\n";
                        });
                        //解密 成功的出价
                        $decrypt_str = Encrypt::init()->decrypt($get['c']);
//                        echo $decrypt_str."\n";
                        if ($decrypt_str && ($money_arr = explode("|", $decrypt_str))) {
//                        if ($decrypt_str ) {
                            $cost_key = 'cost_' . $date . '_' . $pid[0];
                            $this->redis->incrby($cost_key, $money_arr[0], function($result, $success) {
//                                echo "cost:{$result}\n";
                            });
                        }
                    }
                    $res->status(200);
                    $res->end();
                    break;
                case '/wo_c/':              //点击数统计
                case '/wo_c':
                    //异步redis实例
                    $get = $req->get;
                    //取广告id
                    $pid = explode("_", $get['pid']);
                    if (isset($pid[0]) && is_numeric($pid[0])) {
                        $date = date("Y-m-d");
                        $key = 'click_' . $date . '_' . $pid[0];
                        $this->redis->incr($key, function($result, $success) {
                            
                        });
                    }
                    $res->status(200);
                    $res->end();
                    break;
                case '/sjm_reload_upads':
                    $http_serv->reload();
                    break;
                case '/get_redis_status':   //查看redis情况
                    $res->write($this->redis->stats());
                    $res->end();
                    break;
                case '/get_web_status':     //查看web服务器处理状态
                    $res->write(json_encode($http_serv->stats()));
                    $res->end();
                    break;
                case '/get_ads_status':                     //查看广告投放情况
                    $params['action'] = "ads";
                    $get = isset($req->get) ? $req->get : array();
                    //判断是否是取 今天的数据
                    if (isset($get['date']) && $get['date']) {
                        $params['date'] = $get['date'];
                        $params['is_today'] = 0;
                    } else {
                        $params['date'] = date("Y-m-d");
                        $params['is_today'] = 1;
                    }
                    $html = $http_serv->taskwait(serialize($params));
                    if ($html) {
                        $res->status(200);
                        $res->write($html);
                    }
                    $res->end();
                    break;

                case '/sjm_write_file':             //每天保存数据到文件
                    $params['action'] = "writeFile";
                        $pre_date = date("Y-m-d",  mktime(0, 0, 0, date("m"), date('d')-1, date("Y")));
//                    $pre_date = date("Y-m-d");
                    $params['date'] = $pre_date;
                    $file = APP . "/data/" . $pre_date;
                    $advert = $http_serv->taskwait(serialize($params), 100);
                    if ($advert) {
                        foreach ($advert as $v) {
                            $content = json_encode($v) . "\n";
                            $id = $v['id'];
                            swoole_async_write($file, $content, -1, function ($file) use($id ) {
                                echo '写入文件成功:' . $file, "[" . $id . "]", "\n";
                            });
                        }
                    }
                    $res->end();
                    break;
                default:
                    $res->header("Content-type", 'text/html; charset=utf-8');
                    $res->write("<h1>对接中</h1>");
                    $res->end();
                    break;
            }
        });
        $http_serv->start();
    }

    function onStart(swoole_server $serv) {
        echo 'Swoole->' . swoole_version() . "开启http\n";
        echo $serv->master_pid . "\n";
    }

    //多个进程处理请求
    function onTask($serv, $taskId, $fromId, $data) {
        $params = unserialize($data);
        $action = $params['action'];
        switch ($action) {
            case 'bid':
//                Mg_TV::init()->bidAction($params);
                return Mg_TV::init()->bidAction($params);

            case 'ads':

                if ($params['is_today']) {              //查看当天数据
                    $advert = Advert::$advert;
                    $redis = new Redis();
                    $redis->connect(REDIS_HOST, REDIS_PORT);
                    $_advert = array();
                    foreach ($advert as $k => $adv) {
                        foreach ($adv as $vv) {
                            //展示成功pv
                            $pv_key = 'pv_' . $params['date'] . '_' . $vv['id'];
                            $pv = $redis->get($pv_key);
                            //消费金额[分]
                            $cost_key = 'cost_' . $params['date'] . '_' . $vv['id'];
                            $cost = $redis->get($cost_key);
                            //点击
                            $click_key = 'click_' . $params['date'] . '_' . $vv['id'];
                            $click = $redis->get($click_key);
                            //参与竞价pv
                            $bidpv_key = 'bidpv_' . $params['date'] . '_' . $vv['id'];
                            $bidpv = $redis->get($bidpv_key);

                            $vv['pv'] = $pv ? $pv : 0;
                            $vv['cost'] = $cost ? $cost : 0;
                            $vv['click'] = $click ? $click : 0;
                            $vv['bidpv'] = $bidpv ? $bidpv : 0;
                            $vv['ctype'] = Mg_Dict::$ctype[$vv['ctype']];
                            $vv['size'] = $k;
                            $_advert[] = $vv;
                        }
                    }
                    $redis->close();
                } else {                       //查看指定时间
                    $file = APP . "/data/" . $params['date'];
                    if (file_exists($file)) {
                        $hd = fopen($file, "r");
                        while (($line = fgets($hd, 1024))) {
                            $_advert[] = json_decode($line, TRUE);
                        }
                    }
                }
                ob_start();
                require TPL_CLASS . 'get_ads_status.php';
                $html = ob_get_contents();
                ob_end_clean();

                return $html;
            case 'writeFile':
                $advert = Advert::$advert;
                $_advert = array();
                if ($advert) {
                    $redis = new Redis();
                    $redis->connect(REDIS_HOST, REDIS_PORT);

                    foreach ($advert as $k => $adv) {
                        foreach ($adv as $vv) {
                            //展示成功pv
                            $pv_key = 'pv_' . $params['date'] . '_' . $vv['id'];
                            $pv = $redis->get($pv_key);
                            //消费金额[分]
                            $cost_key = 'cost_' . $params['date'] . '_' . $vv['id'];
                            $cost = $redis->get($cost_key);
                            //点击
                            $click_key = 'click_' . $params['date'] . '_' . $vv['id'];
                            $click = $redis->get($click_key);
                            //参与竞价pv
                            $bidpv_key = 'bidpv_' . $params['date'] . '_' . $vv['id'];
                            $bidpv = $redis->get($bidpv_key);

                            $vv['pv'] = $pv ? $pv : 0;
                            $vv['cost'] = $cost ? $cost : 0;
                            $vv['click'] = $click ? $click : 0;
                            $vv['bidpv'] = $bidpv ? $bidpv : 0;
                            $vv['ctype'] = Mg_Dict::$ctype[$vv['ctype']];
                            $vv['size'] = $k;
                            $_advert[] = $vv;
                        }
                    }
                    $redis->close();
                }
                return $_advert;
            default:
                return "OK";
        }
    }

    function onFinish($serv, $taskId, $data) {
        return $data;
    }

    function onWorkerStart($serv, $id) {
        opcache_reset();
        require APP_CLASS . '/Encrypt.php';
        require APP_CLASS . '/Mg_Dict.php';
        require APP_CLASS . '/Mg_TV.php';
        require APP_CLASS . '/Advert.php';
        if ($serv->taskworker) {
            echo "**********************taskworker\n";
        }
        Advert::set_ads();
    }

}

$httpS = new Http_Server();


//API

//http://127.0.0.1:8888/bid   竞价请求给SSP
//http://127.0.0.1:8888/wd_s  展示广告pv统计 
//http://127.0.0.1:8888/wd_c  广告点击统计 
//http://127.0.0.1:8888/get_redis_status   //查看redis情况
//http://127.0.0.1:8888/get_web_status    //查看web服务器处理状态
//http://127.0.0.1:8888/get_ads_status     //查看广告投放情况
//http://127.0.0.1:8888/sjm_write_file:       //保存前一天的投放结果    任务计划写入data文件
//http://127.0.0.1:8888/sjm_reload_upads:       //WEB服务优雅的重启,当广告单子有变动时,执行,可以更新advert静态变量







