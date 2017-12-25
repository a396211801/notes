<?php
/**
 * Created by IntelliJ IDEA.
 * User: lidc
 * Date: 17-6-13
 * Time: 下午2:13
 */

class abc {


    /**
     * nginx安装网址
     * */
    public function service()
    {
        /**
         * http://openresty.org/cn/installation.html
         *
         *  -s reload
         *
         * sudo /data/soft/ngx_openresty/nginx/sbin/nginx
         * sudo service php5-fpm start
         *
         * 先安装zsh
         * 再安装nginx  如果其中报ssl版本不和。可以找到对应版本对应ssl地址即可　(不是对应系统的ssl版本，下载对应ssl版本解压。configure　指定ssl解压文件地址即可)
         * ssl官网下载即可 https://www.openssl.org/   (一般通用对应1.0.1u版本)
         * 然后安装php5-fpm 即可。
         *
         *
         * */
    }

    /**
     * php安装
     * */
    public function php()
    {
        /**
         * 官网直接安装...安装是取消默认安装apache 不然无法运行(不知道怎么取消默认)
         *
         * ubuntu16.04默认是php 7，要装php 5.x要添加第三方源：
         * sudo apt-add-repository ppa:ondrej/php
         * 或者
         * LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
         *然后就是正常的update之后安装php5.6了
         *
         * //卸载所有
         * sudo apt-get --purge remove php7.0* (以上安装php这个方法太low)
         *
         * 安装 apt-get install php-fpm　  apt-get install php-del  默认都是7(如果要５版本在php后加上5)　其它模块一样
         *
         *
         * */
    }

    /**
     * mysql 安装
     * */
    public function mysql()
    {
        /**
         *http://www.cnblogs.com/znan/p/5842125.html
         * http://blog.csdn.net/ann_rps/article/details/52043923
         *
         * 在配置文件修改mysql.conf 的ip地址为0.0.0.0
         *
         * mysql -u root -p
         * mysql>use mysql;
         * mysql>update user set host =’%'where user =’root’;
         * mysql>flush privileges;
         *
         * 然后重启
         *
         * */
    }

    /**
     *  安装扩展可直接　　apt-get install php-redis
     * */


    /**********************************************************************************|*/
    /**
     * memache 服务与扩展安装
     * http://www.cnblogs.com/hejun695/p/5369610.html
     *
     * linux上安装memcached不算太困难。唯一让本人感到困难的是 php7的memcache扩展安装。真的蛋疼！

    先说安装服务端 memcached

    1. 首先安装Libevent事件触发管理器。

    wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
    tar vxf libevent-2.0.21-stable.tar.gz
    cd libevent-2.0.21-stable
    ./configure -prefix=/usr/local/libevent    # ./configure
    make && make install
    2. 编译安装memcached

    wget http://memcached.org/latest
    cp latest memcached.tar.gz
    tar -zxvf memcached.tar.gz
    cd memcached
    ./configure -with-libevent=/usr/local/libevent   # ./configure
    make && make install
    3. 启动memcached

    /usr/local/memcached/bin/memcached -d -m 128 -l 127.0.0.1 -p 11211 -u root   # (128为内存, 11211为端口,root为用户组)
    4. 开机/重启后生效，编辑 /etc/rc.d/rc.local 文件，添加以下内容。

    /usr/local/memcached/bin/memcached -d -m 128 -l 127.0.0.1 -p 11211 -u root
    5. 查看是否启动成功

    ps aux|grep memcached
    如图则成功



    -----------------------------------------------------------------------分割线-----------------------------------------------------------------------------------

    下面则是php的扩展memcache安装了。

    用之前的php版本安装是没有问题，但是用了php7安装 http://pecl.php.net/package/memcache 下的任一款memcache都会报错

    穷尽一切办法之后发现了 Github的pecl-memcache分支版本

    本地下载，https://github.com/websupport-sk/pecl-memcache/archive/php7.zip



        1. rz命令 上传至linux虚拟机上。

        unzip pecl-memcache-php7.zip
        cd pecl-memcache-php7
        /usr/local/php/bin/phpize
        ./configure --with-php-config=/usr/local/php/bin/php-config
        make && make install
        2. 修改php.ini 加载Memcache组件

        [memcache]
        extension_dir = "/usr/local/php70/lib/php/extensions/no-debug-non-zts-20151012/"
        extension = "memcache.so"
        注！！！一定要确认有效的 php.ini的位置

        查找php.ini位置的方法

        1.写一个测试文件，内容<?php phpinfo(); ?>，在第七八行左右，有“Loaded Configuration File”就标明了php.ini的位置。
        2.没指定php.ini或者找不到php.ini(none)，php会按照默认配置运行的。
        3. 重启 php-fpm
     *
     *
     * */




    /**
     * php端口监听问题
     *php-fpm.conf 里面有端口配置，默认走unix，要改成9000端口的形式
     *
     * 因为nginx配置的php是监听9000端口的  两边要一致才行
     *
     * ;listen = /run/php/php7.0-fpm.sock
     * listen = 127.0.0.1:9000
     *
     * */

    /**
     * 其它扩展或其它产品
     * */
    public function library()
    {
        /**
         * LDAP 扩展 sudo apt-get install php5-ldap 执行即可
         * */

        /**
         * Zsh是一个Linux用户很少使用的shell，这是由于大多数Linux产品安装，以及默认使用bash
         *shell。几乎每一款Linux产品都包含有zsh，通常可以用apt-get、urpmi或yum等包管理器进行安装。
         *  http://ohmyz.sh/
         * sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
         *
         * */

        /**
         * 添加快捷方式
         * cd /usr/share/applications
         *
         *
         * [Desktop Entry]
         * Name=每天来一发
         * Comment=idea
         * Exec=/data/soft/idea-IU-163.12024.16/bin/idea.sh
         * Icon=/data/soft/idea-IU-163.12024.16/bin/idea.png
         * Terminal=false
         * Type=Application
         * Categories=Application;
         *
         * */
    }


    /**
     * mongodb安装服务
     * http://www.runoob.com/mongodb/mongodb-linux-install.html
     *
     * 官网下载地址  https://www.mongodb.com/download-center#community
     *
     * mongodb  php扩展
     *
     * git 地址 https://github.com/mongodb/mongo-php-driver
     *
     *
     * tar zxvf mongodb-mongodb-php-driver-<commit_id>.tar.gz
     * cd mongodb-mongodb-php-driver-<commit_id>
     *  /usr/local/php/bin/phpize
     * ./configure --with-php-config=/usr/local/php/bin/php-config
     * sudo make install
     *
     *
     *
     * 错误提示
     *
     * root@iZrj9fc6cg6lbfhbffdipcZ:/data/soft/mongo-php-driver# phpize
        Configuring for:
        PHP Api Version:         20151012
        Zend Module Api No:      20151012
        Zend Extension Api No:   320151012
        /usr/bin/m4:config.m4:364: cannot open `src/libmongoc/build/autotools/m4/ax_prototype.m4': No such file or directory
        /usr/bin/m4:config.m4:365: cannot open `src/libmongoc/build/autotools/CheckCompiler.m4': No such file or directory
        /usr/bin/m4:config.m4:366: cannot open `src/libmongoc/build/autotools/WeakSymbols.m4': No such file or directory
        /usr/bin/m4:config.m4:367: cannot open `src/libmongoc/build/autotools/m4/ax_pthread.m4': No such file or directory
        /usr/bin/m4:config.m4:399: cannot open `src/libbson/build/autotools/CheckAtomics.m4': No such file or directory
        /usr/bin/m4:config.m4:400: cannot open `src/libbson/build/autotools/FindDependencies.m4': No such file or directory
        /usr/bin/m4:config.m4:401: cannot open `src/libbson/build/autotools/m4/ac_compile_check_sizeof.m4': No such file or directory
        /usr/bin/m4:config.m4:402: cannot open `src/libbson/build/autotools/m4/ac_create_stdint_h.m4': No such file or directory
        /usr/bin/m4:config.m4:444: cannot open `src/libmongoc/build/autotools/Versions.m4': No such file or directory
        /usr/bin/m4:config.m4:458: cannot open `src/libbson/build/autotools/Versions.m4': No such file or directory
        autom4te: /usr/bin/m4 failed with exit status: 1

     *
     *
     * 解决问题使用如下：
     * [root@www mongo-php-driver]# git submodule update --init
     *
     *
     * */



    /**
     * 任务计划执行
     * */
    public function taskImplement()
    {
        /**
         * linux下一般都自带这个系统功能
         * crontab -e
         * http://www.cnblogs.com/intval/p/5763929.html
         * */
    }

    /**
     *
     * unzip -O GBK crm.zip
     * ./configure --with-php-config=/usr/bin/php-config
     *
     * add    /etc/php5/fpm/php.ini  *.so
     * */


}


