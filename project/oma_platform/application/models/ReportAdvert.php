<?php

class Model_ReportAdvert extends Smodel
{

    protected $table = "report_advert";

    /*************************前台*************************/
    /**
     * 数据报表
     * @param array $condition
     * @return array
     */
    public function dataReport($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $r = isset($condition['limit']) && $condition['limit'] > 0 ? $condition['limit'] : 10;
        $where = $this->processCondition($condition);
        $count = $this->count($where);
        $where['ORDER'] = ' date desc';
        $where['LIMIT'] = array(($p - 1) * $r, $r);
        //$field = ['id','date','has_invoice','money','pay_tax','invaild_money','real_money','status'];
        $list = $this->select('*', $where);
        $list = $this->processList($list);
        return array('list' => $list, 'count' => ceil( $count / $r));
    }

    /**
     * 条件删选
     * @param $condition
     * @return array
     */
    public function processCondition($condition = [])
    {
        $where = [];
        //客户id
        if (isset($condition['user_id']) && $condition['user_id']) {
            $where['AND']['user_id'] = $condition['user_id'];
        }
        //广告位id
        if (isset($condition['adw_id']) && $condition['adw_id']) {
            $where['AND']['adw_id'] = $condition['adw_id'];
        }

        //日期
        if (isset($condition['start_date']) && $condition['start_date']) {
            $where['AND']['date[>=]'] = strtotime($condition['start_date']);
        }
        if (isset($condition['end_date']) && $condition['end_date']) {
            $where['AND']['date[<=]'] = strtotime($condition['end_date']);
        }

        return $where;
    }


    /**
     * 数据处理
     * @param array $list
     * @return array
     */
    public function processList($list = [])
    {
        if (!empty($list)) {

            $_c = Yaf_Application::app()->getConfig()->toArray();
            $type = $_c['base_info']['advert']['type'];

            $model_advert_position = new Model_AdvertPosition();

            foreach ($list as $k => $v) {
                //广告位名称
                $advert_position_name = $model_advert_position->get('name', ['AND' => ['id' => $v['adw_id']]]);
                $list[$k]['advert_position_name'] = $advert_position_name ? $advert_position_name : "未知";

                //投放类型名称
                $type_name = array_key_exists($v['type'], $type) ? $type[$v['type']] : '未知';
                $list[$k]['type_name'] = $type_name;
            }
        }
        return $list;
    }


    /*************************后台*************************/


    /**
     * @param array $condition
     * @return array
     * 广告汇总表
     */
    public function getList($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $size = isset($condition['limit']) ? $condition['limit'] > 0 ? $condition['limit'] : 10 : 10;
        $where = $this->listCondition($condition);
        $where['GROUP'] = ' ad_id ';
        $count = count($this->selects('1', $where));
        $where['LIMIT'] = array(($p - 1) * $size, $size);
        $where['ORDER'] = ' id desc ';
        $field = ['user_id, ad_id, adw_id, activate_price, sum(uv) as uv, sum(ip) as ip, sum(pv) as pv,sum(my_prize_pv) as my_prize_pv,sum(click) as click, sum(total_money) as total_money'];
        $list = $this->selects($field, $where);
        $total = [
            'sum_uv' => 0,
            'sum_ip' => 0,
            'sum_pv' => 0,
            'sum_click' => 0,
            'sum_money' => 0,
        ];
        if (!empty($list)) {
            $all = $this->externalConnection($list, $total);
            $list = $all['list'];
            $total = $all['total'];
        }
        return array('list' => $list, 'total' => $total, 'count' => ceil( $count / $size ));
    }

    /**
     * @param array $condition
     * @return array
     * H5广告详表
     */
    public function reportDetailH5($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $size = isset($condition['limit']) ? $condition['limit'] > 0 ? $condition['limit'] : 10 : 10;
        $where = $this->listConditionDetailH5($condition);
        $count = $this->count($where);
        $where['LIMIT'] = array(($p - 1) * $size, $size);
        $where['ORDER'] = ' id desc ';
        $field = ['user_id', 'ad_id', 'adw_id', 'tpl_id', 'type', 'uv', 'ip',  'pv', 'click', 'total_money', 'my_prize_pv', 'date'];
        $list = $this->select($field, $where);
        $total = [
            'sum_uv' => 0,
            'sum_ip' => 0,
            'sum_pv' => 0,
            'sum_click' => 0,
            'sum_money' => 0,
        ];
        if (!empty($list)) {
            $all = $this->externalDetailH5($list, $total);
            $list = $all['list'];
            $total = $all['total'];
        }
        return array('list' => $list, 'total' => $total, 'count' => ceil( $count / $size));
    }

    /**
     * @param array $condition
     * @return array|bool
     * 获取广告数据
     */
    public function getAdvertData($condition = array())
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $size = isset($condition['limit']) ? $condition['limit'] > 0 ? $condition['limit'] : 10 : 10;
        $report_adv_where = $this->getDataCondition($condition);

        $count = $this->count($report_adv_where);

        $report_adv_where['LIMIT'] = array(($p - 1) * $size, $size);

        $report_adv_field = ['user_id,ad_id,adw_id,tpl_id,sum(pv) as pv, sum(uv) as uv, sum(ip) as ip, sum(click) as click, sum(my_prize_pv) as my_prize_pv,date'];
        $advert_info = $this->selects($report_adv_field, $report_adv_where);
        if ($advert_info) {
            $model_reoprt_tpl = new Model_ReportTpl();
            foreach ($advert_info as $k => $v) {
                $advert_info[$k]['click_rate'] = $v['click'] ? sprintf("%0.2f", ($v['click'] / ($v['uv'])) * 100) . '%' : '0.00%';
                $tpl_where = [
                    'AND' => [
                        'tpl_id' => $v['tpl_id'],
                        'adw_id' => $v['adw_id'],
                        'user_id' => $v['user_id'],
                        'date' => $v['date'],
                    ],
                ];
                $advert_info[$k]['o_ck_5'] = $model_reoprt_tpl->sum('o_ck_5', $tpl_where);
                $advert_info[$k]['my_prize_rate'] = $advert_info[$k]['o_ck_5'] ? sprintf("%0.2f", ($advert_info[$k]['o_ck_5'] / ($v['my_prize_pv'])) * 100) . '%' : '0.00%';
            }
        }
        return array('list' => $advert_info, 'count' => ceil( $count / $size));
    }

    /**
     * @param array $condition
     * @return array
     * 获取广告数据条件
     */
    public function getDataCondition($condition = array())
    {
        $where = [];
        if (isset($condition['tpl_id']) && $condition['tpl_id']) {
            $where['AND']['tpl_id'] = $condition['tpl_id'];
        }
        if (isset($condition['start_date']) && $condition['start_date']) {
            $where['AND']['date[>=]'] = strtotime($condition['start_date']);
        }
        if (isset($condition['end_date']) && $condition['end_date']) {
            $where['AND']['date[<=]'] = strtotime($condition['end_date'] . '23:59:59');
        }
        $where['GROUP'] = 'date';
        $where['ORDER'] = 'date desc';
        return $where;
    }

    /**
     * 获取最终条件
     */
    public function listCondition($condition = array())
    {
        $where = array();
        $model_advert = new Model_Advert();
        //广告id/广告名称
        if (isset($condition['name']) && $condition['name']) {
            $where['AND']['OR']['ad_id'] = $condition['name'];
            $ad_where['AND']['ad_name[~]'] = $condition['name'];
            $ad_ids = $model_advert->select('id', $ad_where);
            if (!empty($ad_ids)) {
                $where['AND']['OR']['ad_id'] = $ad_ids;
            }
        }
        if (isset($condition['type']) && $condition['type']) {
            $where['AND']['type'] = $condition['type'];
        }
        //时间
        if (isset($condition['start_date'])
            && $condition['start_date']
            && isset($condition['end_date'])
            && $condition['end_date']
            && trim($condition['start_date']) != ''
            && trim($condition['end_date']) != ''
        ) {
            $where['AND']['date[>=]'] = strtotime($condition['start_date']);
            $where['AND']['date[<=]'] = strtotime($condition['end_date'] . '23:59:59');
        }
        return $where;
    }

    /**
     * 获取h5广告详细表最终条件
     */
    public function listConditionDetailH5($condition = array())
    {
        $where = array();
        $model_advert = new Model_Advert();
        //广告名称/广告id
        if (isset($condition['name']) && $condition['name']) {
            $where['AND']['OR']['ad_id'] = $condition['name'];
            $ad_where['AND']['ad_name[~]'] = $condition['name'];
            $ad_ids = $model_advert->select('id', $ad_where);
            if (!empty($ad_ids)) {
                $where['AND']['OR']['ad_id'] = $ad_ids;
            }
        }
        //时间
        if (isset($condition['start_date'])
            && $condition['start_date']
            && isset($condition['end_date'])
            && $condition['end_date']
            && trim($condition['start_date']) != ''
            && trim($condition['end_date']) != ''
        ) {
            $where['AND']['date[>=]'] = strtotime($condition['start_date']);
            $where['AND']['date[<=]'] = strtotime($condition['end_date'] . '23:59:59');
        }
        if (isset($condition['id']) && $condition['id']) {
            $where['AND']['ad_id'] = $condition['id'];
        }
        $where['AND']['type'] = 1;
        return $where;
    }

    /**
     * 链接外表
     */
    public function externalConnection($list, $total)
    {
        if (empty($list)) return $list;
        $user = new Model_User();
        $advert = new Model_Advert();
        foreach ($list as $k => $v) {
            $where_user['AND']['id'] = $v['user_id'];
            $user_name = $user->get('username', $where_user);
            $list[$k]['user_name'] = isset($user_name) ? $user_name : '暂无';
            $where_advert['AND']['id'] = $v['ad_id'];
            $advert_name = $advert->get(['ad_name','put_pic'], $where_advert);
            $list[$k]['advert_name'] = isset($advert_name['ad_name']) ? $advert_name['ad_name'] : '暂无';
            $list[$k]['put_pic'] = isset($advert_name['put_pic']) ? $advert_name['put_pic'] : '暂无';
            $now_price = $advert->get('put_price', $where_advert);
            $list[$k]['now_price'] = isset($now_price) ? $now_price : '0.00';
            $list[$k]['click_rate'] = $v['click'] ? sprintf("%0.2f", ($v['click'] / ($v['pv'])) * 100) . '%' : '0.00%';
            $list[$k]['money_rate'] = $v['click'] ? sprintf("%0.2f", ($v['total_money'] / $v['click'])) : '0.00';
            //计算总计
            $total['sum_uv'] += $v['uv'];
            $total['sum_ip'] += $v['ip'];
            $total['sum_pv'] += $v['pv'];
            $total['sum_click'] += $v['uv'];
            $total['sum_money'] += $v['total_money'];
        }
        return ['list' => $list, 'total' => $total];
    }

    /**
     * h5详细链接外表
     */
    public function externalDetailH5($list, $total)
    {
        if (empty($list)) return $list;
        $advert = new Model_Advert();
        $model_advertposition = new Model_AdvertPosition();
        $model_tpl = new Model_Tpl();
        $_c = Yaf_Application::app()->getConfig()->toArray();
        $type = $_c['base_info']['advert']['type'];
        foreach ($list as $k => $v) {
            $where_adw['AND']['id'] = $v['adw_id'];
            $adw_name = $model_advertposition->get('name', $where_adw);
            $list[$k]['adw_name'] = isset($adw_name) ? $adw_name : '暂无';
            $where_tpl['AND']['id'] = $v['tpl_id'];
            $tpl_name = $model_tpl->get('name', $where_tpl);
            $list[$k]['tpl_name'] = isset($tpl_name) ? $tpl_name : '暂无';
            $where_advert['AND']['id'] = $v['ad_id'];
            $advert_name = $advert->get(['ad_name','put_pic'], $where_advert);
            $list[$k]['advert_name'] = isset($advert_name['ad_name']) ? $advert_name['ad_name'] : '暂无';
            $list[$k]['put_pic'] = isset($advert_name['put_pic']) ? $advert_name['put_pic'] : '暂无';
            $list[$k]['click_rate'] = $v['click'] ? sprintf("%0.2f", ($v['click'] / ($v['pv'])) * 100) . '%' : '0.00%';
            $list[$k]['money_rate'] = $v['click'] ? sprintf("%0.2f", ($v['total_money'] / $v['click'])) : '0.00';
            //投放类型名称
            $type_name = array_key_exists($v['type'], $type) ? $type[$v['type']] : '未知';
            $list[$k]['type'] = $type_name;
            //计算总计
            $total['sum_uv'] += $v['uv'];
            $total['sum_ip'] += $v['ip'];
            $total['sum_pv'] += $v['pv'];
            $total['sum_click'] += $v['uv'];
            $total['sum_money'] += $v['total_money'];
        }
        return ['list' => $list, 'total' => $total];
    }
}