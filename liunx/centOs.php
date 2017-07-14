<?php
/**
 * Created by IntelliJ IDEA.
 * User: lidc
 * Date: 17-7-6
 * Time: 上午9:19
 *
 * centos7  php7
 *
 */

class deome{


    /**
     * centos安装流程 nmp
     *
     * */
    public function centOs()
    {

        /**
         * http://openresty.org/cn/installation.html
         *
         * 安装完成启动之后访问是否成功　访问没有成功查看服务是否启动成功。。如果在线上访问没有成功则查看防火墙配置是否正确
         *
         * php安装
         * http://www.jianshu.com/p/246ffcd5e77d
         *
         * */
    }


    /**
     * php安装升级
     * http://blog.csdn.net/ysydao/article/details/51388397
     * */


    /**
     * 文件夹权限
     * 只读
     * 1、语法：chmod 755  文件夹  -R
     * 2、例子：chmod 755  /usr/tmp/20160808  -R
     * */


    /**
     * 安装memcached服务和扩展
     * http://www.cnblogs.com/hejun695/p/5369610.html
     *
     * */


    /**
     *
     * @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     * @    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
     * @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
     *
     * 从装系统后链接服务器需要　　ssh-keygen -R 服务器端的ip地址
     * */




    /**
     * centos防火墙设置
     * */
    public function firewall()
    {
        /**
         * http://linux.it.net.cn/CentOS/fast/2015/0110/11567.html
         *
         * 一、配置防火墙，开启80端口、3306端口
        CentOS 7.0默认使用的是firewall作为防火墙，这里改为iptables防火墙。
        1、关闭firewall：
        systemctl stop firewalld.service #停止firewall
        systemctl disable firewalld.service #禁止firewall开机启动


        2、安装iptables防火墙
        yum install iptables-services #安装
        vi /etc/sysconfig/iptables #编辑防火墙配置文件
        # Firewall configuration written by system-config-firewall
        # Manual customization of this file is not recommended.
         *filter
        :INPUT ACCEPT [0:0]
        :FORWARD ACCEPT [0:0]
        :OUTPUT ACCEPT [0:0]
        -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
        -A INPUT -p icmp -j ACCEPT
        -A INPUT -i lo -j ACCEPT
        -A INPUT -m state --state NEW -m tcp -p tcp --dport 22 -j ACCEPT
        -A INPUT -m state --state NEW -m tcp -p tcp --dport 80 -j ACCEPT
        -A INPUT -m state --state NEW -m tcp -p tcp --dport 3306 -j ACCEPT
        -A INPUT -j REJECT --reject-with icmp-host-prohibited
        -A FORWARD -j REJECT --reject-with icmp-host-prohibited
        COMMIT
        :wq! #保存退出
        systemctl restart iptables.service #最后重启防火墙使配置生效
        systemctl enable iptables.service #设置防火墙开机启动


        二、关闭SELINUX
        vi /etc/selinux/config
        #SELINUX=enforcing #注释掉
        #SELINUXTYPE=targeted #注释掉
        SELINUX=disabled #增加
        :wq! #保存退出
        setenforce 0 #使配置立即生效
         *
         * */
    }

}