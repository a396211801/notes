<?php

class Model_Pay extends Smodel
{

    protected $table = "pay";

    /**
     * 结算报表
     * @param array $condition
     * @return array
     */
    public function getList($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $r = isset($condition['limit']) && $condition['limit'] > 0 ? $condition['limit'] : 10;
        $where = $this->processCondition($condition);
        $count = $this->count($where);
        $where['ORDER'] = ' date desc';
        $where['LIMIT'] = array(($p - 1) * $r, $r);
        $list = $this->select('*', $where);
        $list = $this->processList($list);
        return array('list' => $list, 'count' => ceil($count / $r));
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
        return $where;
    }

    public function processList($list = [])
    {
        if (empty($list)) {
            return [];
        }

        $_c = Yaf_Application::app()->getConfig()->toArray();
        $base_info = $_c['base_info'];

        $model_user = new Model_User();
        foreach ($list as $k => $v) {

            //用户名
            $user_name = $model_user->get('user_name', ['AND' => ['id' => $v['user_id']]]);
            $list[$k]['user_name'] = isset($user_name) && $user_name ? $user_name : '未知';

            //是否有发票
            if (isset($base_info['pay']['has_invoice'][$v['has_invoice']]) && $base_info['pay']['has_invoice'][$v['has_invoice']]) {
                $has_invoice_name = $base_info['pay']['has_invoice'][$v['has_invoice']];
            } else {
                $has_invoice_name = '暂无';
            }
            $list[$k]['has_invoice_name'] = $has_invoice_name;

            //状态
            if (isset($base_info['pay']['status'][$v['status']]) && $base_info['pay']['status'][$v['status']]) {
                $status_name = $base_info['pay']['status'][$v['status']];
            } else {
                $status_name = '暂无';
            }
            $list[$k]['status_name'] = $status_name;

        }
        return $list;
    }

}