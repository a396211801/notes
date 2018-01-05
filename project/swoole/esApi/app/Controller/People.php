<?php

namespace Controller;

/**
 * Description of People
 *
 * @author Sgenmi
 * @date 2017-9-18
 * @Email 150560159@qq.com
 */
class People extends \Controller {

    private $pointsCount = 1000;

    //获取人群热力图人数总量
    public function countAction() {
        $client = \ElasticSearch::getClient();
        $type = $client->getIndex(\HttpServer::$config['es']['people']['index'])->getType(\HttpServer::$config['es']['people']['type']);

        $queryBuilder = new \Elastica\QueryBuilder();
        $queryBool = $queryBuilder->query()->bool();

        $queryParmas = [
            'r_type' => isset(\HttpServer::$get['louPanType']) ? \HttpServer::$get['louPanType'] : "",
            'plot_name' => isset(\HttpServer::$get['plotName']) ? \HttpServer::$get['plotName'] : "",
            'house_type' => isset(\HttpServer::$get['houseType']) ? \HttpServer::$get['houseType'] : "", //户型
            'area' => isset(\HttpServer::$get['area']) ? \HttpServer::$get['area'] : "", //面积
            'near_traffic' => isset(\HttpServer::$get['subWay']) ? \HttpServer::$get['subWay'] : "", //地铁
            'developer_sx' => "", //开发商缩写
            'site_name' => ""                 //网站来源
        ];

        $startMoney = isset(\HttpServer::$get['startMoney']) ? \HttpServer::$get['startMoney'] : 0;
        $endMoney = isset(\HttpServer::$get['endMoney']) ? \HttpServer::$get['endMoney'] : 0;

        $shuldArr = ['house_type', 'area', 'near_traffic'];
        foreach ($queryParmas as $k => $v) {
            if ($v) {
                if (in_array($k, $shuldArr)) {
                    $vArr = array_filter(explode(",", $v));
                    if (count($vArr) > 1) {
                        $queryBool->addMust((new \Elastica\Query\Terms())->setTerms($k, $vArr));
                    } else {
                        $queryBool->addMust((new \Elastica\Query\Term())->setTerm($k, $v));
                    }
                } else {
                    $queryBool->addMust((new \Elastica\Query\Term())->setTerm($k, $v));
                }
            }
        }



        //时间范围
        $queryRang = new \Elastica\Query\Range();
        $todayTime = mktime(0, 0, 0, date("m"), date('d'), date("Y"));
        $queryRang->addField("timestamp", ['gte' => ($todayTime - DELAY_DATE * 86400), 'lt' => $todayTime]);

        //单价范围
        $moneyRange = [];
        if ($startMoney && is_numeric($startMoney)) {
            $moneyRange['gte'] = $startMoney;
        }
        if ($endMoney && is_numeric($endMoney)) {
            $moneyRange['lte'] = $endMoney;
        }
        if ($moneyRange) {
            $queryRang->addField("average_price", $moneyRange);
        }
        $queryBool->addMust($queryRang);
        //聚合
        $script = new \Elastica\Script("doc['ad'].value + ' ' + doc['ua'].value");
        $addAgg = $queryBuilder->aggregation()->cardinality('ad_ua')->setScript($script);
        $query = new \Elastica\Query($queryBool);
        $query->addAggregation($addAgg);

        echo "\n************************start****************************************\n";
        print_r($query->toArray());
        print_r(json_encode($query->toArray(), JSON_UNESCAPED_UNICODE));
        echo "\n*****************************************************************\n";

        $ret = $type->search($query)->getAggregation("ad_ua");
        if ($ret && isset($ret['value'])) {
            return echo_json(0, ['count' => $ret['value']]);
        }
        return echo_json(10001);
    }

    //获取地图上圈选功能数据
    public function circleAction() {

        $client = \ElasticSearch::getClient();
        $type = $client->getIndex(\HttpServer::$config['es']['people']['index'])->getType(\HttpServer::$config['es']['people']['type']);

        $startLng = isset(\HttpServer::$get['startLng']) ? \HttpServer::$get['startLng'] : 0;
        $startLat = isset(\HttpServer::$get['startLat']) ? \HttpServer::$get['startLat'] : 0;
        $endLng = isset(\HttpServer::$get['endLng']) ? \HttpServer::$get['endLng'] : 0;
        $endLat = isset(\HttpServer::$get['endLat']) ? \HttpServer::$get['endLat'] : 0;

        if (!$startLng || !is_numeric($startLng) || !$startLat || !is_numeric($startLat) || !$endLng || !is_numeric($endLng) || !$endLat || !is_numeric($endLat)
        ) {
            return echo_json(10002);
        }
        $queryParmas = [
            'house_type' => isset(\HttpServer::$get['houseType']) ? \HttpServer::$get['houseType'] : "", //户型
            'area' => isset(\HttpServer::$get['area']) ? \HttpServer::$get['area'] : "", //面积
            'near_traffic' => isset(\HttpServer::$get['subWay']) ? \HttpServer::$get['subWay'] : "", //地铁
        ];
        $startMoney = isset(\HttpServer::$get['startMoney']) ? \HttpServer::$get['startMoney'] : 0;
        $endMoney = isset(\HttpServer::$get['endMoney']) ? \HttpServer::$get['endMoney'] : 0;

        $queryBool = new \Elastica\Query\BoolQuery();

        $shuldArr = ['house_type', 'area', 'near_traffic'];
        foreach ($queryParmas as $k => $v) {
            if ($v) {
                if (in_array($k, $shuldArr)) {
                    $vArr = array_filter(explode(",", $v));
                    if (count($vArr) > 1) {
                        $queryBool->addMust((new \Elastica\Query\Terms())->setTerms($k, $vArr));
                    } else {
                        $queryBool->addMust((new \Elastica\Query\Term())->setTerm($k, $v));
                    }
                } else {
                    $queryBool->addMust((new \Elastica\Query\Term())->setTerm($k, $v));
                }
            }
        }
        //时间范围
        $queryRang = new \Elastica\Query\Range();
        $todayTime = mktime(0, 0, 0, date("m"), date('d'), date("Y"));
        $queryRang->addField("timestamp", ['gte' => ($todayTime - DELAY_DATE * 86400), 'lt' => $todayTime]);
        //单价范围
        $moneyRange = [];
        if ($startMoney && is_numeric($startMoney)) {
            $moneyRange['gte'] = $startMoney;
        }
        if ($endMoney && is_numeric($endMoney)) {
            $moneyRange['lte'] = $endMoney;
        }
        if ($moneyRange) {
            $queryRang->addField("average_price", $moneyRange);
        }
        $queryBool->addMust($queryRang);
        //聚类分组
        $scriptStr = "doc['r_type'].values+doc['district'].values+doc['house_type'].values+doc['area'].values+doc['developer_sx'].values+"
                . "doc['plot_name'].values+doc['region'].values+doc['estate_type'].values+doc['near_traffic'].values+doc['feature'].values";
        $scirptGroup = new \Elastica\Script($scriptStr);
        $aggregationGroup = new \Elastica\Aggregation\Terms("agg_group");
        $aggregationGroup->setScript($scirptGroup)->setExclude(array('其他', '其他', 'other'))->setSize(5);            //顶部size多少条,排序好的
        //聚合基数   [去重意思]
        $script = new \Elastica\Script("doc['ad'].value + ' ' + doc['ua'].value");
        $aggregationAd = new \Elastica\Aggregation\Cardinality('ad_ua');
        $aggregationAd->setScript($script);

        //组合
        $aggregationGroup->addAggregation($aggregationAd);
        //位置范围
        $coordinates = [
            0 => implode(",", array($endLat, $startLng)), //top_left
            1 => implode(",", array($startLat, $endLng))  //bottom_right
        ];
        $geo = new \Elastica\Query\GeoBoundingBox("geo", $coordinates);
        $queryBool->addMust($geo);

        $query = new \Elastica\Query($queryBool);
        $query->addAggregation($aggregationGroup);

//        echo "\n************************start****************************************\n";
//        print_r($query->toArray());
//        print_r(json_encode($query->toArray(), JSON_UNESCAPED_UNICODE));
//        echo "\n*****************************************************************\n";
//        return 1;
        //获取结果
        $resultSet = $type->search($query);
        $result = $resultSet->getAggregations('agg_group');
       $totalCount = $resultSet->getTotalHits();

        if (!$result || !isset($result['agg_group']) || !isset($result['agg_group']['buckets']) || !$result['agg_group']['buckets']) {
            return echo_json();
        }
        //数据整合
        $ret = [];
        foreach ($result['agg_group']['buckets'] as $v) {
            $ret[] = [
                'num' => $v['ad_ua']['value'],
                'key' => $v['key']
            ];
        }
        return echo_json(0, ['totalCount'=>$totalCount,'top'=>$ret]);
    }

    //获取人群热力图数据
    public function pointsAction() {
        $client = \ElasticSearch::getClient();
        $type = $client->getIndex(\HttpServer::$config['es']['people']['index'])->getType(\HttpServer::$config['es']['people']['type']);

        $startLng = isset(\HttpServer::$get['startLng']) ? \HttpServer::$get['startLng'] : 0;
        $startLat = isset(\HttpServer::$get['startLat']) ? \HttpServer::$get['startLat'] : 0;
        $endLng = isset(\HttpServer::$get['endLng']) ? \HttpServer::$get['endLng'] : 0;
        $endLat = isset(\HttpServer::$get['endLat']) ? \HttpServer::$get['endLat'] : 0;

        if (!$startLng || !is_numeric($startLng) || !$startLat || !is_numeric($startLat) || !$endLng || !is_numeric($endLng) || !$endLat || !is_numeric($endLat)
        ) {
            return echo_json(10002);
        }

        $queryParmas = [
            'r_type' => isset(\HttpServer::$get['louPanType']) ? \HttpServer::$get['louPanType'] : "",
//            'plot_name' => isset(\HttpServer::$get['plotName']) ? \HttpServer::$get['plotName'] : "",
            'house_type' => isset(\HttpServer::$get['houseType']) ? \HttpServer::$get['houseType'] : "", //户型
            'area' => isset(\HttpServer::$get['area']) ? \HttpServer::$get['area'] : "", //面积
            'near_traffic' => isset(\HttpServer::$get['subWay']) ? \HttpServer::$get['subWay'] : "", //地铁
            'developer_sx' => "", //开发商缩写
            'site_name' => ""                 //网站来源
        ];

        $startMoney = isset(\HttpServer::$get['startMoney']) ? \HttpServer::$get['startMoney'] : 0;
        $endMoney = isset(\HttpServer::$get['endMoney']) ? \HttpServer::$get['endMoney'] : 0;
        $peoplePointsKey = $this->createRedisKey('peoplePoints', \HttpServer::$get);
        $redis = \HttpServer::$redis;

        try {
            if ($redis != NULL && $redisData = $redis->get($peoplePointsKey)) {
                return json_decode($redisData, TRUE);
            }
        } catch (Exception $exc) {
            
        }
        $queryBool = new \Elastica\Query\BoolQuery();

        $shuldArr = ['house_type', 'area', 'near_traffic'];
        foreach ($queryParmas as $k => $v) {
            if ($v) {
                if (in_array($k, $shuldArr)) {
                    $vArr = array_filter(explode(",", $v));
                    if (count($vArr) > 1) {
                        $queryBool->addMust((new \Elastica\Query\Terms())->setTerms($k, $vArr));
                    } else {
                        $queryBool->addMust((new \Elastica\Query\Term())->setTerm($k, $v));
                    }
                } else {
                    $queryBool->addMust((new \Elastica\Query\Term())->setTerm($k, $v));
                }
            }
        }
        //时间范围
        $queryRang = new \Elastica\Query\Range();
        $todayTime = mktime(0, 0, 0, date("m"), date('d'), date("Y"));
        $queryRang->addField("timestamp", ['gte' => ($todayTime - DELAY_DATE * 86400), 'lt' => $todayTime]);

        //单价范围
        $moneyRange = [];
        if ($startMoney && is_numeric($startMoney)) {
            $moneyRange['gte'] = $startMoney;
        }
        if ($endMoney && is_numeric($endMoney)) {
            $moneyRange['lte'] = $endMoney;
        }
        if ($moneyRange) {
            $queryRang->addField("average_price", $moneyRange);
        }
        $queryBool->addMust($queryRang);

        //位置范围
        $coordinates = [
            0 => implode(",", array($endLat, $startLng)), //top_left
            1 => implode(",", array($startLat, $endLng))  //bottom_right
        ];
        $geo = new \Elastica\Query\GeoBoundingBox("geo", $coordinates);
        $queryBool->addMust($geo);
        //聚合
        $aggregationGeo = new \Elastica\Aggregation\GeohashGrid('geo_num', 'geo');
        $aggregationGeo->setPrecision(6)->setSize($this->pointsCount);
        //聚合基数   [去重意思]
        $script = new \Elastica\Script("doc['ad'].value + ' ' + doc['ua'].value");
        $aggregationAd = new \Elastica\Aggregation\Cardinality('ad_ua');
        $aggregationAd->setScript($script);
        //组合
        $aggregationGeo->addAggregation($aggregationAd);

        //查询
        $query = new \Elastica\Query($queryBool);
        $query->addAggregation($aggregationGeo);

        echo "\n************************start****************************************\n";
        print_r($query->toArray());
        print_r(json_encode($query->toArray(), JSON_UNESCAPED_UNICODE));
        echo "\n*****************************************************************\n";

//        return "111";
        //获取结果
        $result = $type->search($query)->getAggregation('geo_num');

        if (!$result || !isset($result['buckets']) || !$result['buckets']) {
            return echo_json();
        }
        //数据整合
        $ret = [];
        $geoHash = new \Geohash();
        foreach ($result['buckets'] as $k => $v) {
            $point = $geoHash->decode($v['key'], 6);
            $ret[$k]['lat'] = $point[0];
            $ret[$k]['lng'] = $point[1];
            $ret[$k]['count'] = $v['ad_ua']['value'];
        }

        $retJson = echo_json(0, $ret);
        try {
            if ($redis != NULL) {
                $redis->set($peoplePointsKey, $retJson, 3600 * 5);
            }
        } catch (Exception $exc) {
            
        }
        return $retJson;
    }

    //获取人群分布图
    public function peopleAction() {

        $client = \ElasticSearch::getClient();

//        $startLng = isset(\HttpServer::$get['startLng']) ? \HttpServer::$get['startLng'] : 0;
//        $startLat = isset(\HttpServer::$get['startLat']) ? \HttpServer::$get['startLat'] : 0;
//        $endLng = isset(\HttpServer::$get['endLng']) ? \HttpServer::$get['endLng'] : 0;
//        $endLat = isset(\HttpServer::$get['endLat']) ? \HttpServer::$get['endLat'] : 0;
//
//        if (!$startLng || !is_numeric($startLng) || !$startLat || !is_numeric($startLat) || !$endLng || !is_numeric($endLng) || !$endLat || !is_numeric($endLat)
//        ) {
//            return echo_json(10002);
//        }

        $queryParmas = [
            'r_type' => isset(\HttpServer::$get['louPanType']) ? \HttpServer::$get['louPanType'] : "",
            'plot_name' => isset(\HttpServer::$get['plotName']) ? \HttpServer::$get['plotName'] : "",
        ];

        $search = new \Elastica\Search($client);
        $search->addIndex(\HttpServer::$config['es']['people']['index'])
                ->addType(\HttpServer::$config['es']['people']['type']);
        $queryBool = new \Elastica\Query\BoolQuery();

        foreach ($queryParmas as $k => $v) {
            if ($v) {
                $queryBool->addMust((new \Elastica\Query\Term())->setTerm($k, $v));
            }
        }
        //时间范围
        $queryRang = new \Elastica\Query\Range();
        $todayTime = mktime(0, 0, 0, date("m"), date('d'), date("Y"));
        $queryRang->addField("timestamp", ['gte' => ($todayTime - DELAY_DATE * 86400), 'lt' => $todayTime]);
        $queryBool->addMust($queryRang);

        //位置范围
//        $coordinates = [
//            0 => implode(",", array($end_lat, $start_lon)), //top_left
//            1 => implode(",", array($start_lat, $end_lon))  //bottom_right
//        ];
//        $geo = new \Elastica\Query\GeoBoundingBox("geo", $coordinates);
//        $queryBool->addMust($geo);
//        //聚合基数   [去重意思]
        $script = new \Elastica\Script("doc['ad'].value+doc['ua'].value+doc['geo']");
        $aggregationAd = new \Elastica\Aggregation\Cardinality('ad_ua');
        $aggregationAd->setScript($script);
        //查询
        $query = new \Elastica\Query($queryBool);
        $query->setSize(20000);
        $query->setFields(['geo']);
        $query->addAggregation($aggregationAd);
        $search->setQuery($query);

        json($query->toArray());
        //分开取
        $Scroll = new \Elastica\Scroll($search, '2m');
        //数据整合
        $ret = [];
        foreach ($Scroll as $resultSet) {
            $restults = $resultSet->getResults();
            foreach ($restults as $v) {
                $geo = explode(",", $v->getData()['geo'][0]);
                if (count($geo) != 2) {
                    continue;
                }
                $ret[] = [
                    'count' => 1, 'lat' => floatval($geo[0]), 'lng' => floatval($geo[1])
                ];
            }
        }
        return echo_json(0, $ret);
    }

}
