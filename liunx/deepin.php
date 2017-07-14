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
         * sudo apt-get --purge remove php7.0*
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
         * */
    }


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
     *unzip -O GBK crm.zip
     * ./configure --with-php-config=/usr/bin/php-config
     *
     * add    /etc/php5/fpm/php.ini  *.so
     * */


}


