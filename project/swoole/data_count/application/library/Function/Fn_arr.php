<?php

/**
 * Ajax 返回JSON
 * @param  integer $return 1：失败， 0：成功
 * @param  string $message 提示信息
 * @param  array $data 返回的数据
 * @return JSON
 * */
function fn_ajax_return($return = 0, $message = NULL, $data = NULL, $extdata=[])
{
    if ($return === true) {
        $return = 0;
    }
    if ($return === false) {
        $return = 1;
    }
    $r_data['code'] = $return;
    if ($message) {
        $r_data['msg'] = $message;
    }
    if ($data) {
        $r_data['data'] = $data;
    }
    foreach ($extdata as $key =>$value) {
        $r_data[$key] = $value;
    }
    exit(json_encode($r_data, JSON_UNESCAPED_UNICODE));
}

//获取IP
function fn_getIP()
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
 * 从数组中取出想要的字段
 * @param  array $arr 原数组
 * @param  [array,string] $field 想要取出的字段
 * @param  string $index_key 新数组索引
 * @return array $ret
 * @author Sgenmi <15056059@qq.com>
 * */
function fn_arr_field($arr = array(), $field = NULL, $index_key = "")
{
    $ret = array();
    if (!$field || !is_array($arr) || !$arr) {
        return $arr;
    }
    if ($field == '*') {
        $field = array_keys(current($arr));
    }
    //字段是字段串
    if (is_string($field)) {
        //需要指定索引
        if ($index_key) {
            foreach ($arr as $v) {
                if (isset($v[$index_key])) {
                    $ret[$v[$index_key]] = isset($v[$field]) ? $v[$field] : "";
                }
            }
        } else {
            $ret = array_column($arr, $field);
        }
        return $ret;
    }
    foreach ($arr as $k => $v) {
        if (!$index_key || !isset($v[$index_key])) {
            $index_key = $k;
        }
        foreach ($field as $fv) {
            $ret[$v[$index_key]][$fv] = isset($v[$fv]) ? $v[$fv] : "";
        }
    }
    return $ret;
}

//

function fn_arr_key_arr($arr = array(), $key_arr = NULL)
{
    $ret = array();
    if (!$arr || !$key_arr) {
        return $ret;
    }
    if (!is_array($key_arr)) {
        $key_arr = explode(",", $key_arr);
    }
    foreach ($arr as $v) {
        foreach ($key_arr as $kv) {
            if (!isset($v[$kv])) {
                continue;
            }
            if (!isset($ret[$kv]) || !in_array($v[$kv], $ret[$kv])) {
                $ret[$kv][] = $v[$kv];
            }
        }
    }
    return $ret;
}

//上传图片

function fn_upload_img($file_name)
{
    $config = array(
        'maxSize' => '2048000', /* 上传大小限制，单位B */
        'allowFiles' => array(
            "0" => ".png",
            "1" => ".jpg",
            "2" => ".jpeg",
            "3" => ".gif",
        ),
        'pathFormat' => "/upload/image/{yyyy}/{mm}/{dd}{time}{rand:6}"
    );
    $file_obj = new Component\UploadFile($file_name, $config);
    return $file_obj->getFileInfo();
}

//生成1*1图片
function fn_drawOnePixelPng()
{
    header("Content-type: image/png");
    $im = @imagecreate(1, 1) or die("无法生成图片,有可能是GD扩展有问题");
    imagecolorallocate($im, 255, 255, 255);
    imagepng($im);
    imagedestroy($im);
}

//今天bbs分类新增贴子统计
function fn_todayBbsNew($type_id = 0, $num = 1)
{
    $new_list_count = "bbs|list|newlist";
    $get_cache_d = Core\Cache\File::get($new_list_count);

    if ($get_cache_d) {
        if (isset($get_cache_d[$type_id])) {
            $get_cache_d[$type_id] = $get_cache_d[$type_id] + $num;
        } else {
            $num = $num <= 0 ? 0 : $num;
            $get_cache_d[$type_id] = $num;
        }
    } else {
        $get_cache_d = array();
        $num = $num <= 0 ? 0 : $num;
        $get_cache_d[$type_id] = $num;
    }
    $ex_time = mktime(0, 0, 0, date("m"), date("d") + 1, date("Y")) - time();
    Core\Cache\File::set($new_list_count, $get_cache_d, $ex_time);
}

//获取允许访问的版块
function fn_getBbsAllowType()
{
    $allowType = \Yaf\Session:: getInstance()->get('USER_BBSTYPE');

    if ($allowType) {
        $allowType = unserialize($allowType);
    }
    return $allowType;
}

//判断是否是管理员
function fn_isAdmin()
{
    $ret = FALSE;
    $is_admin = \Yaf\Session:: getInstance()->get('USER_ADMIN');
    if ($is_admin) {
        $ret = TRUE;
    }
//    $ret = FALSE;
    return $ret;
}

//判断是否有权访问版块
function fn_isBbsOpen($type_id)
{
    $ret = FALSE;
    if (fn_isAdmin() || in_array($type_id, fn_getBbsAllowType())) {
        $ret = TRUE;
    }
//      $ret = FALSE;
    return $ret;
}
