<?php
/**windows下安装yaf
 * yaf 框架需求配置说明 官网下载 https://pecl.php.net/
 *
 * 相对应的扩展 -相对应版本
 * redis-	2.2.7
 * memecache  -3.0.8
 * MongoDB-1.4.5
 * yaf-2.2.9
 * php-5.4n
 * nginx -1.6.2
 *
 *
 * 添加配置  -- 在PHP.ini添加
 * extension=php_yaf.dll
 * extension=php_redis.dll
 * extension=php_memcache.dll
 * extension=php_mongo.dll
 *
 * 在php安装目录里的ext里面放入下载后的配置.dll文件
 *
 */