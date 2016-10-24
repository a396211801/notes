<?php
/**
 * User: lidc
 *
 */

class sphinx {

    /**
     * win sphinx安装
     * 官方下载地址 :http://sphinxsearch.com/downloads/release/
     * */
    function anzhuang ()
    {
        /**
         *
         * ERROR: index 'test1': sql_query_pre[0]: Unknown character set: 'UTF' (DSN=mysql:
        //root:***@localhost:3306/test).
         *
         * 字段  sql_query_pre   = SET NAMES UTF-8  把'-'去掉
         *
         *
         * 建立索引：indexer -c  sphinx.conf  (加--all,建立所有索引，也可以指定索引 indexer mysql)

        报错：FATAL: failed to open @CONFDIR@/data/test1.spl: No such file or directory, will not index. Try --rotate option.

        (不存在 pid文件，或者是不存在sph文件）

        解决方法：

        1)把sphinx.conf文件中的所有@CONFDIR@替换成data文件夹所在的绝对路径
         *
         * */
    }

}