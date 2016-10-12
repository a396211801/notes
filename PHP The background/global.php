<?php
/**
 * User: lidc
 *全局变量类
 */

class global_variable {

    /**
     * 超全局变量
     * */
    public function chaoquanju()
    {
        /**
         * 获取当前页面精确的url地址
         *返回的是我们在URL里写的精确的地址，如果URL只写到”/”，就返回 “/”
         *
         *request_uri
         * $_SERVER['REQUEST_URI']
         *
         *
         * http://www.yoursite.com/example/ — – — /example/index.php
         * http://www.yoursite.com/example/index.php — – — /example/index.php
         * http://www.yoursite.com/example/index.php — – — /example/index.php
         * http://www.yoursite.com/example/index.php/dir/test — – — /example/index.php
         *
         * */

    }
}