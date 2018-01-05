<?php

/**
 * Description of Controller
 *
 * @author Sgenmi
 * @date 2017-9-7
 * @Email 150560159@qq.com
 */
class Controller {

    public function __call($name, $arguments) {
        return ['code' => 99999];
    }

    public function getLouPanPeoples($plotName, $rType = '新房') {
        //今天日期
        $today = date("Y-m-d");
        $louPanKey = "louPan_" . md5($plotName) . "_" . $today;
        $redis = \HttpServer::$redis;
//        $redis = new \Redis();

        try {
            if ($redis != NULL &&  $redisData = $redis->get($louPanKey)) {
                    return json_decode($redisData, TRUE);
            }
        } catch (Exception $exc) { }

        $client = \ElasticSearch::getClient();
        $type = $client->getIndex(\HttpServer::$config['es']['people']['index'])->getType(HttpServer::$config['es']['people']['type']);
        $queryBool = new \Elastica\Query\BoolQuery();
        //楼盘类型
        $queryBool->addMust((new \Elastica\Query\Term())->setTerm('r_type', $rType));
        //时间范围
        $queryRang = new \Elastica\Query\Range();
        $todayTime = mktime(0, 0, 0, date("m"), date('d'), date("Y"));
        $queryRang->addField("timestamp", ['gte' => ($todayTime - DELAY_DATE * 86400), 'lt' => $todayTime]);
        $queryBool->addMust($queryRang);
//        $plotName = "绿地金融中心";
        //楼盘名
        $queryString = new \Elastica\Query\QueryString();
        $queryString->setQuery('*' . $plotName . '*');
        $queryString->setDefaultField('plot_name');
        $queryBool->addMust($queryString);
        //聚合基数   [去重意思]
        $script = new \Elastica\Script("doc['ad'].value + ' ' + doc['ua'].value");
        $aggregationAd = new \Elastica\Aggregation\Cardinality('ad_ua');
        $aggregationAd->setScript($script);
        //查询
        $query = new \Elastica\Query($queryBool);
        $query->addAggregation($aggregationAd);
        //获取结果
        $result = $type->search($query);
        $countArr = $result->getAggregation('ad_ua');   //去重后的
        $totalCount = $result->getTotalHits(); //未去重的
        $ret =  ['count' => $countArr['value'], 'totalCount' => $totalCount];
        try {
             if ($redis != NULL) {
                 $redis->set( $louPanKey , json_encode($ret),$todayTime+86400);
            }
        } catch (Exception $exc) {
        }

        return $ret;
    }

    public function createRedisKey( $prefix,$Arr ){
        $today = date("Y-m-d");
        $key="";
        foreach ( $Arr as $k=> $v ){
            $key .= $k.$v;
        }
        return $key ?  $prefix."_". md5($key)."_".$today : FALSE;
    }
    
    
}
