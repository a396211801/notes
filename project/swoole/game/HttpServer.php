<?php

define('APP_PATH',__DIR__);

class HttpServer {

    public static $instance;
    public $http;
    public static $get;
    public static $header;
    public static $server;
    public static $post;
    protected  $total = array();
    protected $muber= array(
        '2244'=>array(
            'info'=>array(
                'title'=>'视频年卡大集锦',
                'bannerUrl'=>'/img/game/2244.jpg',
                'actUrl'=>'/g?id=2244'
            ),
            'limitTimes'=>8
        ),
        '2324'=>array(
            'info'=>array(
                'title'=>'新机抢走玩开心',
                'bannerUrl'=>'/img/game/2324.png',
                'actUrl'=>'/g?id=2324'
            ),
            'limitTimes'=>8
        ),
        '2390'=>array(
            'info'=>array(
                'title'=>'天降红包雨，速来拿红包',
                'bannerUrl'=>'/img/game/2390.png',
                'actUrl'=>'/g?id=2390'
            ),
            'limitTimes'=>8
        ),
        '2419'=>array(
            'info'=>array(
                'title'=>'抢摄影利器做好“摄”之徒',
                'bannerUrl'=>'/img/game/2419.jpg',
                'actUrl'=>'/g?id=2419'
            ),
            'limitTimes'=>8
        ),
        '2421'=>array(
            'info'=>array(
                'title'=>'冰爽空调，冷风凉透心',
                'bannerUrl'=>'/img/game/2421.jpg',
                'actUrl'=>'/g?id=2421'
            ),
            'limitTimes'=>8
        ),
        '2426'=>array(
            'info'=>array(
                'title'=>'送观影券，让好片燃爆夏天',
                'bannerUrl'=>'/img/game/2426.jpg',
                'actUrl'=>'/g?id=2426'
            ),
            'limitTimes'=>8
        ),
        '2427'=>array(
            'info'=>array(
                'title'=>'钱包入账，花不完',
                'bannerUrl'=>'/img/game/2427.jpg',
                'actUrl'=>'/g?id=2427'
            ),
            'limitTimes'=>8
        ),
        '3151'=>array(
            'info'=>array(
                'title'=>'拿走购物卡，天猫超时搬回家',
                'bannerUrl'=>'/img/game/3151.jpg',
                'actUrl'=>'/g?id=3151'
            ),
            'limitTimes'=>8
        ),
    );

    public function __construct() {
        $http = new Swoole\Http\Server("0.0.0.0", 11888);
        $http->set(
                array(
                    'worker_num' => 2,
                    'daemonize' => FALSE,
                    'max_request' => 1000000,
                    'dispatch_mode' => 2,
                    'task_worker_num' => 1,
                    'debug_mode'=> 1,
                    'limitTimes'=>6,
                    'limitType'=>1,
                    'backlog' => 1024,
                    'redis_config'=>array(
                        'host'=>'192.168.1.199',
                        'port'=>24000,
                    )

                )
        );
        $http->on('request', array($this, 'onRequest'));
        $http->on("task", array($this, "onTask"));
        $http->on("finish", array($this, "onFinish"));
        $this->http = $http;
        $http->start();

    }

    public function returnCall($response,$data=array(),$code= '0000000',$desc='成功',$status =true)
    {
        $json = '';
        if($status){
            $json = json_encode(
                array ('code' => $code,
                    'desc' => $desc,
                    'success' => true,
                    'data'=>$data));
        }
        $response->status(200);
        $response->write($json);
        $response->end();
        return TRUE;
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
        if (isset($request->post)) {
            HttpServer::$post = $request->post;
        } else {
            HttpServer::$post = [];
        }
        //解决chrome自动访问favicon
        if (HttpServer::$server['request_uri'] == "/favicon.ico") {
            $response->status(200);
            $response->end();
            return TRUE;
        }

        echo HttpServer::$server['request_uri']."\n";
        /**
         * 接口数据调用
         * */
        if(strpos(HttpServer::$server['request_uri'],'/activity/')!==false)
        {
            switch (HttpServer::$server['request_uri']){
                case '/activity/getSkinConfig':
                case '/activity/getReturnPage':
                case '/activity/doJoin':
                case '/activity/getRecommend':
                case '/activity/result':
                case '/activity/getBuoy':
                case '/activity/ajaxOptions':
                    $id = isset(HttpServer::$post['id'])?intval(HttpServer::$post['id']):'';
                    if(!$id) $id= isset(HttpServer::$get['id'])?intval(HttpServer::$get['id']):'';
                    $random = isset(HttpServer::$post['random'])?intval(HttpServer::$post['random']):'';
                    $file = "data/{$id}.php";
                    break;
                case '/activity/getPrizeDetail':
                    $file = "data/options.php";
                    break;
                default:
                    break;
            }
            if(isset($file))
            {
                $code = '0000000';
                $Tdata = array();
                if(isset($id) && isset($random) && $id && $random)
                {
                    $Tdata = array(
                        'id'=> $id,
                        'random'=>$random,
                    );
                }
                $key = explode('/',HttpServer::$server['request_uri'])[2];

                if(!file_exists($file)){
                    $this->returnCall($response,array(),$code,'失败');
                    return TRUE;
                }

                require_once $file;

                if($key=='getSkinConfig' && $Tdata)
                {
                    if(!$Tdata){
                        $this->returnCall($response,array(),$code,'失败');
                        return TRUE;
                    }
                    $Tdata['action'] = 'getIdClick';
                    $click_count = $this->http->taskwait(serialize($Tdata));
                    $isNew = false;
                    if( $this->muber[$id]['limitTimes']<=$click_count)
                    {
                        $isNew = true;
                    }
                    if(!isset($return[$key])){
                        $this->returnCall($response,array(),$code,'失败');
                        return TRUE;
                    }
                    $data = array('skinConfig'=>$return[$key],'isNew'=>$isNew);

                /**
                 *  游戏ID页奖品列表
                 * */
                }else if($key=='ajaxOptions' ) {
                    if(!$Tdata){
                        $this->returnCall($response,array(),$code,'失败');
                        return TRUE;
                    }
                    //获取点击次数
                    $Tdata['action'] = 'getIdClick';
                    $click_count = $this->http->taskwait(serialize($Tdata));
                    //剩余点击数
                    $surplusClick = $this->muber[$id]['limitTimes']-$click_count;
                    if($surplusClick<=0){
                        $surplusClick=0;
                        //抽奖为零时往redis压入游戏id值
                        $Tdata['action'] = 'setRandomOverList';
                        $this->http->task(serialize($Tdata));
                    }
                    $return[$key]['limitTimes'] = $surplusClick;
                    $data = $return[$key];

                    }elseif($key=='doJoin'){

                    if(!$Tdata) {
                        $this->returnCall($response,array(),$code,'失败');
                        return TRUE;
                    }
                    $Tdata['action'] = 'getIdClick';
                    $click_count = $this->http->taskwait(serialize($Tdata));
                    $surplusClick = $this->muber[$id]['limitTimes']-$click_count;
                    if($surplusClick>0){
                        $return[$key]['limitTimes'] = $surplusClick;
                    }else{
                        $return[$key]['limitTimes'] = 0;
                        $code = "0000000";
                    }
                    $data = $return[$key];

                /**
                 * 奖品详情
                 * */
                } else if($key=='getPrizeDetail'){
                    $optionId = isset(HttpServer::$post['optionId'])?intval(HttpServer::$post['optionId']):0;
                    if(!isset($options[$optionId])){
                        $this->returnCall($response,array(),$code,'失败');
                        return TRUE;
                    }
                    $data = $options[$optionId];

                /**
                 * 抽奖次数完
                 * return 其它活动链接
                 * */
                }else if($key=='getRecommend'){
                    if(!isset($return[$key])) {
                        $this->returnCall($response,array(),$code,'失败');
                        return TRUE;
                    }
                    $data = $return[$key];
                    $Tdata['action'] = 'getRandomOverList';
                    $type  = $this->http->taskwait(serialize($Tdata));
                    /**
                     * 随机抽取２个未抽奖活动id
                     * */
                    $result = array_diff(array_keys($this->muber),$type);
                    if(!$result){
                        $result = array_rand($this->muber,2);
                    }
                    if(count($result)!=2){
                        $result[] = array_rand($this->muber,1);
                    }
                    $re = array_rand($result,2);
                    $data['block1'] = $this->muber[$result[$re[0]]]['info'];
                    $data['block2'] = $this->muber[$result[$re[1]]]['info'];
                    $data['block3'] = array (
                        'title' => NULL,
                        'bannerUrl' => NULL,
                        'actUrl' => '',
                    );
                }else if($key=='result') {

                    $file1 = "data/activity.php";
                    require_once $file1;
                    if (!isset($return[$key])) {
                        $this->returnCall($response, array(), $code, '失败');
                        return TRUE;
                    }

                    /**
                    *   随机抽取中奖数据
                    *   如果为转盘抽奖数据获取奖品为$detailss的数据
                    **/
                    if($id==2421){
                        $orderId = array_rand($detailss, 1);
                        $list = $detailss;
                    }else{
                        $orderId = array_rand($details, 1);
                        $list = $details;
                    }
                    $file = APP_PATH . "/public/result/{$orderId}/index.php";
                    $re = $this->getUrl($return[$key],$list[$orderId]);
                    if(file_exists($file)){
                        $re['lottery']['iosDownloadUrl'] = "/public/result/{$orderId}";
                        $re['lottery']['androidDownloadUrl'] = "/public/result/{$orderId}";
                    }
                    if(isset($re['lottery']['st_info_dpm_title_click'])){
                        $info = array(
                            'st_info_dpm_title_click',
                            'st_info_dpm_exposure',
                            'st_info_dpm_btn_close',
                            'st_info_dpm_img_click',
                            'st_info_dpm_btn_get',
                        );
                        foreach ($info as $k=>$v){
                            $re['lottery'][$v]['orderId'] = 'taw-'.$orderId;
                            $re['lottery'][$v]= json_encode($re['lottery'][$v]);
                        }
                    }
                    $data = $re;
                }else{
                    if(!isset($return[$key])) {
                        $this->returnCall($response,array(),$code,'失败');
                        return TRUE;
                    }
                    $data = $return[$key];
                }
                $this->returnCall($response,$data,$code);
                return TRUE;
            }
        }

        /**
         *奖品跳转页面
         * */
        if(strpos(HttpServer::$server['request_uri'],'/public/result/')!==false)
        {
            $arra = explode('/',HttpServer::$server['request_uri']);
            $orderId = isset($arra['3'])?intval($arra['3']):'';
            ob_start();
            $file = APP_PATH . "/public/result/{$orderId}/index.php";
            if(!file_exists($file)){
                $this->returnCall($response,'','','',false);
                return TRUE;
            }
            require_once $file;
            $ads_html = ob_get_contents();
            ob_end_clean();
            $response->status(200);
            $response->write($ads_html);
            $response->end();
            return TRUE;
        }

        /**
         *奖品列表详情
         * */
        if(HttpServer::$server['request_uri']=='/activity/getRecord'){
            $orderId = isset(HttpServer::$get['orderId'])?intval(HttpServer::$get['orderId']):'';
            $file = "data/activity.php";
            require_once $file;
            $data = array();
            if(isset($details[$orderId]))
            {
                $data = $details[$orderId];
            }
            $file = APP_PATH . "/public/result/{$orderId}/index.php";
            if(file_exists($file)){
                $data['iosDownloadUrl'] = "/public/result/{$orderId}";
                $data['androidDownloadUrl'] = "/public/result/{$orderId}";
            }
            $this->returnCall($response,$data);
            return TRUE;
        }

        /**
         * 奖品详情
         * */
        if(HttpServer::$server['request_uri']=='/activity/indexRecord'){
            ob_start();
            require_once APP_PATH . "/public/activity/indexRecord.php";
            $ads_html = ob_get_contents();
            ob_end_clean();
            $response->status(200);
            $response->write($ads_html);
            $response->end();
            return TRUE;
        }

        /**
         * 点击统计
         * */
        if(HttpServer::$server['request_uri']=='/clickCount'){
            $random = isset(HttpServer::$post['random'])?intval(HttpServer::$post['random']):'';
            $id = isset(HttpServer::$post['id'])?intval(HttpServer::$post['id']):'';
            $position = isset(HttpServer::$post['position'])?intval(HttpServer::$post['position']):'';
            $order_id = isset(HttpServer::$post['order_id'])?HttpServer::$post['order_id']:'';
            $Tdata = [];
            if($random){
                $Tdata['random'] = $random;
            }
            if($id){
                $Tdata['id'] = $id;
            }
            if($position){
                $Tdata['position'] = $position;
            }
            if($order_id){
                $Tdata['order_id'] = $order_id;
            }
            $this->http->task(serialize($Tdata));
            return true;
        }

        /**
         * 　奖品列表分页
         * */
        if(HttpServer::$server['request_uri']=='/activity/getRecordList'){
            $currentPage = isset(HttpServer::$get['currentPage'])?intval(HttpServer::$get['currentPage']):1;
            if($currentPage>2) $currentPage = 1;
            $file = "data/activity.php";
            require_once $file;
            $start = 0;
            $end = 50;
            if($currentPage==2){
                $start = 50;
                $end = 86;
            }
            $data = [];
            foreach ($activity as  $key=>$value)
            {
                if($key>=$start && $end>$key){
                    $data[]=$value;
                }
            }
            $this->returnCall($response, array('list'=>$data, 'curentPage'=>$currentPage, 'max'=>30, 'offset'=>0, 'pageSize'=>30, 'total'=>null, 'totalCount'=>34, 'totalPage'=>2));
            return TRUE;
        }

        /**
         * 数据统计
         * */
        if(HttpServer::$server['request_uri']=='/getClickAll'){
            $Tdata['action'] ='getClickAll';
            $arr = $this->http->taskwait(serialize($Tdata));
            $this->returnCall($response, $arr);
            return TRUE;
        }

        /**
         * 无数据默认返回空
         * */
        if(HttpServer::$server['request_uri']=='/statistics/activityPagePerf'
            || HttpServer::$server['request_uri']=='/undefined'
            || HttpServer::$server['request_uri']=='/account/ajax.php'

        ){
            $this->returnCall($response,array());
            return TRUE;
        }


        $id = isset(HttpServer::$get['id'])?intval(HttpServer::$get['id']):'';
        ob_start();
        $file = APP_PATH . "/public/{$id}/index.php";
        if(!file_exists($file)){
            $this->returnCall($response,'','','',false);
            return TRUE;
        }
        require_once $file;
        $ads_html = ob_get_contents();
        ob_end_clean();
        $response->status(200);
        $response->write($ads_html);
        $response->end();
        return TRUE;
    }

    public function onTask(Swoole\Server $serv, $taskId, $fromId, $taskData) {

        $dateTime = date("Y-m-d");
        static $redis = null;
        $redisConfig = $serv->setting['redis_config'];

        if ($redis == null) {
            $redis = new \Redis();
            $redis->pconnect($redisConfig['host'],$redisConfig['port']);
            if (!$redis) {
                $redis = null;
                $serv->finish("ER: Init Redis Fail.");
                return;
            }
        }
        $Tdata = unserialize($taskData);

        /**
         * 数据统计
         * */
        if(isset($Tdata['action']) && $Tdata['action']=='getClickAll')
        {
            //不要打乱顺序
            $type = array(
                1=>'gameClick',
                2=>'gameEndUpperClick',
                3=>'gameEndLowerClick',
                4=>'gameTopRightClick',
                5=>'gamePrizeClick',
                6=>'gamePrizeDetailsClick',
                8=>'gameCloseClick',
                10=>'gameDetailsClick',
            );
            //前台显示对应字段
            $gameId = array(
                'a'=>'2244',
                'b'=>'2324',
                'c'=>'2390',
                'd'=>'2419',
                'e'=>'2421',
                'f'=>'2426',
                'g'=>'2427',
                'h'=>'3151');

            //需初始化，不然会累加
            $this->total = null;
            $this->total = array(
                'gameClick'=>array('name'=>'游戏总抽奖'),
                'gameDataClick'=>array('name'=>'游戏ID每个用户抽奖'),
                'date'=>array('name'=>'时间'),
                'gamePersonalClick'=>array('name'=>'个人点击次数'),
                'gameTopRightClick'=>array('name'=>'游戏页面右上角'),
                'gameEndUpperClick'=>array('name'=>'抽奖结束点击上面广告链接'),
                'gameEndLowerClick'=>array('name'=>'抽奖结束点击下面广告链接'),
                'gamePrizeClick'=>array('name'=>'游戏页面下面的奖品列表点击'),
                'gameCloseClick'=>array('name'=>'抽完奖后关闭'),
                'gamePrizeDetailsClick'=>array('name'=>'奖品列表详情点击'),
                'gameDetailsClick'=>array('name'=>'详情点击领取'),
                'gameUnknownClick'=>array('name'=>'不详点击'),
            );

            $pattern = '*-*-*_*';
            $it = NULL;
            // 每次遍历50条，注意是遍历50条，遍历出来的50条key还要去匹配你的模式，所以并不等于就能够取出50条key
            $count = 50;
            $list = [];
            do
            {
                $keysArr = $redis->scan($it, $pattern, $count);

                if ($keysArr)
                {
                    foreach ($keysArr as $key)
                    {
                        $list[] = $key;
                    }
                }

            } while ($it > 0);
            //每次调用 Scan会自动改变 $it 值，当$it = 0时 这次遍历结束 退出循环

            $file = APP_PATH . "/data/activity.php";
            require_once $file;
            $details = isset($details)?$details:'';
            //点击数统计
            if($list){
                foreach ($list as $item) {
                    $val = explode('_',$item);
                    $id = $val[1];
                    switch (count($val)){
                        // 2017-08-21_2244_5 key为3个_合并
                        case 3:
                            $option = $val[2];
                            //游戏ID个人抽奖次数
                            $muber = $redis->get($item);
                            $filed = 'gameDataClick';
                            if(isset($details[$id])){
                                if(!isset($this->total[$id])){
                                    $this->total[$id] = array('name'=>$id);
                                }
                                $filed = $id;
                            }
                            if($option==6){
                                $filed = 'gamePrizeDetailsClick';
                            }
                            $this->getData($filed,$muber,$id,$option);
                            //统计天数
                            if(in_array($id,$gameId)){
                                $date = $val[0];
                                $muber = $redis->get($item);
                                if(!isset($this->total['date'])){
                                    $this->total['date'] = array('name'=>'date');
                                }
                                $this->getData('date',$muber,$date,$id);
                            }
                            break;
                        // 2017-08-27_2244_94726053631_1 为4个_合并
                        case 4:
                            $option = $val[3];
                            $filed = 'gameUnknownClick';
                            if($option<10 && is_numeric($option))
                            {
                                //每个游戏个人抽奖统计
                                if($option==1){
                                    $user = $val[2];
                                    $muber = $redis->get($item);
                                    $this->getData('gamePersonalClick',$muber,$user,$id);
                                }
                                 $muber = $redis->get($item);
                                $this->getData($type[$option],$muber,$id,$option);
                            }else{
                                if(isset($this->total[$filed])){
                                    $this->total[$filed]++;
                                }else{
                                    $this->total[$filed] = 0;
                                }
                            }
                            break;
                        //2017-08-22_id_random_order_option
                        case 5:
                            $option = $val[4];
                            $filed = $val[3];
                            $muber = $redis->get($item);
                            if(!isset($this->total[$filed])){
                                $this->total[$filed] = array('name'=>$filed);
                            }

                            $this->getData($filed,$muber,$filed,$option);
                            break;
                        default :
                            $filed = 'gameUnknownClick';
                            if(isset($this->total[$filed])){
                                $this->total[$filed]++;
                            }else{
                                $this->total[$filed] = 0;
                            }
                            break;
                    }
                }
            }
            $data = [];
            $key =0;
            foreach ($this->total as $k=>$value){
                $data[$key]['name'] = isset($value['name'])?$value['name']:'不详点击';
                if($data[$key]['name']=='奖品列表详情点击'
                || $data[$key]['name']=='不详点击'
                || $data[$key]['name']=='详情点击领取'
                || is_numeric($data[$key]['name'])
                ){
                    if(isset($details[$data[$key]['name']])){
                        $option = $data[$key]['name'];
                        //option  1(立即领取) 2(马上使用)  10(详情页的马上使用)
                        foreach($value[$option] as $k=>$v){
                            switch($k){
                                case 1:
                                    $words = '-立即领取-1';
                                    break;
                                case 7:
                                    $words = '-马上使用-7';
                                    break;
                                case 10:
                                    $words = '-详情页的马上使用-10';
                                    break;
                                default:
                                    $words = '-未知动作-0';
                                    break;
                            }
                            $data[$key]['name'] = $details[$option]['title'].$words;
                            $data[$key]['o'] = isset($value[$option][$k])?$value[$option][$k]:0;
                            $key++;
                        }
                    }else{
                        $muber = 0;
                        if(is_array($value)){
                            foreach ($value as $k=>$v){
                                if(is_array($v)){
                                    foreach ($v as $item){
                                        $muber = $muber+$item;
                                    }
                                }
                            }
                        }
                        $data[$key]['o'] = $muber;
                    }
                }else{
                    /**
                     * 每天抽奖次数
                     * */
                    if($k=='date'){
                        $date = [];
                        foreach ($value as $t =>$item) {
                            if(is_array($item)){
                                $date[] =$t;
                            }
                        }
                        foreach ($date as $t =>$item) {
                            $data[$key]['name'] = $item ;
                            foreach ($gameId as $f =>$l) {
                                $data[$key][$f] = $this->getDate($value,$l,$item);
                            }
                            $key++;
                        }
                    }else{
                        if($k=='gamePersonalClick'){
                            //用户游戏点击平均值
                            $number = [];
                            $userList = [];
                            foreach ($value as $t =>$item) {
                                if(is_array($item)){
                                    $userList[] =$t;
                                }
                            }
                            //平均值计算
                            $data[$key]['name'] = '用户游戏点击平均值(总点击数/总用户数)' ;
                            foreach ($value as $t =>$item) {
                                if(is_array($item)){
                                    foreach ($item as $l=>$i) {
                                        if(isset($number[$l]['userNumber'])){
                                            $number[$l]['userNumber']++;
                                        }else{
                                            $number[$l]['userNumber']=1;
                                        }
                                        if(isset($number[$l]['number'])){
                                            $number[$l]['number']=$i+$number[$l]['number'];
                                        }else{
                                            $number[$l]['number']=$i;
                                        }
                                    }
                                }
                            }
                            foreach ($gameId as $t =>$item) {
                                $data[$key][$t] = $this->getAverage($number,$item);
                            }
                            $key++;
                        }else{
                            foreach ($gameId as $t =>$item) {
                                $data[$key][$t] = $this->getTotal($value,$item);
                            }
                        }
                    }

                }
                $key++;
            }
            unset($this->total);
            return $data;
        }

        /**
         * 获取游戏ID已抽奖次数
         * return int
         * */
        if(isset($Tdata['action']) && $Tdata['action']=='getIdClick')
        {
            $key = implode("_",array(
                $dateTime,$Tdata['id'],$Tdata['random']
            ));
            $click_count =$redis->get($key);
            if(!$click_count)
            {
                $click_count = 0;
            }
            return $click_count;
        }
        /**
         * 获取已抽完的游戏ID
         * return array()
         * */
        if(isset($Tdata['action']) && $Tdata['action']=='getRandomOverList')
        {
            $key = implode("_",array(
                $dateTime,$Tdata['random'],'over_list'
            ));
            $number =$redis->SMEMBERS($key);
            return $number;
        }
        /**
         * 压入已抽完的游戏ID
         * return null
         * */
        if(isset($Tdata['action']) && $Tdata['action']=='setRandomOverList')
        {
            $key = implode("_",array(
                $dateTime,$Tdata['random'],'over_list'
            ));
            $redis->SADD($key,$Tdata['id']);
            return '';
        }

        $key_arr = array($dateTime);
        if(isset($Tdata['id']))
        {
            $key_arr[] = $Tdata['id'];
        }

        if(isset($Tdata['random']))
        {
            $key_arr[] = $Tdata['random'];
        }

        if(isset($Tdata['order_id']))
        {
            $key_arr[] = $Tdata['order_id'];
        }
        //点击统计
        if(isset($Tdata['position']))
        {
            if($Tdata['position']==1 && !isset($Tdata['order_id'])){
                $redis->INCR(implode("_",$key_arr));
            }
            $key_arr[] = $Tdata['position'];
        }
        $redis->INCR(implode("_",$key_arr));
        return "";
    }
    //数据保存
    public function getData($file,$muber,$id,$option)
    {
        if(isset($this->total[$file][$id][$option])){
            $this->total[$file][$id][$option] =$muber+$this->total[$file][$id][$option];
        }else{
            $this->total[$file][$id][$option] =$muber;
        }
    }
    //数据获取
    public function getTotal($array,$data)
    {
        $muber = 0;
        if(isset($array[$data])){
            foreach ($array[$data] as $item) {
                $muber = $muber+$item;
            }
        }
        return $muber;
    }
    //数据获取
    public function getDate($array,$data,$date)
    {
        $muber = 0;
        if(isset($array[$date][$data])){
            $muber = $array[$date][$data];
        }
        return $muber;
    }

    //平均值
    public function getAverage($data,$gameId){
        $average = 0;
        if(isset($data[$gameId])){
            $average = round($data[$gameId]['number']/$data[$gameId]['userNumber'],2)."({$data[$gameId]['number']}/{$data[$gameId]['userNumber']})";
        }
        return $average;
    }


    /**
     * url替换
     * */
    public function getUrl($re = [],$data = [])
    {
        $re['orderId'] = $data['orderId'];
        $re['lottery']['iosDownloadUrl'] = $data['iosDownloadUrl'];
        $re['lottery']['androidDownloadUrl'] = $data['androidDownloadUrl'];
        $re['lottery']['imgurl'] = $data['thumbnailPng'];
        $re['lottery']['title'] = $data['title'];
        return $re;
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



