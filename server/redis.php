<?php
/**
 * User: lidc
 *redis 终端操作命令集
 *
 * http://redisdoc.com/  督查资料网
 *
 */

class redis {

    /**
     *安装
     * */
    public function ming (){
        /**
         * 解压reids 进去后make
         *然后  PREFIX=/usr/local/redis make install  cd src && make install
         *复制redis.conf到安装目录下
         * 启动redis服务  可带配置文件启动
         *
         * ./bin/redis-server
         *
         * 查看端口是否正常  ps aux | grep redis
         *
         *
         * 本地连接测试   ./bin/redis-cli
         *
         * 查看各类命令帮助  ./redis-benchmark -h
         *
         *./redis-benchmark -t set  -r 100000  -n 100000 -c 5 -p 8081  -h 192.168.1.129
         * 测试set   设置 -r 10 万随机 key 连续 SET  -n 10 万次  -c 同时请求个数(默认50) -p 端口号  -h IP地址
         *
         *
         * 进入redis 的操作界面 [root@localhost bin]# ./redis-cli -p 8081  -h 192.168.1.129
         *   -p 端口号   -h ip
         * 850+850+500+2100+1700
         *
         *
         *
         * 外部连接。。需要开启端口号和把redis配置文件里面的绑定IP  bind  127.0.0.1 注销掉方可访问
         *
         * */
    }
}