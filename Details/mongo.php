<?php
/**
 * mongo操作注意项
 *
 *
 * 聚合时候注意一下几点
 * 一、$sort排序时候排序尽量int类型。大多类型会循环多次而导致拖延查询时长
 * 二、分页时候注意skip和limit字段的顺序位置
 * 三、字段特殊时请给特殊字段添加指定编码
 *
 * 'domain' => isset($v['_id']['domain']) ? utf8_encode($v['_id']['domain']) : '', 给指定字段添加utf-8编码
 *
 *
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
/**
 *
 * mongo 批量添加方法事例
 *
 *
 * $this->_mongo->$db->$tables->batchInsert($insert_data);
 *
 *
 *
 * */
function demo2()
{

}

/**
 *   重启mongo
 *  Mongodb解决不能连接到服务器的错误
 * 先看服务启动没有，如果没有启动服务先启动服务，如果服务已经启动了，
 *那有可能是上次不正常关闭mongo,导致存放数据的文件被占用了，被锁住了。
 *只需将D:\software\mongodb-2.4.5\data中的mongod.lock文件删除掉。
 *重新启动服务即可。
 *
 * 1.删除data目录中的.lock文件
 *2.mongod --repair
 *3.启动mongod就可以了
 *  /data/mongodb/bin/mongod --dbpath=/data/mongodb/data --logpath=/data/mongodb/log/mongodb.log --fork
 * */

function demo3(){

}



