<?php

//==============================================================================
//                          公共方法
//                      代码规范：以fn开头
//==============================================================================

/**
 * 获取远程内容（接口数据获取）
 * @param $url
 * @param array $keysArr
 * @param string $mothod
 * @param bolen $is_header
 * @param int $flag
 * @return mixed
 */
function fn_get_contents($url, $keysArr = array(), $mothod = 'get', $is_header = 1, $flag = 0)
{
    $ch = curl_init();
    if (!$flag) {
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
    }

    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    if (strtolower($mothod) == 'post') {
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $keysArr);
    } else {
        if (count($keysArr)) {
            $url = $url . "?" . http_build_query($keysArr);
        }
    }
    curl_setopt($ch, CURLOPT_URL, $url);

    if ($is_header) {
        $_time = time();
        $headers['ktime'] = $_time;
        $headers['kmd5'] = md5($_time . fn_get_interface_key());
        foreach ($headers as $n => $v) {
            $headerArr[] = md5($n) . ':' . $v;
        }
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headerArr);
    }

    $ret = curl_exec($ch);
    curl_close($ch);
    return $ret;
}

/*
 * 获限interface接口，加密key
 * @author :Sgenmi
 * @date : 2014-07-13
 *
 */

function fn_get_interface_key()
{
    $interface_key = "#&0%o#d8$*s&5u^@*^s456";
    $_config = Yaf_Application::app()->getConfig();
    if (isset($_config->keys->interface_key)) {
        $interface_key = $_config->keys->interface_key;
    }
    return $interface_key;
}

/*
 * 获限interface接口，加密key
 * @author :Sgenmi
 * @date : 2014-07-13
 *
 */

function fn_get_invite_user_key()
{
    $invite_user_key = "#&0%o#d8$*s&5u^@*^s456";
    $_config = Yaf_Application::app()->getConfig();
    if (isset($_config->keys->invite_user)) {
        $invite_user_key = $_config->keys->invite_user;
    }
    return $invite_user_key;
}

/**
 * 获取POST或GET提交的值
 * @param $name
 * @param string $default
 * @return string
 */
function fn_get_val($name, $default = '')
{
    if (isset($_POST[$name])) {
        return $_POST[$name];
    }
    if (isset($_GET[$name])) {
        return $_GET[$name];
    }
    return $default;
}

/**
 * JS跳转
 * @param string $msg
 * @param string $url
 */
function fn_js_redirect($msg = '', $url = '')
{
    header('Content-Type:text/html;charset=utf-8');

    $js = '<script type="text/javascript">';

    if (!empty($msg)) {
        $js .= "alert('$msg');";
    }

    if (!empty($url)) {
        $js .= "window.location = '$url';";
    }

    echo $js . '</script>';
}

/**
 * Ajax 返回JSON
 * @param  integer $return 0：失败， 1：成功
 * @param  string $message 提示信息
 * @param  array $data 返回的数据
 * @return JSON
 * */
function fn_ajax_return($return = 0, $message = null, $data = null)
{
    $r_data['ret'] = $return;
    if ($message) {
        $r_data['msg'] = $message;
    }
    if ($data) {
        $r_data['data'] = $data;
    }

    exit(json_encode($r_data, JSON_UNESCAPED_UNICODE));
}

//获取IP

function fn_get_ip()
{
    if (getenv("HTTP_CLIENT_IP")) {
        $ip = getenv("HTTP_CLIENT_IP");
    } else if (getenv("HTTP_X_FORWARDED_FOR")) {
        $ip = getenv("HTTP_X_FORWARDED_FOR");
    } else if (getenv("REMOTE_ADDR")) {
        $ip = getenv("REMOTE_ADDR");
    } else {
        $ip = "Unknow";
    }

    return $ip;
}

/**
 * 验证码 字符类型
 * getCode(4,60,20);
 * @param type $num
 * @param type $w
 * @param type $h
 */
function fn_get_code()
{
    $str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    $text = "";
    $num = array();
    for ($i = 0; $i < 4; $i++) {
        $num[$i] = rand(0, 25);
        $text .= $str[$num[$i]];
    }

    $_SESSION['verify_code'] = strtolower($text);

    $im_x = 160;
    $im_y = 40;
    $im = imagecreatetruecolor($im_x, $im_y);
    $text_c = ImageColorAllocate($im, mt_rand(0, 100), mt_rand(0, 100), mt_rand(0, 100));
    $tmpC0 = mt_rand(100, 255);
    $tmpC1 = mt_rand(100, 255);
    $tmpC2 = mt_rand(100, 255);
    $buttum_c = ImageColorAllocate($im, $tmpC0, $tmpC1, $tmpC2);
    imagefill($im, 16, 13, $buttum_c);

    $font = realpath(BASE_PATH . '/public/t1.ttf');

    for ($i = 0; $i < strlen($text); $i++) {
        $tmp = substr($text, $i, 1);
        $array = array(-1, 1);
        $p = array_rand($array);
        $an = $array[$p] * mt_rand(1, 10); //角度
        $size = 28;
        imagettftext($im, $size, $an, 15 + $i * $size, 35, $text_c, $font, $tmp);
    }

    $distortion_im = imagecreatetruecolor($im_x, $im_y);
    imagefill($distortion_im, 16, 13, $buttum_c);
    for ($i = 0; $i < $im_x; $i++) {
        for ($j = 0; $j < $im_y; $j++) {
            $rgb = imagecolorat($im, $i, $j);
            if ((int)($i + 20 + sin($j / $im_y * 2 * M_PI) * 10) <= imagesx($distortion_im) && (int)($i + 20 + sin($j / $im_y * 2 * M_PI) * 10) >= 0) {
                imagesetpixel($distortion_im, (int)($i + 10 + sin($j / $im_y * 2 * M_PI - M_PI * 0.1) * 4), $j, $rgb);
            }
        }
    }
    //加入干扰象素;
    $count = 160; //干扰像素的数量
    for ($i = 0; $i < $count; $i++) {
        $randcolor = ImageColorallocate($distortion_im, mt_rand(0, 255), mt_rand(0, 255), mt_rand(0, 255));
        imagesetpixel($distortion_im, mt_rand() % $im_x, mt_rand() % $im_y, $randcolor);
    }

    $rand = mt_rand(5, 30);
    $rand1 = mt_rand(15, 25);
    $rand2 = mt_rand(5, 10);
    for ($yy = $rand; $yy <= +$rand + 2; $yy++) {
        for ($px = -80; $px <= 80; $px = $px + 0.1) {
            $x = $px / $rand1;
            if ($x != 0) {
                $y = sin($x);
            }
            $py = $y * $rand2;

            imagesetpixel($distortion_im, $px + 80, $py + $yy, $text_c);
        }
    }

    //设置文件头;
    Header("Content-type: image/JPEG");

    //以PNG格式将图像输出到浏览器或文件;
    ImagePNG($distortion_im);

    //销毁一图像,释放与image关联的内存;
    ImageDestroy($distortion_im);
    ImageDestroy($im);
}

/**
 * 快速打印数据结果
 */
function d($r)
{
    echo '<pre>';
    print_r($r);
    echo "</pre>";
}

//记日志

function fn_Log($word = '', $path = "/", $file_name = 'log.txt', $show_time = 1)
{
    $_time = "";
    $file_path = LOG_PATH . $path;
    if (!is_dir($file_path)) {
        fn_mkdir($file_path);
    }
    $file = rtrim($file_path, "/") . "/" . $file_name;

    if ($show_time) {
        $_time = "执行日期：" . strftime("%Y%m%d%H%M%S", time()) . "\n";
    }
    $fp = fopen($file, "a+");
    flock($fp, LOCK_EX);
    fwrite($fp, $_time . $word . "\n");
    flock($fp, LOCK_UN);
    fclose($fp);
}

function fn_mkdir($file_path)
{

    $_f = "/";
    if (!$file_path) {
        return;
    }
    $file_path = array_filter(explode("/", $file_path));
    foreach ($file_path as $v) {
        if (!$v) {
            continue;
        }
        $_f .= $v . "/";
        if (!is_dir($_f)) {
            mkdir($_f, 0777);
        }
    }
}

/**
 * 是否是测试环境
 */
function fn_IsTest()
{
    $conf = Yaf_Application::app()->getConfig();
    if (isset($conf->application->debug) && $conf->application->debug == 1) {
        return true;
    }
    return false;
}

/**
 * 获取开始和结束日期，并验证日期合法性
 * @param $bstr , $estr。值例如：+5 hours，next Monday，+1 week 3 days 7 hours 5 seconds，灵活定义起止时间
 * @return array(bdate => $intval_1, edate => $intval_2)，验证传入数据非法，则起始日期默认返回昨天
 * @author lizhe
 */
function fn_get_date($bstr = '-1 day', $estr = '-1 day')
{
    $bdate = 0; //beginDate
    $edate = 0; //endDate
    if (isset($_REQUEST['beginDate']) && isset($_REQUEST['endDate']) && $_REQUEST['beginDate'] && $_REQUEST['endDate'] && strtotime($_REQUEST['beginDate']) && strtotime($_REQUEST['endDate'])) {
        $bdate = intval(strtotime($_REQUEST['beginDate'] . ' 00:00:00'));
        $edate = intval(strtotime($_REQUEST['endDate'] . ' 23:59:59'));
    }
    if ($bdate == 0 || $edate == 0) {
        $bdate = strtotime(date('Y-m-d 00:00:00', strtotime($bstr)));
        $edate = strtotime(date('Y-m-d 23:59:59', strtotime($estr)));
    }
    return array('bdate' => $bdate, 'edate' => $edate);
}

/**
 * 实在不想在页面重复用date写Y-m-d格式了
 * @author lizhe
 */
function fn_ymd($intval)
{
    if (!$intval) {
        return '无';
    }
    return date('Y-m-d', $intval);
}

function fn_ymdhis($intval)
{
    if (!$intval) {
        return '无';
    }
    return date('Y-m-d H:i:s', $intval);
}

/*
 * author :Sgenmi
 * module :模块
 * controller:控制器
 * action:动作
 */

function fn_check_auth($module = null, $controller = null, $action = null)
{
    $ret = false;

    if (!$module || !$controller || !$action) {
        return $ret;
    }
    $auth = Yaf_Session::getInstance()->get('USER_AUTH');
    $module = strtolower($module);
    $controller = strtolower($controller);
    $action = strtolower($action);

    if ($auth && isset($auth[$module]) && isset($auth[$module][$controller]) && isset($auth[$module][$controller][$action])) {
        $ret = true;
    }
    return $ret;
}


/**
 * 从数组中取得需要的字段
 * @return array
 * @author lizhe
 */
function fn_get_array_by_field($array, $field)
{
    if (!is_array($array) || count($array) <= 0 || !$field) {
        return false;
    }
    $new_arr = array();
    foreach ($array as $value) {
        $new_arr[] = $value[$field];
    }
    return $new_arr;
}


/**
 * 把图片上传到图片服务器
 * @param $picPath 本地上图图片的路径(要实际路径)
 * @param $isdel 是否删除本地图片　默认为ture
 * @param sp 特殊的保护目录编号。具体值待定
 * @param $nodeal 不处理图片直接上传
 * @return  返回图片服务器上的图片路径。支持多种图片尺寸。具体看例子
 *  eg: 1.http://image.juhuisuan.com/2014/08/20/2014082011143426078.jpg
 *      2.http://image.juhuisuan.com/2014/08/20/2014082011143426078.jpg.300x250.jpg
 *      3.http://image.juhuisuan.com/2014/08/20/2014082011143426078.jpg.300x200.jpg
 */
function fn_upload_image($picPath, $isdel = true, $sp = null)
{
    if (!file_exists($picPath)) {
        return "";
    }

    $url = "http://imgsrc.juhuisuan.com/upimg.php";
    $v = array(
        'pic' => '@' . $picPath,
    );

    if (isset($sp)) {
        $v['sp'] = $sp;
    }

    $ret = json_decode(fn_get_contents($url, $v, 'post'), true);

    if ($ret['ret'] == 0) {
        if ($isdel) {
            unlink($picPath);
        }
        return "http://img1.juhuisuan.com" . $ret['data'];
    }
    return "";
}

function fn_get_pic($pic)
{
    if (empty($pic)) {
        return $pic;
    }
    return 'http://img1.juhuisuan.com' . str_ireplace(array('http://img1.juhuisuan.com', '//'), '', $pic);
}


/**
 * 上传图片
 * @return [type] [description]
 */
function fn_upload_img($name, $options = array(), $doUpload = true, $saveImg = 'http://img.9xu.com/')
{
    $img_url = 'http://img.pv25.com/upload';
    $result = $name;
    if ($doUpload) {
        $fileDriver = new FileUpload($name);
        $result = $fileDriver->run();
        return json_encode(array('ret' => 1, "msg" => $result, ""));
    }
    $file_name = realPath(BASE_PATH . '/public' . $result);

    //如果为swf文件 更改后缀名
    $fileExt = fn_get_fileExt($file_name);
    if ($fileExt && $fileExt == 'swf') {
        $options['ext'] = $fileExt;
    }
    if ($fileExt && $fileExt == 'gif') {
        $options['ext'] = $fileExt;
    }
    //读取文件内容
    if (file_exists($file_name)) {
        $content = file_get_contents($file_name);
        //删除文件
        @unlink($file_name);
        //参数构建
        $ext_name = isset($options['ext']) ? $options['ext'] : 'jpg';
        $post_options = array('content' => $content, 'ext' => $ext_name);
        if ($options) {
            if (isset($options['type']) && $options['type'] == "1") {
                $post_options['type'] = "1";
                $post_options['height'] = isset($options['height']) ? intval($options['height']) : 300;
                $post_options['width'] = isset($options['width']) ? intval($options['width']) : 300;
            }
            if (isset($options['type']) && $options['type'] == "2") {
                $post_options['type'] = "2";
                $post_options['height'] = isset($options['height']) ? intval($options['height']) : 300;
                $post_options['width'] = isset($options['width']) ? intval($options['width']) : 300;
                $post_options['p1'] = isset($options['p1']) ? intval($options['p1']) : 0;
                $post_options['p2'] = isset($options['p2']) ? intval($options['p2']) : 0;
                $post_options['p3'] = isset($options['p3']) ? intval($options['p3']) : 300;
                $post_options['p4'] = isset($options['p4']) ? intval($options['p4']) : 300;
            }
        }

        $server_result = fn_get_contents($img_url, $post_options, 'post', 1);

        return json_encode(array('ret' => 1, "msg" => "上传成功", 'data' => $saveImg . trim($server_result)));

        /* if ($server_result[1] == "200") {
          return json_encode(array('ret' => 1, "msg" => "上传成功", 'data' => 'http://img.pv25.com/' . trim($server_result[0])));
          } else {
          return json_encode(array('ret' => 0, "msg" => "上传到图片服务器失败"));
          } */
    } else {
        return json_encode(array('ret' => 0, "msg" => "文件不存在", ""));
    }
}

/**
 * 获取文件后缀
 */
function fn_get_fileExt($fileName)
{
    return substr(strrchr($fileName, '.'), 1);
}

/**
 * var_dump格式化输出
 */
function vd($d)
{
    echo '<pre>';
    var_dump($d);
    echo '</pre>';
}

function fn_shieldUserInfo($fields, &$info)
{
    $session = new Component_Session;
    if ($session->get('GROUP_ID') == 8 || $session->get('GROUP_ID') == 9) {
        foreach ($fields as $v) {
            $info[$v] = '-';
        }
    }
}

/**
 * ajax前台返回
 * @param intval $statusCode 必选。状态码(ok = 200, error = 300, timeout = 301)，可以在BJUI.init时配置三个参数的默认值。
 * @param string $message 可选。信息内容。
 * @param string $tabid 可选。待刷新navtab id，多个id以英文逗号分隔开，当前的navtab id不需要填写，填写后可能会导致当前navtab重复刷新。
 * @param string $closeCurrent 可选。是否关闭当前窗口(navtab或dialog)。
 * @param string $dialogid 可选。待刷新dialog id，多个id以英文逗号分隔开，请不要填写当前的dialog id，要控制刷新当前dialog，请设置dialog中表单的reload参数。
 * @param string $divid 可选。待刷新div id，多个id以英文逗号分隔开，请不要填写当前的div id，要控制刷新当前div，请设置该div中表单的reload参数。
 * @param string $forward 可选。跳转到某个url。
 * @param string $forwardConfirm 可选。跳转url前的确认提示信息。
 */
function fn_json_return($statusCode = 300, $message = null, $tabid = '', $closeCurrent = false, $dialogid = '', $divid = '', $forward = '', $forwardConfirm = '')
{
    $return = array(
        'statusCode' => $statusCode,
        'message' => $message,
        'tabid' => $tabid,
        'closeCurrent' => $closeCurrent,
        'dialogid' => $dialogid,
        'divid' => $divid,
        'forward' => $forward,
        'forwardConfirm' => $forwardConfirm
    );
    exit(json_encode($return));
}

function get24Data()
{
    $model = new Model_ReportHours();
    $data = $model->get24HoursData();

    $r_data['ret'] = 1;
    $r_data['msg'] = 200;
    $r_data['data'] = $data;
    return $r_data;
}

function formatArray($array)
{
    sort($array);
    $tem = "";
    $temarray = array();
    $j = 0;
    for ($i = 0; $i < count($array); $i++) {
        if ($array[$i] != $tem) {
            $temarray[$j] = $array[$i];
            $j++;
        }
        $tem = $array[$i];
    }
    return $temarray;
}

/**
 * 获取配置文件
 */
function fn_getConfig()
{
    $_config = Yaf_Registry::get('config');
    if (!$_config) {
        $_config = Yaf_Application::app()->getConfig();
        Yaf_Registry::set('config', $_config);
    }
    return $_config;
}

function handleRequest($request, $key, $default = '')
{
    return isset($request[$key]) ? $request[$key] : $default;
}


/**
 * 多维数组排序
 * @param array $array 要排序的数组
 * @param string $key 排序依据字段
 * @param string $order 排序方式，0为降序，1为升序
 */
function array_sort(array $array, $key, $order = 1)
{
    $sort = [];
    //    在此处形成字段值与键名的对应关系
    if (!$array) return array();
    foreach ($array as $k => $v) {
        $sort[$v[$key]] = isset($sort[$v[$key]]) ? array_merge($sort[$v[$key]], [$k]) : [$k];
    }
    if ($order == 1 && ksort($sort)) {

    } elseif ($order == 0 && krsort($sort)) {

    } else {
        return false;
    }
    $rs = [];
    //    按照排好顺序的关系生成新的数组
    foreach ($sort as $value) {
        foreach ($value as $n) {
            $rs[] = $array[$n];
        }
    }
    unset($sort, $array);
    return $rs;
}

/**
 * @param array $arr
 * @param field $field
 * @return array
 * 数组建名kye调换
 * */
function fn_get_key_field($arr, $field)
{
    if (!$arr) return $arr;
    $list = [];
    foreach ($arr as $item) {
        $list[$item[$field]] = $item;
    }
    return $list;
}


//上传图片 --本地
function fn_upload_image_static()
{
    $f = new FileUpload("file");
    $url = $f->run();
    echo json_encode([
        "code" => 0,
        "msg" => "",
        "data" => [
            "src" => $url,
        ]
    ]);
}

//对数字加密
function fn_num_encode($num)
{
    $tnum = rand(10000000, 99999999);
    $num = strval($tnum . $num);
    for ($i = 0; $i < strlen($num); $i++) {
        $num[$i] = chr(ord($num[$i]) + ord('a') - ord('0'));
    }
    return base64_encode($num);

}

//对数字解密
function fn_num_decode($num)
{
    $num = base64_decode($num);
    for ($i = 0; $i < strlen($num); $i++) {
        $num[$i] = chr(ord($num[$i]) - ord('a') + ord('0'));
    }
    return substr($num, 8);

}

//获取投放地址
function fn_get_h5_url($user_id, $adw_id)
{
    $_config = Yaf_Application::app()->getConfig();
    $url = $_config['puturl'];
    return $url . "activity?appKey=" . fn_num_encode($user_id) . "&awid=" . $adw_id;
}