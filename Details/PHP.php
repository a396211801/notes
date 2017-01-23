<?php
/**
 * User: Lidongchao 大数据处理注意事项
 *
 * 一、不可全部查出数据，尽量的 按条件查出需要数据,
 * 二、注意循环数据时有没重复没必要查询，以免拖延查询效率
 *
 *以下为mongoDB一次性聚合出来5W数据的实例
 *
 * $list查询出来的字段
 *  省份	     province
    城市	     city
    广告位     id	adw_id
    创意id	 ad_id
    展现量	  pv
    点击      	click
    消费	     money
    站外/站内	source(0 站内  1站外)
    主域名	  domain
    完整域名	   url
    AD	        ad
    UA	        ua
    Cookie	cookie
    客户ID	cus_id
    时间点	clock
    日期	     date

 *
     * $limit = 50000;
        $skip = 0;
        while (1) {
            $list = $this->_mongo->$db->$table->aggregate(array(
            array('$skip' => $skip),
            array('$limit' => $limit),
            array('$sort' => array('adw_id' => 1)),
            array('$group' => array(
                    '_id' => array(
                    'ad_id' => '$ad_id',
                    'adw_id' => '$adw_id',
                    'date' => '$date',
                    'string' => '$string',
                ),
                    'count' => array('$sum' => 1),
                    'pv' => array('$sum' => '$pv'),
                    'click' => array('$sum' => '$click'),
                    'money' => array('$sum' => '$money'),
                    'fmoney' => array('$sum' => '$fmoney'),
                    ),
                ),
            ));

            if (count($list['result']) == 0) {
                break;
            }

            $advertIds = array();
            $advertisingIds = array();
            foreach ($list['result'] as $key => $value) {
                $advertIds[] = $value['_id']['ad_id'];
                $advertisingIds[] = $value['_id']['adw_id'];
            }

            //获取广告数据
            $reArr = $this->_db->select(array('click_url', 'strategy_id', 'pic', 'user_id', 'id'),array('id' => $advertIds), 'nxu_advert');
            $adArr = array();
            foreach ($reArr as $key => $value) {
                $adArr[$value['id']] = $value;
            }
            $reArr = null;
            unset($reArr);
            //获取广告位数据
            $reArr = $this->_db->select(array('user_id', 'title', 'id'), array('id' => $advertisingIds), 'nxu_advertising');
            $adwarr = array();
            $userIdArr= array();
            foreach ($reArr as $key => $value) {
                $adwarr[$value['id']] = $value;
                $userIdArr[] = $value['user_id'];
            }
            $reArr = null;
            unset($reArr);

            //获取网站名数据
            $reArr = $this->_db->select(array('web_name', 'user_id'), array('user_id'=>$userIdArr), 'nxu_web');
            $webArr = array();
            foreach ($reArr as $key => $value) {
                $webArr[$value['user_id']] = $value;
            }
            $reArr = null;
            unset($reArr);

            $insert_data = array();
            foreach ($list['result'] as $key => $value) {
                $data = array();
                $data['pv'] = isset($value['pv']) ? $value['pv'] : 0;
                $data['click'] = isset($value['click']) ? $value['click'] : 0;
                $data['money'] = isset($value['money']) ? $value['money'] : 0;
                $data['ad_id'] = isset($value['_id']['ad_id']) ? $value['_id']['ad_id'] : 0;
                $data['adw_id'] = isset($value['_id']['adw_id']) ? $value['_id']['adw_id'] : 0;
                $data['date'] = isset($value['_id']['date']) ? $value['_id']['date'] : 0;
                $data['fmoney'] = isset($value['fmoney']) ? $value['fmoney'] : 0;

                $data['click_url'] = isset($adArr[$value['_id']['ad_id']]['click_url']) ?
                $adArr[$value['_id']['ad_id']]['click_url'] : 0;

                $data['plan_id'] = isset($adArr[$value['_id']['ad_id']]['strategy_id']) ?
                $adArr[$value['_id']['ad_id']]['strategy_id'] : 0;
                $data['pic'] = isset($adArr[$value['_id']['ad_id']]['pic']) ?
                $adArr[$value['_id']['ad_id']]['pic'] : 0;

                $data['user_name'] = isset($adwarr[$value['_id']['adw_id']]['title']) ?
                $adwarr[$value['_id']['adw_id']]['title'] : 0;

                $user_id = isset($adwarr[$value['_id']['adw_id']]['user_id']) ?
                $adwarr[$value['_id']['adw_id']]['user_id'] : 0;

                $data['web_name'] = isset($webArr[$user_id]['web_name']) ?
                $webArr[$user_id]['web_name'] : '';
                $insert_data[] = $data;
                $data = null;
                unset($user_id);
                unset($data);
            }

            $this->_mongo->$db->$tables->batchInsert($insert_data);
            $list = null;
            unset($list);
            $skip = $skip + $limit;
        }
 *
 *
 *
 *
 *
 */
function dome()
{

    /**
     *  jquery-pjax
     *
     * https://github.com/defunkt/jquery-pjax
     * */



}

/**
 *
 * */
function dome1()
{

}

