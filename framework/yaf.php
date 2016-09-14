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
 *
 *
 * centOS7 liunx 下安装yaf
 *Yaf 安装
 *
 *下载: wget http://pecl.php.net/get/yaf-2.2.9.tgz 注意PHP版本跟yaf版本有兼容性
 *
 *确定系统已经安装了gcc、gcc-c++、make、automake、autoconf等依赖库
 *
 *sudo apt-get install gcc gcc-c++ make automake autoconf
 *
 *步骤
 *
 *1.去Pecl下载 Yaf的发布包 [2.2.9],并且解压,并进去 yaf-2.2.9 源码目录
 *
 *tar -zxvf yaf-2.1.18.tgz
 *cd yaf-2.1.18
 *wget http://pecl.php.net/get/yaf-2.2.9.tgz && tar zxvf yaf-2.2.9.tgz && cd yaf-2.2.9
 *
 *2.接着依次执行:
 *
 *usr/local/php/bin/phpize  && ./configure --with-php-config=/usr/local/php/bin/php-config && make && make install
 *
 *3.执行完你看到了这么一句,说明你第一步Yaf编译部分是ok了.
 *
 *Installing shared extensions: /usr/local/php/lib/php/extensions/no-debug-non-zts-20121212/
 *
 *4.查看确认编译后的文件

 *ll  /usr/local/php/lib/php/extensions/no-debug-non-zts-20121212/
 *yaf.so //可以看到 yaf.so php扩展也已经帮我们编译好了
 *
 *5.配置 php.ini
 *
 *vi /usr/local/php/etc/php.ini
 *
 *[yaf]
 *yaf.environ = product
 *yaf.library = NULL
 *yaf.cache_config = 0
 *yaf.name_suffix = 1
 *yaf.name_separator = ""
 *yaf.forward_limit = 5
 *yaf.use_namespace = 0
 *yaf.use_spl_autoload = 0
 *extension=yaf.so //关键步骤:载入yaf.so ,上面也可忽略
 *
 *6.重启PHP
 *
 *etc/init.d/php-fpm restart
 *
 *7.查看phpinfo()
 *
 *
 *
 *
 *
 *
 *
 *
 *
 */