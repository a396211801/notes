<?php

/**
 * 省份区域
 * User: zb
 * Date: 18-1-3
 * Time: 下午3:51
 */
class Model_Area extends Smodel
{
    protected $table = "area";

    /*
     * 获取所有省份-城市
     */
    public function GetProvinceCitys()
    {
        $list = $this->select("*", ['pcode' => ""]);
        foreach ($list as &$value) {
            $slist = $this->select("*", ["pcode" => $value['code']]);
            $value['children'] = $slist;
        }
        return $list;
    }

}