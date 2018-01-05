<?php

class Model_ReportAdvertPosition extends Smodel
{

    protected $table = "report_advert_position";

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
        $where['GROUP'] = ' adw_id';
        $count = count($this->selects('1', $where));

        $where['ORDER'] = ' id desc';
        $where['LIMIT'] = array(($p - 1) * $r, $r);
        $field = ['adw_id, type, sum(uv) as pv,sum(total_money) as user_money'];
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
        $where = [];
        //客户id
        if (isset($condition['user_id']) && $condition['user_id']) {
            $where['AND']['user_id'] = $condition['user_id'];
        }

        //广告位id和广告位名称
        if ((isset($condition['adw_id']) && $condition['adw_id']) || (isset($condition['name']) && $condition['name'])) {

            if (isset($condition['adw_id']) && $condition['adw_id']) {
                $adw_id_arr[] = $condition['adw_id'];
            }

            if (isset($condition['name']) && $condition['name']) {
                $model_advert_position = new Model_AdvertPosition();
                $adw_ids = $model_advert_position->select('id', ['AND' => ['name[~]' => $condition['name']]]);
            }

            if (isset($adw_id_arr) && isset($adw_ids)) {
                $adw_id = array_intersect($adw_id_arr, $adw_ids);
                if (empty($adw_id)) {
                    $adw_id = -1;
                }
            } else if (isset($adw_id_arr)) {
                $adw_id = $adw_id_arr;
            } else if (isset($adw_ids) && $adw_ids) {
                $adw_id = $adw_ids;
            } else {
                $adw_id = -1;
            }

            $where['AND']['adw_id'] = $adw_id;
        }
        //投放类型
        if (isset($condition['type']) && $condition['type']) {
            $where['AND']['type'] = $condition['type'];
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

                //点击率
//                $click_rate = $v['pv'] > 0 ? round(($v['click'] / $v['pv']) * 100, 2) : '0.00';
//                $list[$k]['click_rate'] = $click_rate . "%";
            }
        }
        return $list;
    }

    /*************************后台*************************/

    /**
     * @param array $condition
     * @return array
     * 广告位汇总表
     */
    public function getList($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $size = isset($condition['limit']) ? $condition['limit'] > 0 ? $condition['limit'] : 10 : 10;
        $where = $this->listCondition($condition);
        $where['GROUP'] = ' adw_id ';
        $count = count($this->selects('1', $where));
        $where['LIMIT'] = array(($p - 1) * $size, $size);
        $where['ORDER'] = ' date desc, id desc ';
        $field = ['user_id, adw_id, type, sum(uv) as uv, sum(ip) as ip, sum(pv) as pv, sum(click) as click, sum(total_money) as total_money, sum(user_money) as user_money'];
        $list = $this->selects($field, $where);
        $total_sum = [
            'sum_uv' => 0,
            'sum_ip' => 0,
            'sum_pv' => 0,
            'sum_click' => 0,
            'sum_total_money' => 0,
            'sum_user_money' => 0,
            'sum_profit' => 0,
        ];
        if (!empty($list)) {
            $all = $this->externalConnection($list, $total_sum);
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
     * 广告位总览链接外表
     */
    public function externalConnection($list, $total)
    {
        if (empty($list)) return $list;
        $user = new Model_User();
        $advertPosition = new Model_AdvertPosition();
        $_c = Yaf_Application::app()->getConfig()->toArray();
        $type = $_c['base_info']['advert']['type'];
        foreach ($list as $k => $v) {
            $where_user['AND']['id'] = $v['user_id'];
            $user_name = $user->get(['user_name', 'rate'], $where_user);
            $list[$k]['user_name'] = isset($user_name) ? $user_name['user_name'] : '暂无';
            $where_adv_position['AND']['id'] = $v['adw_id'];
            $adw_name = $advertPosition->get('name', $where_adv_position);
            $list[$k]['adw_name'] = isset($adw_name) ? $adw_name : '暂无';
            $list[$k]['click_rate'] = $v['click'] ? sprintf("%0.2f", ($v['click'] / ($v['pv'])) * 100) . '%' : '0.00%';
            //投放类型名称
            $type_name = array_key_exists($v['type'], $type) ? $type[$v['type']] : '未知';
            $list[$k]['type'] = $type_name;
            $list[$k]['profit'] = $v['user_money'] > $v['total_money'] ? sprintf("%0.2f", $v['user_money'] - $v['total_money']) : '0.00';
            //计算总计
            $total['sum_uv'] += $v['uv'];
            $total['sum_ip'] += $v['ip'];
            $total['sum_pv'] += $v['pv'];
            $total['sum_click'] += $v['click'];
            $total['sum_total_money'] += $v['total_money'];
            $total['sum_user_money'] += $list[$k]['user_money'];
            $total['sum_profit'] += $list[$k]['profit'];
        }
        return ['list' => $list, 'total' => $total];
    }

    /**
     * @param $data
     * @return bool|int
     * 修改用户收益
     */
    public function updateIncome($data)
    {
        $now = time();
        $model_detail_h5 = new Model_ReportAdvertPositionH5();
        $model_user = new Model_User();
        $detail_where = [
            'AND' => [
                'id' => $data['id'],
            ]
        ];
        $detail_info = $model_detail_h5->get('*', $detail_where);
        $update_data = [
            'update_time' => $now,
            'user_money' => $data['money'],
        ];
        if (!empty($detail_info)) {
            $rate = $model_user->get('rate', ['id' => $detail_info['user_id']]);
            $update_data['total_money'] = sprintf("%0.2f", $data['money'] * $rate);
            $where = [
                'AND' => [
                    'adw_id' => $detail_info['adw_id'],
                    'user_id' => $detail_info['user_id'],
                    'date' => $detail_info['date'],
                ]
            ];
            $res = $this->update($update_data, $where);
            if ($res) {
                $return = ['ret' => 0, 'msg' => '修改成功'];
            } else {
                $return = ['ret' => 1, 'msg' => '参数错误'];
            }
        } else {
            $return = ['ret' => 1, 'msg' => '获取数据失败'];
        }
        return $return;
    }

    /**
     * @param $data
     * @return array
     * 检查需改用户收益参数合法性
     */
    public function checkIncomeData($data)
    {
        if (!isset($data['id']) || !trim($data['id'])) return ['ret' => 0, 'msg' => '参数错误'];
        if (!isset($data['money']) || trim($data['money']) == '') return ['ret' => 0, 'msg' => '请填写用户收益'];
        return ['ret' => 1, 'msg' => '验证通过'];
    }

}