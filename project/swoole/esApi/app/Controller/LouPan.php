<?php

namespace Controller;

/**
 * Description of LouPan
 *
 * @author Sgenmi
 * @date 2017-9-6
 * @Email 150560159@qq.com
 */
class LouPan extends \Controller {

    public function regionAction() {

        $client = \ElasticSearch::getClient();
        $type = $client->getIndex(\HttpServer::$config['es']['loupan']['index'])
                ->getType(\HttpServer::$config['es']['loupan']['type']);

        $rType = isset(\HttpServer::$get['rType']) ? \HttpServer::$get['rType'] : "";
        if ($rType != "新房" && $rType != "二手房") {
            return echo_json(10001);
        }

        $queryBool = new \Elastica\Query\BoolQuery();
        $queryBool->addMust((new \Elastica\Query\Term())->setTerm('r_type', $rType));
        //区域聚合
        $aggRegion = new \Elastica\Aggregation\Terms('region_array');
        $aggRegion->setField('region')->setSize(100);
        //子聚合->板块
        $aggDistrict = new \Elastica\Aggregation\Terms("district_array");
        $aggDistrict->setField("district")->setSize(100);
        $aggRegion->addAggregation($aggDistrict);

        $query = new \Elastica\Query($queryBool);
        $query->addAggregation($aggRegion);
//        json($query->toArray());
        $result = $type->search($query)->getAggregation("region_array");

        if (!$result || !isset($result['buckets']) || !$result['buckets']) {
            return echo_json();
        }

        $ret = [];
        foreach ($result['buckets'] as $v) {
            $ret[$v['key']] = fn_arr_field($v['district_array']['buckets'], 'key');
        }
        return echo_json(0, $ret);
    }

    //获取所有楼盘
    public function louPanListAction() {

        $client = \ElasticSearch::getClient();
        $queryBool = new \Elastica\Query\BoolQuery();
        $rType = isset(\HttpServer::$get['rType']) ? \HttpServer::$get['rType'] : "";
        if ($rType != "新房" && $rType != "二手房") {
            return echo_json(10001);
        }

        $startLng = isset(\HttpServer::$get['startLng']) ? \HttpServer::$get['startLng'] : 0;
        $startLat = isset(\HttpServer::$get['startLat']) ? \HttpServer::$get['startLat'] : 0;
        $endLng = isset(\HttpServer::$get['endLng']) ? \HttpServer::$get['endLng'] : 0;
        $endLat = isset(\HttpServer::$get['endLat']) ? \HttpServer::$get['endLat'] : 0;

        if (!$startLng || !is_numeric($startLng) || !$startLat || !is_numeric($startLat) || !$endLng || !is_numeric($endLng) || !$endLat || !is_numeric($endLat)
        ) {
            return echo_json(10002);
        }

        $queryParmas = [
            'r_type' => $rType,
            'region' => isset(\HttpServer::$get['region']) ? \HttpServer::$get['region'] : "", //区域_板块
            'estate_type' => isset(\HttpServer::$get['propertyType']) ? \HttpServer::$get['propertyType'] : "", //物业类型
            'near_traffic' => isset(\HttpServer::$get['subWay']) ? \HttpServer::$get['subWay'] : "", //地铁
            'sale_status' => isset(\HttpServer::$get['saleType']) ? \HttpServer::$get['saleType'] : "",
        ];

        $startMoney = isset(\HttpServer::$get['startMoney']) ? \HttpServer::$get['startMoney'] : 0;
        $endMoney = isset(\HttpServer::$get['endMoney']) ? \HttpServer::$get['endMoney'] : 0;

        if (isset($queryParmas['region'])) {
            $sArr = explode("|", $queryParmas['region']);
            $queryParmas['region'] = isset($sArr[0]) ? str_replace("区", "", $sArr[0]) : "";
            $queryParmas['district'] = isset($sArr[1]) ? $sArr[1] : "";
        }

        foreach ($queryParmas as $k => $v) {
            if ($v) {
                $queryBool->addMust((new \Elastica\Query\Term())->setTerm($k, $v));
            }
        }

        //单价范围
        $moneyRange = [];
        if ($startMoney && is_numeric($startMoney)) {
            $moneyRange['gte'] = $startMoney;
        }
        if ($endMoney && is_numeric($endMoney)) {
            $moneyRange['lte'] = $endMoney;
        }
        if ($moneyRange) {
            $queryRang = new \Elastica\Query\Range();
            $queryRang->addField("average_price", $moneyRange);
            $queryBool->addMust($queryRang);
        }

        //位置范围
        $coordinates = [
            0 => implode(",", array($endLat, $startLng)), //top_left
            1 => implode(",", array($startLat, $endLng))  //bottom_right
        ];
        $geo = new \Elastica\Query\GeoBoundingBox("ageo", $coordinates);
        $queryBool->addMust($geo);

        $query = new \Elastica\Query($queryBool);
        $query->setFields(["plot_name", "ageo", "address", "average_price", "district", "img_url", "house_type", "developer", "r_type", "region"]);

        $search = new \Elastica\Search($client);
        $search->addIndex(\HttpServer::$config['es']['loupan']['index'])
                ->addType(\HttpServer::$config['es']['loupan']['type']);

//        echo "\n************************start****************************************\n";
//        print_r($query->toArray());
//        print_r(json_encode($query->toArray(), JSON_UNESCAPED_UNICODE));
//        echo "\n*****************************************************************\n";
//        
        $search->search($query);
        //使用scan 才能取所有的

        $ret = [];
        $scan = new \Elastica\ScanAndScroll($search, '1m', 300);
        foreach ($scan as $resultSet) {
            $rs = $resultSet->getResults();
            foreach ($rs as $ks => $v) {
                //获取data,data是一个数组
                $rsd = $v->getData();
                $id = $v->getId();
                foreach ($rsd as $k => $vd) {
                    $ret[$ks][$k] = implode(",", $vd);
                }
                //设置id
                $ret[$ks]['id'] = $id;

                $countArr = $this->getLouPanPeoples($ret[$ks]['plot_name'], $rType);
                if (!is_array($countArr)) {
                    $countArr = ['count' => 0, 'totalCount' => 0];
                }
                //去重后的总数
                $ret[$ks]['count'] = $countArr['count'];
                //未去重的总数
                $ret[$ks]['totalCount'] = $countArr['totalCount'];
            }
        }
        return echo_json(0, $ret);
    }

    public function districtsAction($clientExe = false, $louPanType = "新房") {

        $client = \ElasticSearch::getClient();
        if ($clientExe) {
            \HttpServer::$get['louPanType'] = $louPanType;
        }

        //楼盘类型
        $rType = isset(\HttpServer::$get['louPanType']) ? \HttpServer::$get['louPanType'] : "";
        if ($rType != "新房" && $rType != "二手房") {
            return echo_json(10001);
        }
        $queryParmas = [
            'r_type' => $rType,
            'region' => isset(\HttpServer::$get['region']) ? \HttpServer::$get['region'] : "", //区域_板块
            'estate_type' => isset(\HttpServer::$get['propertyType']) ? \HttpServer::$get['propertyType'] : "", //物业类型
            'near_traffic' => isset(\HttpServer::$get['subWay']) ? \HttpServer::$get['subWay'] : "", //地铁
            'sale_status' => isset(\HttpServer::$get['saleType']) ? \HttpServer::$get['saleType'] : "",
        ];

        $startMoney = isset(\HttpServer::$get['startMoney']) ? \HttpServer::$get['startMoney'] : 0;
        $endMoney = isset(\HttpServer::$get['endMoney']) ? \HttpServer::$get['endMoney'] : 0;

        if (isset($queryParmas['region'])) {
            $sArr = explode("|", $queryParmas['region']);
            $queryParmas['region'] = isset($sArr[0]) ? str_replace("区", "", $sArr[0]) : "";
            $queryParmas['district'] = isset($sArr[1]) ? $sArr[1] : "";
        }

        $queryBool = new \Elastica\Query\BoolQuery();
        foreach ($queryParmas as $k => $v) {
            if ($v) {
                $queryBool->addMust((new \Elastica\Query\Term())->setTerm($k, $v));
            }
        }

        //单价范围
        $moneyRange = [];
        if ($startMoney && is_numeric($startMoney)) {
            $moneyRange['gte'] = $startMoney;
        }
        if ($endMoney && is_numeric($endMoney)) {
            $moneyRange['lte'] = $endMoney;
        }
        if ($moneyRange) {
            $queryRang = new \Elastica\Query\Range();
            $queryRang->addField("average_price", $moneyRange);
            $queryBool->addMust($queryRang);
        }

        //整合查询条件
        $query = new \Elastica\Query($queryBool);
        $query->setFields(["plot_name", "district", 'dgeo']);

        $search = new \Elastica\Search($client);
        $search->addIndex(\HttpServer::$config['es']['loupan']['index'])
                ->addType(\HttpServer::$config['es']['loupan']['type']);

//        echo "\n************************start****************************************\n";
//        print_r($query->toArray());
//        print_r(json_encode($query->toArray(), JSON_UNESCAPED_UNICODE));
//        echo "\n*****************************************************************\n";

        $search->search($query);
        $scan = new \Elastica\ScanAndScroll($search, '1m', 300);
        $ret = [];
        foreach ($scan as $resultSet) {
            $rs = $resultSet->getResults();
            foreach ($rs as $ks => $v) {
                $vArr = [];
                //获取data,data是一个数组
                $rsd = $v->getData();
                $id = $v->getId();
                foreach ($rsd as $k => $vd) {
                    if (is_array($vd)) {
                        $vArr[$k] = implode(",", $vd);
                    } else {
                        $vArr[$k] = $vd;
                    }
                }
                $vArr['id'] = $id;
                $countArr = $this->getLouPanPeoples($vArr['plot_name'], $queryParmas['r_type']);
                if (!is_array($countArr)) {
                    $countArr = ['count' => 0, 'totalCount' => 0];
                }
                if (isset($ret[$vArr['district']])) {
                    $ret[$vArr['district']]['count'] += +$countArr['count'];
                    $ret[$vArr['district']]['totalCount'] += $countArr['totalCount'];
                    $ret[$vArr['district']]['lpCount'] += 1;
                } else {
                    $dgeoArr = explode(",", $vArr['dgeo']);
                    $ret[$vArr['district']] = [
                        'lat' => isset($dgeoArr[0]) ? $dgeoArr[0] : 0,
                        'lng' => isset($dgeoArr[1]) ? $dgeoArr[1] : 0,
                        'name' => $vArr['district'],
                        'count' => $countArr['count'], //去重
                        'totalCount' => $countArr['totalCount'], //未去重
                        'lpCount' => 1
                    ];
                }
            }
        }
        return echo_json(0, $ret);
    }

    //楼盘名搜索时,自动提示
    public function suggestAction() {

        //说明,如果$rType=All 则搜索全部,不读取楼盘人数
        $rType = isset(\HttpServer::$get['louPanType']) ? \HttpServer::$get['louPanType'] : "";
        $plotName = isset(\HttpServer::$get['plotName']) ? \HttpServer::$get['plotName'] : "";
        if (($rType != "新房" && $rType != "二手房" && $rType != 'All') || !$plotName) {
            return echo_json(10001);
        }
        $client = \ElasticSearch::getClient();
        $type = $client->getIndex(\HttpServer::$config['es']['loupan']['index'])
                ->getType(\HttpServer::$config['es']['loupan']['type']);
        $queryBool = new \Elastica\Query\BoolQuery();
        //楼盘名
        $queryString = new \Elastica\Query\QueryString();
        $queryString->setQuery('*' . $plotName . '*');
        $queryString->setDefaultField('plot_name');
        $queryBool->addMust($queryString);
        $feild = ["plot_name", "ageo", "address", "average_price", "district", "img_url", "house_type", "developer", "region"];
        if ($rType != 'All') {
            //楼盘类型
            $queryBool->addMust((new \Elastica\Query\Term())->setTerm('r_type', $rType));
        } else {
            $feild[] = 'r_type';
        }
        $query = new \Elastica\Query($queryBool);
        $query->setSize(8);
        $query->setFields($feild);
        
//        echo "\n************************start****************************************\n";
//        print_r($query->toArray());
//        print_r(json_encode($query->toArray(), JSON_UNESCAPED_UNICODE));
//        echo "\n*****************************************************************\n";
//        
        $result = $type->search($query)->getResults();
        $ret = [];
        foreach ($result as $ks => $v) {
            //获取data,data是一个数组
            $rsd = $v->getData();
            $id = $v->getId();
            foreach ($rsd as $k => $vd) {
                $ret[$ks][$k] = implode(",", $vd);
            }
            $ret[$ks]['id'] = $id;
            //
            if ($rType != 'All') {
                $countArr = $this->getLouPanPeoples($ret[$ks]['plot_name'], $rType);
                if (!is_array($countArr)) {
                    $countArr = ['count' => 0, 'totalCount' => 0];
                }
                //去重后的总数
                $ret[$ks]['count'] = $countArr['count'];
                //未去重的总数
                $ret[$ks]['totalCount'] = $countArr['totalCount'];
            }
        }
        return echo_json(0, $ret);
    }

}
