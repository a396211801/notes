<?php
/**
 * User: ldc
 *
 *删除指定服务实例（只针对 yum安装的服务）
 *
 *yum remove mysql mysql-servaer
 *
 *
 *
 *
 *
 *
 *
 *
 * -----------------Linux 启动、关闭、重启网络服务的两种方式 ---------------------
 *
 *一种是可以使用service脚本来调度,如:
    service  服务名  start
    service  服务名  stop
    service  服务名  restart
    一种是直接执行某个服务自己的管理脚本，以smb服务为例
    /etc/init.d/smb  start
    /etc/init.d/smb  stop
    /etc/init.d/smb  restart
 *include enable-php.conf;
 *include fastcgi.conf;
 * # fastcgi_param PATH_INFO
 * $fastcgi_script_name;
 * # Don't include this line.
 *
 * 修改更目录地址在ngonx的配置文件里面server{  ..... root "D:/www"  ......}修改 然后重启服务器
 *
 *
 * ------------------使用phpize编译扩展**.so文件步骤说明*-------------------------
 *
 * 介绍：linux系统中，php安装成功后，在bin目录下会生成一个名叫phpize的可执行脚本，这个脚本的用途是动态安装php扩展模块。
 *使用phpize脚本安装php扩展模块的好处：在安装php时没有安装的扩展，可以在以后随时安装上，且不需要重新安装PHP。
 *
 *安装步骤：
 *1、切换到扩展模块目录
 *在php源码包被解压后的目录中有个ext子目录，这里有近70多个主流的php扩展模块安装包。
 *如现在要安装memcache扩展，则切换到memcache目录：
 *cd /software/php-5.2.14/ext/memcache
 *
 *2、在memcache目录中执行phpize脚本
 *usr/local/php/bin/phpize
 *执行成功会返回几行数据：
 *Configuring for:
 *PHP Api Version: 20041225
 *Zend Module Api No: 20060613
 *Zend Extension Api No: 220060519
 *
 *3、开始编译(注意--with-php-config参数)
 *./configure --with-php-config=/usr/local/php/bin/php-config
 *
 *4、make
 *
 *5、make install
 *这时在
 *./usr/local/php/lib/php/extensions/no-debug-non-zts-20060613/
 *目录会生成memcache.so文件
 *
 *6、在php.ini中找到extension_dir字段，把值修改成：
 *./usr/local/php/lib/php/extensions/no-debug-non-zts-20060613/
 *
 *7、再在php.ini的Dynamic Extensions节位置下添加
 *extension = "memcache.so"
 *
 *8、重启 PHP 、NGINX 、APACHE，完成。
 *
 *
 *
 *
 *
 * ----------------------------------git安装-------------------------
 *
 *先查看是否有安装git     git -- version
 *
 *
 *
 *
 *
 *
 *
 *
 */