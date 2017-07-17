<?php
/**
 * User: ldc
 *
 * 安装centOS7 步骤笔记
 *
 * 按照提示安装。。
 * 镜像文件必须跟安装时选择的版本对上。。不然安装好有部分功能不能使用。
 * 设置配置处界面需要选择(否则只有终端操作界面)
 * 网卡设置需要设置(否则会没有网卡启动)
 *
 *
 *
 *
 */
class deome{ //基础命令

    /**
     *   清屏命令
     *
     * clear只是在 shell 中翻一页,用命令 reset 可以清除屏幕上所有东西。
     * */

    /**
     * 端口号查看
     * */
    public function ntlp()
    {
        /**
         *netstat -ntlp   //查看当前所有tcp端口·
         *netstat -ntulp |grep 80   //查看所有80端口使用情况·
         *netstat -an | grep 3306   //查看所有3306端口使用情况·
         */
    }

    /**
     * 移动文件命令
     * */
    public function mv()
    {
        /**
         *
         * 格式：

            mv [选项(option)] 源文件或目录 目标文件或目录

            使用命令：

            mv  webdata  /bin/usr/

            可以延伸一下：

            mv    /usr/lib/*    /zone

            是将 /usr/lib/下所有的东西移到/zone/中。

            mv    /usr/lib/*.txt    /zone

            是将lib下以txt结尾的所有文件移到/zone中。 其他类型，以此类推。

            具体说明如下：

            作用

            mv命令来为文件或目录改名或将文件由一个目录移入另一个目录中。该命令等同于DOS系统下的ren和move命令的组合。它的使用权限是所有用户。
         *
         * */
    }

    /**
     * 重启服务
     * */
    public function service()
    {
        /**
         *
         ** -----------------Linux 启动、关闭、重启网络服务的两种方式 ---------------------
         *
         *一种是可以使用service脚本来调度,如:
        service  服务名  start
        service  服务名  stop
        service  服务名  restart
        一种是直接执行某个服务自己的管理脚本，以smb服务为例
        /etc/init.d/smb  start
        /etc/init.d/smb  stop
        /etc/init.d/smb  restart
         *
         *
         * 重启PHP
         * cd /etc/init.d/
         * service php-fpm restart
         *
         *查看PHP扩展可以用php -m
         *
         *
         * */
    }

    /**
     * 查看是否存在服务
     * */
    public function selectSVR()
    {
        /**
         * which nginx
         * */
    }

    /**
     * 查看文件信息
     * du *
     * */
    public function selectDirname(){
        /**
         * 查看文件和文件夹大小：
         * du –sh dirname
         *
         * 如果查看某个目录下所有文件及文件的大小：
         * du –sh *
         * 按照文件大小排序
         * du –sh * |sort –n
         *
         * */
    }


    /**
     * 查看关机时间  last |grep reboot
     *
     * last |grep shutdown last |grep reboot last
     *last |grep shutdown
     *last |grep reboot
     * last
     *
     * */

}