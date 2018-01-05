<?php

class Model_ReportAdvertPositionH5 extends Smodel
{
    protected $table = "report_advert_position_h5";


    /**********************前台***********************/

    /**
     * 数据报表-广告位详情
     * @param array $condition
     * @return array
     */
    public function reportDetail($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $r = isset($condition['limit']) && $condition['limit'] > 0 ? $condition['limit'] : 10;
        $where = $this->processCondition($condition);
        $where['GROUP'] = 'adw_id';
        $count = $this->count($where);
        $where['ORDER'] = ' id desc';
        $where['LIMIT'] = array(($p - 1) * $r, $r);
        $field = ['user_id, date, adw_id, tpl_ads_price, sum(tpl_ads_ip) as tpl_ads_ip, sum(tpl_ads_uv) as tpl_ads_uv, sum(tpl_ads_pv) as tpl_ads_pv, sum(tpl_ads_click) as tpl_ads_click'];
        $list = $this->selects($field, $where);
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
        $where = [
            'AND' => [
                'user_id' => $condition['user_id'],
                'adw_id' => $condition['adw_id'],
                'date[>=]' => strtotime($condition['start_date']),
                'date[<=]' => strtotime($condition['end_date']),
            ]
        ];
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

            $model_report_advert_position = new Model_ReportAdvertPosition();

            foreach ($list as $k => $v) {

                $w = ['AND' => ['adw_id' => $v['adw_id'], 'date' => $v['date']]];

                //广告点击率
                $click_rate = $v['tpl_ads_ip'] > 0 ? round(($v['tpl_ads_uv'] / $v['tpl_ads_ip']) * 100, 2) : '0.00';
                $list[$k]['click_rate'] = $click_rate . "%";

                //预计日收益
                $estimate_money_day = $model_report_advert_position->get('total_money', $w);
                $list[$k]['estimate_money_day'] = isset($estimate_money_day) && $estimate_money_day > 0 ? $estimate_money_day : '0';
            }
        }
        return $list;
    }

    /**********************后台***********************/

    /**
     * @param array $condition
     * @return array
     * h5广告位详细表
     */
    public function detaileReport($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $size = isset($condition['limit']) ? $condition['limit'] > 0 ? $condition['limit'] : 10 : 10;
        $where = $this->listCondition($condition);
        $count = $this->count($where);
        $where['LIMIT'] = array(($p - 1) * $size, $size);
        $where['ORDER'] = ' id desc ';
        $field = ['id', 'date', 'user_id', 'adw_id', 'tpl_ads_uv', 'tpl_ads_pv', 'tpl_ads_click', 'tpl_ads_price', 'date'];
        $list = $this->select($field, $where);
        $total_sum =  [
            'sum_pv' => 0,
            'sum_click' => 0,
            'sum_tpl_ads_pv' => 0,
            'sum_tpl_ads_click' => 0,
            'sum_total_money' => 0,
            'sum_user_money' => 0,
            'sum_profit' => 0,
        ];
        if (!empty($list)) {
            $all = $this->externalConnection($list);
            $list = $all['list'];
            $total_sum = $all['total'];
        }
        return array('list' => $list, 'total' => $total_sum, 'count' => ceil( $count / $size));
    }

    /**
     * 获取最终条件
     */
    public function listCondition($condition = array())
    {
        $where = array();
        $model_adv_position = new Model_AdvertPosition();
        $users = new Model_User();
        //客户名称/广告位名称
        if (isset($condition['name']) && $condition['name']) {
            $where['AND']['OR']['adw_id'] = $condition['name'];
            $adv_where['AND']['name[~]'] = $condition['name'];
            $adw_ids = $model_adv_position->select('id', $adv_where);
            $user_where['user_name[~]'] = $condition['name'];
            $users = $users->select('id', $user_where);
            if (!empty($users)) {
                $where['AND']['OR']['user_id'] = $users;
            }
            if (!empty($adw_ids)) {
                $where['AND']['OR']['adw_id'] = $adw_ids;
            }
            if (empty($users) && empty($adw_ids)) {
                $where['AND']['id'] = -1;
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
        if (isset($condition['adw_id']) && $condition['adw_id']) {
            $where['AND']['adw_id'] = $condition['adw_id'];
        }
        return $where;
    }

    /**
     * 链接外表
     */
    public function externalConnection($list)
    {
        if (empty($list)) return $list;
        $user = new Model_User();
        $advertPosition = new Model_AdvertPosition();
        $reportAdvertPosition = new Model_ReportAdvertPosition();
        $total = [
            'sum_pv' => 0,
            'sum_click' => 0,
            'sum_tpl_ads_pv' => 0,
            'sum_tpl_ads_click' => 0,
            'sum_total_money' => 0,
            'sum_user_money' => 0,
            'sum_profit' => 0,
        ];
        foreach ($list as $k => $v) {
            $where_user['AND']['id'] = $v['user_id'];
            $user_name = $user->get(['user_name', 'rate'], $where_user);
            $list[$k]['user_name'] = isset($user_name) ? $user_name['user_name'] : '暂无';
            $where_adv_position['AND']['id'] = $v['adw_id'];
            $adw_name = $advertPosition->get('name', $where_adv_position);
            $list[$k]['adw_name'] = isset($adw_name) ? $adw_name : '暂无';
            $adw_report_where = [
                'AND' => [
                    'adw_id' => $v['adw_id'],
                    'date' => $v['date'],
                ],
            ];
            $adw_report_info = $reportAdvertPosition->get(['is_third', 'pv', 'click', 'total_money', 'user_money'], $adw_report_where);
            $list[$k]['total_money'] = isset($adw_report_info['total_money']) ? $adw_report_info['total_money'] : '0.00';
            $list[$k]['user_money'] = isset($adw_report_info['user_money']) ? $adw_report_info['user_money'] : '0.00';
            $list[$k]['pv'] = isset($adw_report_info['pv']) ? $adw_report_info['pv'] : '0';
            $list[$k]['click'] = isset($adw_report_info['click']) ? $adw_report_info['click'] : '0';
            $list[$k]['click_rate'] = $list[$k]['click'] ? sprintf("%0.2f", ($list[$k]['click'] / ($list[$k]['pv'])) * 100) . '%' : '0.00%';
            $list[$k]['tpl_click_rate'] = $v['tpl_ads_click'] ? sprintf("%0.2f", ($v['tpl_ads_click'] / ($v['tpl_ads_pv'])) * 100) . '%' : '0.00%';
            $list[$k]['profit'] = $list[$k]['user_money'] > $list[$k]['total_money'] ? sprintf("%0.2f", $list[$k]['user_money'] - $list[$k]['total_money']) : '0.00';
            $list[$k]['actual_money'] = sprintf("%0.2f", $list[$k]['total_money'] * $user_name['rate']);
            $list[$k]['is_third'] = isset($adw_report_info['is_third']) ? $adw_report_info['is_third'] : '0';
            //计算总计
            $total['sum_pv'] += $list[$k]['pv'];
            $total['sum_click'] += $list[$k]['click'];
            $total['sum_tpl_ads_pv'] += $list[$k]['tpl_ads_pv'];
            $total['sum_tpl_ads_click'] += $list[$k]['tpl_ads_click'];
            $total['sum_total_money'] += $list[$k]['total_money'];
            $total['sum_user_money'] += $list[$k]['user_money'];
            $total['sum_profit'] += $list[$k]['profit'];
        }
        return ['list' => $list, 'total' => $total];
    }
}