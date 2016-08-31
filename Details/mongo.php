<?php
/**
 * mongo操作注意项
 *
 *
 * 聚合时候注意一下几点
 * 一、$sort排序时候排序尽量int类型。大多类型会循环多次而导致拖延查询时长
 * 二、分页时候注意skip和limit字段的顺序位置
 * *******聚合案列
 *
 *$list = $this->_mongo->$db->$table->aggregate(
    array('$skip' => $skip),
    array('$limit' => $limit),
    array('$sort' => array('adw_id' => 1)), //adew_id不可为字符串类型
    array('$group' => array(
        '_id' => array(
            'ad_id' => '$ad_id',
            'adw_id' => '$adw_id',
            'string' => '$string',
            'date' => '$date',
            ),
        'count' => array('$sum' => 1),
        'pv' => array('$sum' => '$pv'),
        'click' => array('$sum' => '$click'),
        'money' => array('$sum' => '$money'),
        'fmoney' => array('$sum' => '$fmoney'),
        ),
     ));
 *
 *
 *
 */
function demo()
{

}

/**
 * mongoDB表设置注意事项
 * 数据存储事必须跟聚合时候的字段类型为一致，比如如何聚合时候需要某个字段的和。次字段必须为int类型或者浮动类型否者会聚合不出来数据
 *
 * */
function demo1()
{

}



