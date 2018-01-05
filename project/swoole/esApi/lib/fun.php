<?php

//==============================================================================
//                          公共方法
//                      代码规范：以fn开头
//==============================================================================

//输出ES的DSL格式
function json($d) {
    $ret = [];
    if (!isset($d['query'])) {
        $ret['query'] = $d;
    } else {
        $ret = $d;
    }
    echo json_encode($ret, JSON_UNESCAPED_UNICODE), "\n";
}

//正式数据输出
function echo_json( $code = 0,$data = array()) {
    return json_encode(array('code' => $code, 'data' => $data));
}

/**
 * 从数组中取出想要的字段
 * @param  array $arr  原数组
 * @param  [array,string] $field 想要取出的字段
 * @param  string $index_key 新数组索引
 * @return array $ret
 * @author Sgenmi <15056059@qq.com>
 * */
function fn_arr_field($arr = array(), $field = NULL, $index_key = "") {
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




