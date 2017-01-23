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
 *
 * 在Linux下编译PHP的Memcached扩展的时候遇到一些问题，在这里总结一下解决的过程。

        一开始尝试用PECL快速安装扩展，在编译的过程中提示需要libmemcached依赖库，
 *        于是用yum安装了libmemcached和libmemcached-devel，但是还是没安装成功，
 *      去PHP官网的Memcached扩展需求页看了一下，libmemcached依赖库的版本需要大于
 *      等于1.0.0，查了一下本机该库的版本得到如下提示：


        yum list installed |grep libmemcached
        libmemcached.i686                    0.31-1.1.el6              @base
        libmemcached-devel.i686              0.31-1.1.el6              @base
        libmemcached 版本是0.31-1.1，并且提示已经是最新了，并不太明白这一点。
 *      于是按照官网的提示在这里下载了最新的版本1.0.18并在本地安装编译，指定路径在/usr/local/libmemcached

        重新使用PECL安装并制定libmemcached路径后会出现如下提示：


        configure: error: no, sasl.h is not available. Run configure with --disable-memcached-sasl to disable this check
        于是我决定手动编译了，提示很简单，加上 --disable-memcached-sasl即可，接下来的过程都很顺利了。

        在PECL官网下载memcached扩展源码并解压进入生成目录
        执行命令/usr/local/php/bin/phpize生成编译文件，PHP 路径因安装路径而异
        执行命令./configure --with-php-config=/usr/local/php/bin/php-config
 *              --with-libmemcached-dir=/usr/local/libmemcached --disable-memcached-sasl
        执行命令make && make install 会在PHP扩展目录生成memcached.so
        在php.ini文件添加extension=memcached.so 即可
 *
 *
 *
 *
 *
 *
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
     * 单独安装教程
     * https://www.linuxzen.com/lnmphuan-jing-da-jian-wan-quan-shou-ce-si-lnmpda-jian-yuan-ma-an-zhuang.html
     * */

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


    /**
     * 扩展配置文件下载地址
     * */
    public function add(){
        /**
         *
        autoconf-2.68.tar.gz
        http://ftp.gnu.org/gnu/autoconf/

        eaccelerator-0.9.6.tar.bz2 (PHP扩展)
        http://bart.eaccelerator.net/source/

        freetype-2.2.1.tar.gz
        GD的字体库
        http://sourceforge.net/projects/freetype/files/

        gd-2.0.33.tar.gz
        GD图形库
        http://download.chinaunix.net/download.php?id=6665&ResourceID=3479

        ImageMagick (PHP扩展)


        http://www.imagemagick.org
        ftp://mirror.aarnet.edu.au/pub/imagemagick/
        ImageMagick是一套功能强大、稳定而且免费的工具集和开发包，可以用来读、写和处理超过89种基本格式的图片文件，包括流行的TIFF, JPEG, GIF, PNG, PDF以及PhotoCD等格式。


        imagick-2.2.2.tgz (PHP扩展)
        http://pecl.php.net/get/imagick-2.2.2.tgz

        jpegsrc.v6b.tar.gz
        http://down.51cto.com/data/118858

        libiconv-1.13.1.tar.gz (PHP支持库)
        http://ftp.gnu.org/gnu/libiconv/

        libmcrypt-2.5.8  (PHP支持库)
        http://sourceforge.net/projects/mcrypt/files/

        libpng-1.2.8.tar.gz
        http://sourceforge.net/projects/libpng/files/

        libxml2-2.7.8.tar.gz
        http://xmlsoft.org
        ftp://xmlsoft.org/libxml2/

        mhash 0.9.9.9  (PHP支持库)
        http://sourceforge.net/projects/mhash/files/mhash/0.9.9.9/

        mcrypt-2.6.8   (PHP支持库)
        http://sourceforge.net/projects/mcrypt/files/


        m4-1.4.16.tar.gz
        http://ftp.gnu.org/gnu/m4/
        GNU m4 是 GNU 版本的 m4 宏预处理机。 它被设计避免在传统m4s发现的许多极限： 极限喜欢最大线长、宏指令的最大宏指令的大小，数字等等。

        mcrypt-2.6.8.tar.gz
        http://sourceforge.net/projects/mcrypt/files/MCrypt/

        memcache-2.2.6.tgz (PHP扩展模块)
        http://pecl.php.net/package/memcache
        http://pecl.php.net/get/memcache-2.2.6.tgz
        http://pecl.php.net/package/memcached

        mhash-0.9.9.9.tar.gz
        http://sourceforge.net/projects/mhash/files/mhash/

        pcre-8.12.tar.gz  (nginx支持)
        http://www.pcre.org

        PDO_MYSQL-1.0.2.tgz (PHP扩展模块)
        http://pecl.php.net/package/PDO_MYSQL
        http://pecl.php.net/get/PDO_MYSQL-1.0.2.tgz

        xcache-1.3.2.tar.gz (PHP扩展模块)
        http://xcache.lighttpd.net/

        zlib-1.2.5.tar.gz
        http://php.net/zlib
        http://www.zlib.net/

        ZendOptimizer
        http://docs.linuxtone.org/soft/bsder/ZendOptimizer-3.3.0a-freebsd6.0-i386.tar.gz


        Linux下配置asp.net的安装包


        mono
        http://ftp.novell.com/pub/mono/sources/mono/

        xsp
        http://ftp.novell.com/pub/mono/sources/xsp/

        mod_mono
        http://ftp.novell.com/pub/mono/sources/mod_mono/

        jexus
        http://www.j66.net/
        http://linux.j66.net

        http://www.go-mono.com/mono-downloads/download.html

         * */
    }

}