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

}