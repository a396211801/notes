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
         * 官网直接安装...安装是取消默认安装apache 不然无法运行
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


