<?php

/**
 * Created by IntelliJ IDEA.
 * User: zhanghuang
 * Date: 17-12-13
 * Time: 下午8:13
 * 模板报表model
 */
class Model_ReportTpl extends Smodel
{
    protected $table = "report_tpl";


    /**
     * @param array $condition
     * @return array
     * 模板汇总表
     */
    public function getList($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $size = isset($condition['limit']) ? $condition['limit'] > 0 ? $condition['limit'] : 10 : 10;
        $where = $this->listCondition($condition);
        $where['GROUP'] = ' tpl_id ';
        $count = count($this->selects('1', $where));
        $where['LIMIT'] = array(($p - 1) * $size, $size);
        $where['ORDER'] = ' id desc ';
        $field = ['user_id,adw_id,tpl_id,sum(uv) as uv,sum(ip) as ip,sum(pv) as pv,sum(o_ck_1) as o_ck_1,sum(o_ck_2) as o_ck_2,sum(o_ck_3) as o_ck_3,sum(o_ck_4) as o_ck_4,sum(o_ck_5) as o_ck_5,sum(o_ck_6) as o_ck_6,sum(o_ck_7) as o_ck_7,sum(o_ck_8) as o_ck_8,sum(o_pv_1) as o_pv_1'];
        $list = $this->selects($field, $where);
        if (!empty($list)) {
            $list = $this->externalConnection($list);
        }
        return array('list' => $list, 'count' => ceil($count / $size));
    }

    /**
     * @param array $condition
     * @return array
     * 模板详细表
     */
    public function getDetailList($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $size = isset($condition['limit']) ? $condition['limit'] > 0 ? $condition['limit'] : 10 : 10;
        $where = $this->detailCondition($condition);
        $count = $this->count($where);
        $where['LIMIT'] = array(($p - 1) * $size, $size);
        $where['ORDER'] = 'date desc,id desc ';
        $field = ['user_id,adw_id,tpl_id,uv,ip,pv,o_ck_1,o_ck_2,o_ck_3,o_ck_4,o_ck_5,o_ck_6,o_ck_7,o_ck_8,o_pv_1,date'];
        $list = $this->selects($field, $where);
        if (!empty($list)) {
            $list = $this->externalDetail($list);
        }
        return array('list' => $list, 'count' => ceil($count / $size));
    }

    /**
     * 获取最终条件
     */
    public function listCondition($condition = array())
    {
        $where = array();
        $model_tpl = new Model_Tpl();
        //模板名称
        if (isset($condition['name']) && $condition['name']) {
            $tpl_where['AND']['name[~]'] = $condition['name'];
            $tpl_ids = $model_tpl->select('id', $tpl_where);
            if (!empty($tpl_ids)) {
                $where['AND']['tpl_id'] = $tpl_ids;
            } else {
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
        return $where;
    }

    /**
     * 获取最终条件
     */
    public function detailCondition($condition = array())
    {
        $where = array();
        if (isset($condition['tpl_id']) && trim($condition['tpl_id'])) {
            $where['AND']['tpl_id'] = $condition['tpl_id'];
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
     * 链接外表
     */
    public function externalConnection($list)
    {
        if ($list) {
            $user = new Model_User();
            $advertPosition = new Model_AdvertPosition();
            $model_tpl = new Model_Tpl();
            $model_tpltype = new Model_TplType();
            foreach ($list as $k => $v) {
                $where_user['AND']['id'] = $v['user_id'];
                $user_name = $user->get('user_name', $where_user);
                $list[$k]['user_name'] = isset($user_name) ? $user_name : '暂无';
                $where_adv_position['AND']['id'] = $v['adw_id'];
                $adw_name = $advertPosition->get('name', $where_adv_position);
                $list[$k]['adw_name'] = isset($adw_name) ? $adw_name : '暂无';

                $where_tpl['AND']['id'] = $v['tpl_id'];
                $tpl_name = $model_tpl->get(['name','type_id'], $where_tpl);
                $list[$k]['tpl_name'] = isset($tpl_name['name']) ? $tpl_name['name'] : '暂无';

                $where_tpltype['AND']['id'] = $tpl_name['type_id'];
                $tpl_type_name = $model_tpltype->get('name', $where_tpltype);
                $list[$k]['tpl_type_name'] = isset($tpl_type_name) ? $tpl_type_name : '暂无';
                $list[$k]['avg_click'] = $v['o_ck_1'] ? sprintf("%0.2f", ($v['o_ck_1'] / ($v['uv']))) : '0.00';

            }
        }
        return $list;
    }

    /**
     * 模板详表链接外表
     */
    public function externalDetail($list)
    {
        if ($list) {
            $user = new Model_User();
            $advertPosition = new Model_AdvertPosition();
            $model_tpl = new Model_Tpl();
            $model_tpltype = new Model_TplType();
            foreach ($list as $k => $v) {
                $where_user['AND']['id'] = $v['user_id'];
                $user_name = $user->get('user_name', $where_user);
                $list[$k]['user_name'] = isset($user_name) ? $user_name : '暂无';
                $where_adv_position['AND']['id'] = $v['adw_id'];
                $adw_name = $advertPosition->get('name', $where_adv_position);
                $list[$k]['adw_name'] = isset($adw_name) ? $adw_name : '暂无';

                $where_tpl['AND']['id'] = $v['tpl_id'];
                $tpl_name = $model_tpl->get(['name','type_id'], $where_tpl);
                $list[$k]['tpl_name'] = isset($tpl_name['name']) ? $tpl_name['name'] : '暂无';

                $where_tpltype['AND']['id'] = $tpl_name['type_id'];
                $tpl_type_name = $model_tpltype->get('name', $where_tpltype);
                $list[$k]['tpl_type_name'] = isset($tpl_type_name) ? $tpl_type_name : '暂无';
                $list[$k]['avg_click'] = $v['o_ck_1'] ? sprintf("%0.2f", ($v['o_ck_1'] / ($v['uv']))) : '0.00';

            }
        }
        return $list;
    }

}