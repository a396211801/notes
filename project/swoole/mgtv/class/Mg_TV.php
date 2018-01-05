<?php

class Mg_TV {

    private $request_bid=array();
    static $init=null;
    
    public function __construct() {
    }
    
    public static function init()
    {
        if(!self::$init)
        {
            self::$init= new Mg_TV();
        }
        return self::$init ;
    }

    public function bidAction($params) {
        
        $request_bid = array();
        
        if(isset($params['request_bid']) && ($bid = json_decode($params['request_bid'], TRUE)))
        {
            $request_bid = $this->request_bid =$bid ;
        }
        
        $request_bid = $this->request_bid = $this->get_request();
        
        if(!$request_bid){
            return array();
        }
        $Response = array(
            'version' => $request_bid['version'], //协议版本号
            'bid' => $request_bid['bid'], //PMP请求广告是携带的bid
            'err_code' => 200, //响应状态 200:OK, 204:no ad
            'ads' => array()
        );
        
        //如果request_type = 1，那么这是一个测试要求。DSP 需要反回正常的BidResponse，但是结果是不显示给用户，DSP不会收到一个响应
        //]如果request_type = 2，那么这个要求的目的是衡量网络延迟，即心跳测试。DSP需要返回一个空的BidResponse
        switch ($request_bid['request_type']) {
            case 0:
            case 1:
              
                $advert = $this->get_advert($request_bid);
                if(!$advert)
                {
                    $Response['err_code']=204;
                }  else {
                    $Response['ads'] = $advert;
                }
                break;
            case 2:
            default:
        }

        return $Response;

// $Response = array(
//            'version' => $request_bid['version'], //协议版本号
//            'bid' => $request_bid['bid'], //PMP请求广告是携带的bid
//            'err_code' => 200, //响应状态 200:OK, 204:no ad
//            'ads' => array(
//                array(
//                    'space_id' => 148001, //广告唯一id    广告位ID，广告位的唯一标识
//                    'price' => 1100, //千次展现金额，计划的最高竞标价格, 单位为分
//                    'ad_url' => 'http://dsp.kss.ksyun.com/dsp/20151225/1451038491021.mp4', //物料地址[图片,视频等url地址]
//                    'click_through_url' => 'http://www.clickurl.com', //广告的目标跳转地址 [点击url]
//                    'iurl' => array(
//                        array(
//                            'url' => 'http://www.showurl.com/jzh_show?c=%%SETTLE_PRICE%%', //展示成功回调url
//                            'event' => 0    //曝光监测事件上报时间点，0-开始, 1-四分之一, 2-二分之一, 3-四分之三, 4-结束。此事件主要针对视频类素材，非视频类素材event值填0
//                        )
//                    ),
//                    'curl' => array(
//                        'http://www.click_stc.com/jzh_click'    //点击监播地
//                    ),
//                    'adid' => '10851_1450337808192', //创意ID
//                    'title' => 'mg_test12', //创意标题
//                    'duration' => 15, //视频广告时长，单位为秒，非视频类素材填0
//                    'ctype' => 2, //素材类型 1-图片，2-mp4视频，3-flv视频
//                    'width' => 0, //创意宽度
//                    'height' => 0 //创意高度
//                )
//            )
//        );


    }
    
    
    public function get_c()
    {
        return Advert::$advert;
    }


    private function get_advert() {
        $ret = array();
        $weidth = $this->request_bid['imp'][0]['width'];
        $height = $this->request_bid['imp'][0]['height'];
        $size_key = $weidth . "*" . $height;
        $all_advert = Advert::get_ads($size_key);

        if (!$all_advert) {
            return $ret;
        }
         $redis = new Redis();
         $redis->connect(REDIS_HOST,REDIS_PORT, 10000);
//         
        $h = date("H");
        $_date = date("Y-m-d");
        $_time = mktime(0, 0, 0, date("m"), date("d"), date("Y"));
              
        
        foreach ($all_advert as $v) {
            //天时间段
            if ($v['startdate'] > $_time || ($v['enddate'] + 86400) < $_time) {
                continue;
            }
            //判断时间段
            if (!isset($v['put_time'][$h]) || !$v['put_time'][$h]) {
                continue;
            }
            //开启
            if ($v['check_status'] != 1) {
                continue;
            }
            //匹配类型
            if (!in_array($v['ctype'], $this->request_bid['imp'][0]['ctype'])) {
                continue;
            }
            //匹配播放时间
            if ( $v['duration'] > $this->request_bid['imp'][0]['playtime']) {
                continue;
            }
            //判断平台
            if (!in_array($this->request_bid['device']['type'], $v['platform'])) {
                continue;
            }
         
            if($v['max_pv']>0)
            {
                $pv_k = "pv_" . $_date. "_" . $v[ 'id' ] ;
                $_kv =$redis->get($pv_k);
                if( $_kv>$v['max_pv'] )
                {
                    continue;
                }
            }
            
            //代号
//                $code =  md5( microtime(TRUE).  mt_rand(100, 200));
            
            $adid = $v['id'] . '_' . $v['time'];
            $bidpv  = 'bidpv_'.$_date.'_'.$v['id'];
            $redis->incr($bidpv);
            
            $ret[] = array(
                'space_id' => $this->request_bid['imp'][0]['space_id'], //广告唯一id    广告位ID，广告位的唯一标识
                'price' => $v['min_cpm_price'], //千次展现金额，计划的最高竞标价格, 单位为分
                'ad_url' => $v['file_url'], //物料地址[图片,视频等url地址]
                'click_through_url' => $v['click_url'], //广告的目标跳转地址 [点击url]
                'iurl' => array(
                    array(
                        'url' => 'http://127.0.0.1:22222/wd_s?bid=' . $this->request_bid['bid'] . '&spaceid=' . $this->request_bid['imp'][0]['space_id'] . '&pid=' . $adid . '&c=%%SETTLE_PRICE%%', //展示成功回调url
                        'event' => 0    //曝光监测事件上报时间点，0-开始, 1-四分之一, 2-二分之一, 3-四分之三, 4-结束。此事件主要针对视频类素材，非视频类素材event值填0
                    )
                ),
                'curl' => array(
                    'http://127.0.0.1:22222/wo_c?bid=' . $this->request_bid['bid'] . '&spaceid=' . $this->request_bid['imp'][0]['space_id'] . '&pid=' . $adid    //点击监播地
                ),
                'adid' => $adid, //创意ID
                'title' => $v['title'], //创意标题
                'duration' => $v['duration'], //视频广告时长，单位为秒，非视频类素材填0
                'ctype' => $v['ctype'], //素材类型 1-图片，2-mp4视频，3-flv视频
                'width' => $weidth, //创意宽度
                'height' => $height //创意高度
            );
        }
//        $redis->close();
        return $ret;
    }

    public function get_request() {
        $request_json = '{"version": 3, "bid":"fa8a8a16d5cd46159765688d79337806", "request_type": 0, "imp": [{"space_id": "148001", "width": 400, "height": 300, "min_cpm_price": 10,"player_id": 4620, "location": 1,"ctype": [2],"playtime": 15, "order": 1 }],"device": {"idfa": "C8CAE811-4A1F-4901-BBF6-D3D4646A789E","openudid": "14779b66e5fa0e6e8561781e10e45cb8a5da773e","os": "ios 9.200000","brand": "apple","model": "iPad","sw": 768,"sh": 1024,"ip": "175.10.84.44","connectiontype": 0,"type": 33,"version": "4.2.4","screen_orientation": 2},"video": {"video_id": 1819244,"video_name": "天天向上20151023期：孙杨谈母亲动情落泪","collection_id": 18,"collection_name": "天天向上","item_ids": "20,22,15,21","item_names": "脱口秀,真人秀,搞笑,娱乐节目","area_id": 2015,"area_name": "内地","duration": 15,"type": 1}}';
        return json_decode($request_json, TRUE);
    }

}

//$a = new Mg_TV();
//
//$a->get_request();
