<?php

/**
 * Description of HttpServer
 *
 * @author Sgenmi
 * @date 2017-03-28
 * @email 150560159@qq.com
 */
define("BASE", __DIR__);
define("APP", BASE . "/app");
define("VER", "v1");
define("APP_NAME", "ESAPI");
define("DELAY_DATE", 60);


// 加载类
spl_autoload_register(function ($class_name) {

//    echo $class_name,"\n";
    $filePath = [
        'app' => APP,
        'lib' => BASE . "/lib"
    ];
    foreach ($filePath as $v) {
        $file = $v . "/" . str_replace('\\', "/", $class_name) . '.php';
//        echo $file,"\n";

        if (is_file($file)) {
            require_once $file;
            return TRUE;
        }
    }
    echo $class_name, "\n";
    throw new Exception("文件不存在");
});
//加载函数
include_once BASE . "/lib/fun.php";

class HttpServer {

    public static $instance;
    public static $http;
    public static $get;
    public static $header;
    public static $server;
    public static $config;
    public static $router;
    public static $redis;

    public function __construct() {
        swoole_set_process_name(APP_NAME);
        HttpServer::$config = require APP . "/Config/conf.php";
        HttpServer::$config['server']['elasticSearch'] = HttpServer::$config['elasticSearch'];


        $http = new Swoole\Http\Server("0.0.0.0", 3388, SWOOLE_PROCESS);
        $http->set(HttpServer::$config['server']);
        $http->on('workerStart', array($this, 'onWorkerStart'));
        $http->on('request', array($this, 'onRequest'));
        $http->on("task", array($this, "onTask"));
        $http->on("finish", array($this, "onFinish"));
        HttpServer::$http = $http;
        $http->start();
    }

    public function onWorkerStart($serv, $workerId) {
        //路由汇总
        $router = require APP . "/Config/router.php";
        foreach ($router as $v) {
            $patternArr = explode(" ", $v['pattern']);
            $method = strtoupper(trim($patternArr[0]));
//            $key = $method."_".$v['controller']."_".$v['action'];
            HttpServer::$router[$method][] = $v;
        }
        $processName = APP_NAME . "   worker";
        if ($workerId >= $serv->setting['worker_num']) {
            $processName = APP_NAME . "  task worker";
        }
        swoole_set_process_name($processName);

        //连接redis
        $redisConfig = \HttpServer::$config['redis'];
        $redis = new \Redis();
        
        $d = $redis->pconnect($redisConfig['host'], $redisConfig['port']);
        if (!$d) {
              \HttpServer::$redis=null;
              return ;
        }
        
         if($redisConfig['auth'] && !$redis->auth($redisConfig['auth']) ){
            throw new Exception("hit: redis auth faild");
        }
        
        try {
                $redis->select($redisConfig['db']);
        } catch (Exception $ex) {
            echo $ex->getMessage(),"\n";
            \HttpServer::$redis=null;
        }
       
        \HttpServer::$redis = $redis;
    }

    //restful 正则配置
    private function checkUri($str, $pattern) {
        $ma = array();
        $pattern = ltrim(rtrim($pattern, "/"));
        $pattern = "/" . str_replace("/", "\/", $pattern) . "\/?$/";
        $pattern = str_replace(":s", "([^\/]+)", $pattern);
        if (preg_match($pattern, $str, $ma) > 0) {
            return $ma;
        }
        return null;
    }

    /*
     * 路由 动态分配
     */

    private function onRouter(Swoole\Http\Request $request) {

        $method = \HttpServer::$server['request_method'];
        $router = \HttpServer::$router[$method];
        //非法的操作方式
        if (!isset(\HttpServer::$router[$method])) {
            return ['code' => 2004];
        }
        //移除版本配置
        $uri = str_replace("/api/" . VER, "", $request->server['request_uri']);
//        echo $uri,"\n";
        foreach ($router as $v) {
            $pats = explode(" ", $v['pattern']);
//            print_r($pats);

            $uriArr = $this->checkUri(strtolower($uri), strtolower($pats[1]));

//            print_r($uriArr);

            if ($uriArr) {
                //移除第一个元素,保留实际参数
                array_shift($uriArr);
                $checkInfo = array(
                    'params' => $uriArr,
                    'controller' => $v['controller'],
                    'action' => $v['action']
                );
                break;
            }
        }
        //接口不存在
        if (!isset($checkInfo)) {
            return ['code' => 2005];
        }
        $className = "\\Controller\\" . ucfirst($checkInfo['controller']);
        //如果 class不存在,捕异常,返回错误code,控制器不存在
        try {
            $contrObj = new $className();
        } catch (Exception $exc) {
            echo $exc->getTraceAsString();
            return ['code' => 2002];
        }
        //方法调用
        $ac = $checkInfo['action'] . 'Action';
        $ret = $contrObj->$ac();
//        print_r($ret);

        return $ret;
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
            HttpServer::$server['request_method'] = strtoupper(HttpServer::$server['request_method']);
        } else {
            HttpServer::$server = [];
        }
        echo"*****************header**************\n";
        print_r($request->header);
        echo"*****************get**************\n";
        print_r($request->get);
        echo"*****************server**************\n";
        print_r($request->server);
//        print_r($request->post);

        $ret = $this->onRouter($request);
        if(is_array($ret)){
            $ret = json_encode($ret);
        }
        
//        $retArr = $this->http->taskwait(serialize($Tdata), 5);
        $response->status(200);
        $response->write($ret);
        $response->end();
    }

    public function onTask(Swoole\Server $serv, $taskId, $fromId, $taskData) {
        //连接ES
        $hosts = $serv->setting['elasticSearch'];
        $clientBuilder = \Elasticsearch\ClientBuilder::create();
        $clientBuilder->setHosts($hosts);
        $client = $clientBuilder->build();

        return array("a" => 1);
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
