<?php

/**
 * Description of MobBaidu
 *
 * @author Sgenmi
 * @date 2017-8-23
 * @Email 150560159@qq.com
 */
class MobBaidu {

    private $secret_key = "hello_channel";
    public $api = "http://api.data.baidu.com/channel/api/checkimei";
    private $channel_name = "qiguan001";

    public function __construct() {
        
    }

    public function sendApi($imeis) {
        
        $imeis_arr = explode(",", $imeis);
        $mdImeis_arr=[];
        foreach ($imeis_arr as $v  ){
            $kindex = md5($v);
            $mdImeis_arr[$kindex] = $v;
        }
        $imeis = array_keys($mdImeis_arr);
        $postData = array(
            'imeis' => implode(",", $imeis),
            'channel_name' => $this->channel_name,
            'request_time' => time(),
            'is_six_day_okey' => 0
        );
        $postData['sign'] = $this->genHttpSign($postData);
        $retJson = curl_send($this->api, $postData, 'post');
        
        if (!$retJson || !($retArr = json_decode($retJson, TRUE)) || $retArr['errno'] != 0) {
            return FALSE;
        }
        
        $ret_arr = [];
        foreach ( $retArr['data'] as $v ){
            if(isset($mdImeis_arr[$v])){
                $ret_arr[] = $mdImeis_arr[$v];
            }
        }
        
        return  $ret_arr;
    }

    /**
     * 生成http sign
     * @param array $params 待签名的数据  eg {"a":1,"b":2}
     * @param string $secret_key  密钥 : hello_channel
     * @return string
     */
    function genHttpSign($params) {
        $str = '';
        ksort($params);   //对object 按照键值排序,小的键值排前面,如{"b":2,"a":3} 排序后为{"a":3,"b":2}
        //将object 转换为字符串 如上则为a=3b=2
        foreach ($params as $k => $v) {
            $str .= sprintf("%s=%s", $k, $v);
        }
        $str .= $this->secret_key;
        return md5($str);
    }

}
