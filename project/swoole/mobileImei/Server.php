<?php

/**
 * Description of HttpServer
 *
 * @author Sgenmi
 * @date 2017-03-28
 * @email 150560159@qq.com
 */
define("APP", __DIR__);

// 加载类
spl_autoload_register(function ($class_name) {
    require_once APP . "/class/" . $class_name . '.php';
});
//加载函数
include_once  APP."/lib/fun.php";

class HttpServer
{

    public static $instance;
    public $http;
    public static $get;
    public static $header;
    public static $server;
    private $mobile_app = array(
        'styy' => array(///我司对外自定义渠道号
            'title' => "手机百度",
            'Channel' => 'qiguan001', //百度对接渠道号
            'class' => "MobBaidu"
        )
    );

    public function __construct()
    {
        swoole_set_process_name("MobileImei");
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
                'mobile_app' => $this->mobile_app
            )
        );
        $http->on('request', array($this, 'onRequest'));
        $http->on("task", array($this, "onTask"));
        $http->on("finish", array($this, "onFinish"));
        $this->http = $http;
        $http->start();
    }

    /*
     * 路由 动态分配
     */
    private function onRouter($url, $request)
    {
        //大众点评
        if (strpos($url, "/api/v1/ad/DZloadimei") !== false) {
            $m = new MobIMEI();
            return ["data" => $m->loadimei($request), "ret" => 0];
        }
        if (strpos($url, "/api/v1/ad/DZdownimei") !== false) {
            $m = new MobIMEI();
            return ["data" => $m->downimei($request), "ret" => 0];
        }
        return ["data" => "", "ret" => -1];

    }

    public function onRequest(Swoole\Http\Request $request, Swoole\Http\Response $response)
    {
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

        //url分发
        $resuri = $request->server['request_uri'];
        $res = $this->onRouter($resuri, $request);
        if ($res['ret'] == 0) {
            $response->status(200);
            $response->write($res['data']);
            $response->end();
            return;
        }

        //兼容旧请求；
        $channe = isset($request->get['ch']) ? $request->get['ch'] : "";
        $imei = isset($request->get['im']) ? $request->get['im'] : "";
        $Tdata = array(
            'channe' => $channe,
            'imei' => $imei
        );
        $retArr = $this->http->taskwait(serialize($Tdata), 5);
        $response->status(200);
        $response->write(json_encode($retArr));
        $response->end();
    }

    public function onTask(Swoole\Server $serv, $taskId, $fromId, $taskData)
    {

        $ret = array('code' => 10001, 'data' => array());
        $Tdata = unserialize($taskData);
        if (!$Tdata['channe'] || !$Tdata['imei']) {
            return $ret;
        }
        $mobile_app = $serv->setting['mobile_app'];
        if (isset($mobile_app[$Tdata['channe']])) {
            $channe = $mobile_app[$Tdata['channe']];
        } else {
            $ret['code'] = 10002;
            return $ret;
        }
        // require_once APP . "/class/" . $channe['class'] . ".php";
        switch ($Tdata['channe']) {
            case 'styy':
                $obj = new MobBaidu();
                $retArr = $obj->sendApi($Tdata['imei']);
                if (!$retArr) {
                    $ret['code'] = 10003;
                } else {
                    $ret['code'] = 0;
                    $ret['data'] = $retArr;
                }
                break;

            default:
                break;
        }

        return $ret;
    }

    function onFinish(Swoole\Server $serv, $taskId, $data)
    {
        return $data;
    }

    public static function getInstance()
    {
        if (!self::$instance) {
            self::$instance = new HttpServer;
        }
        return self::$instance;
    }

}


HttpServer::getInstance();
