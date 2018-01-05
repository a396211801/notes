<?php
/**
 * Created by IntelliJ IDEA.
 * User: zb
 * Date: 17-8-30
 * Time: 下午3:01
 */

class MobIMEI
{
    private $secretId = "3ac1e4877f9e01c5b2c7305629c027d3";
    private $secretkey = "8fe5c1b31b9f26a7f9432cf81982beb1";

    function loadimei($req)
    {
        list($hash, $tm, $rand) = $this->getSignHash("/ad/loadimei");
        $url = "https://cip.dianping.com/ad/loadimei";
        $uparam = [
            'secretId' => $this->secretId,
            'tm' => $tm,
            'rand' => $rand,
            'hashValue' => $hash,
            "offset" => isset($req->get['offset']) ? $req->get['offset'] : 0,
            "limit" => isset($req->get['limit']) ? $req->get['limit'] : 10000,

        ];
        $res = curl_send($url, $uparam);
        return $res;
    }

    function downimei($req)
    {
        list($hash, $tm, $rand) = $this->getSignHash("/ad/downimei");
        $url = "https://cip.dianping.com/ad/downimei";
        $uparam = [
            'secretId' => $this->secretId,
            'tm' => $tm,
            'rand' => $rand,
            'hashValue' => $hash,
        ];
        $res = curl_send($url, $uparam);
        return $res;
    }

    //获取签名hash
    //@return: [hash,tm,rand]
    private function getSignHash($action)
    {
        $tm = time();
        $rand = rand(10000, 99999);
        $str = sprintf("%s-%s-%d-%d", $action, $this->secretkey, $tm, $rand);
        return [md5($str), $tm, $rand];
    }

    private function error()
    {
        $error = [
            "1001" => "参数为空或者不合法",
            "1002" => "未注册的secretid",
            "1003" => "secretid被禁用",
            "1004" => "链接已失效，请确认超时时间",
            "1005" => "接口鉴权失败，请确认secretkey是否正确",
            "2001" => "系统异常，请稍后再试",
            "2002" => "未获取到数据或数据未准备好，请稍后再试"
        ];
        return $error;
    }
}
