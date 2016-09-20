<?php
/**
 * User: ldc
 *
 * 安装lnmp环境
 * 首先确认liunx操作的基础组件是否齐全
 *
 *删除指定服务实例（只针对 yum安装的服务）
 *
 *yum remove mysql mysql-servaer
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
 * ----------------------------------git安装-------------------------
 *
 *先查看是否有安装git     git -- version
 *
 */

class deome{

    /**
     * 编辑器安装
     * */
    public function dowPHPstrom()
    {
       /**
        *
        *  说明：由于很多系统不支持使用OpenJDK，因此在ubuntu下会需要安装OracleJDK。而Oracle JDK的安装貌似没有提供apt方式，因此安装OracleJDK的方式相对麻烦一些，我经常安装，为了方便别人同时方便自己查看，把它记下来。

       第一步：区分32位还是64位操作系统
       先确定你的ubuntu linux是32位还是64位的，方法很多，这里介绍一种即可。
       $uname -a

       第二步：卸载OpenJDK
       先执行如下命令看是否安装了OpenJDK，如果已经安装，会显示java的信息。
       $java -version
        *
        * 卸载OPENJDK 输入如下命令rpm -e --nodeps  上一步复制的jdk文件名
        *或者
        *yum -y remove java 上一步复制的jdk文件名
        *
        *下载地址
        * wget --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie;" http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jdk-8u77-linux-x64.tar.gz
        *
        *
        * 解压jdk

        tar -xzvf jdk-8u77-linux-x64.tar.gz
        *
        *
        * 移动jdk到/usr/local，建立软连接

           mv jdk1.8.0_77/ /usr/local
           ln -s /usr/local/jdk1.8.0_77/ /usr/local/jdk

           编辑/etc/profile

           vim /etc/profile

           加入jdk的配置

           JAVA_HOME=/usr/local/jdk
           PATH=${PATH}:${JAVA_HOME}/bin
           export JAVA_HOME PATH

           source

           source /etc/profile

           查看是否安装jdk成功

           java -version
        *
        *
        * java version "1.8.0_77"
           Java(TM) SE Runtime Environment (build 1.8.0_77-b03)
           Java HotSpot(TM) 64-Bit Server VM (build 25.77-b03, mixed mode)

        *
        * */
    }

    /**
     * 防火墙设置
     * */
    public function  firewall()
    {
        /**
         *Linux下查看、关闭及开启防火墙命令   include  /usr/local/nginx/conf/vhost/vhost.conf;
        1)永久性生效，重启后不会复原                   /usr/local/nginx/conf/vhost/vhost.conf
        开启： chkconfig iptables on 关闭： chkconfig iptables off
        2)即时生效，重启后复原
        开启： service iptables start 关闭： service iptables stop
        需要说明的是对于Linux下的其它服务都可以用以上命令执行开启和关闭操作。
        在开启了防火墙时，做如下设置，开启相关端口， 修改/etc/sysconfig/iptables 文件，添加以下内容：
        -A RH-Firewall-1-INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT
        -A RH-Firewall-1-INPUT -m state --state NEW -m tcp -p tcp --dport 22 -j ACCEPT
        3)查看防火墙状态
        chkconfig iptables --list
         * */
    }


}