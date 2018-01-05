<?php

//require_once BASE . '/lib/React/Promise/functions_include.php';

/**
 * Description of ElasticSearch
 *
 * @author Sgenmi
 * @date 2017-9-7
 * @Email 150560159@qq.com
 */
class ElasticSearch {

    static $Client=null;




    public static function getClient() {
        
        if(self::$Client!=NULL){
            return self::$Client ;
        }
        $hosts = \HttpServer::$config['elasticSearch'];
        $config=[];
        foreach ( $hosts as $v ){
            $hosts = explode(":", $v);
            $config[]=[
                'host'=>$hosts[0],
                'port'=>$hosts[1]
            ];
        }
        
        $client = new \Elastica\Client(['servers'=>$config]);
        $client->hasConnection();
        

        self::$Client = $client;
        
        return $client;
        
    }

}
