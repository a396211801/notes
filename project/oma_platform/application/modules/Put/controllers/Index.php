<?php

class Controller_Index extends Web
{
    public function init()
    {
        parent::init();
    }

    public function indexAction()
    {
        $tplpath = $this->_request->getQuery("id", "");
        $adwId = $this->_request->getQuery("awid", "");
        $thirdUrl = "";
        if ($tplpath == "") {
            $res = fn_get_contents("http://" . $_SERVER['HTTP_HOST'] . "/ts/api/v1/get_put_tpl", ['adwid' => $adwId]);
            $res = json_decode($res, true);
            if (isset($res['ret']) && $res['ret'] == 0) {
                $path = $res['data'];
                if (strpos($path, "http:") === 0) {
                    $thirdUrl = $path;
                } else {
                    $this->redirect("http://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'] . "&id=" . $path);
                    exit;
                }
            }
        }

        if ($thirdUrl != "") {
            $this->assign("url", $thirdUrl);
            $this->display("put/index.php");
        } else {
            $path = realpath(APP_PATH . "/../public/lpt");
            $this->setViewPath($path);
            $this->display($tplpath . "/index.html");
        }
        // $this->display("tpl/1/index.html");
        //  $this->redirect("/lpt/4000/index.php");
    }

    /**
     * 统计跳转，跳转到golang服务
     * 临时为了开发方便
     */
    public function statsAction()
    {
        $url = "http://192.168.1.199:18188" . str_replace("/ts", "", $_SERVER["REQUEST_URI"]);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_HEADER, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_AUTOREFERER, 1);
        curl_setopt($ch, CURLOPT_ENCODING, "");

        // var_dump($_SERVER);
        $headerlist = ['Expect:'];
        foreach ($_SERVER as $key => $value) {
            if (strpos($key, "HTTP_") === 0) {
                $key = str_replace("HTTP_", "", $key);
                $keys = explode("_", $key);
                foreach ($keys as &$v) {
                    $v = ucwords($v);
                }
                $headerlist[] = implode("_", $keys) . ":" . $value;
            }
        }
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headerlist);


        if ($_SERVER['REQUEST_METHOD'] == "POST") {
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $_POST);
        }
        if ($_COOKIE) {
            $tmp = [];
            foreach ($_COOKIE as $key => $value) {
                $tmp[] = $key . "=" . $value;
            }
            curl_setopt($ch, CURLOPT_COOKIE, implode(";", $tmp));
        }
        $output = curl_exec($ch);
        $status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);

        if ($status == '200' || $status == "301" || $status == "302") {
            list($header, $body) = explode("\r\n\r\n", $output, 2);
            $headerAry = [];
            $tmp = explode("\r\n", $header);
            foreach ($tmp as $value) {
                $index = strpos($value, ":");
                $k = substr($value, 0, $index);
                $v = substr($value, $index + 1);
                $headerAry[$k] = $v;
                header($value);
            }
            echo $body;
        } else {
            header("HTTP/1.1 404 Not Found");
            exit;
        }
    }


}