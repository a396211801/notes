<?php

/**
 * Created by IntelliJ IDEA.
 * User: lidc
 * Date: 17-12-22
 * Time: 下午2:16
 */
class Model_About extends Smodel
{
    protected $table = "about";


    public function aboutList($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $size = isset($condition['limit']) && $condition['limit'] > 0 ? $condition['limit'] : 10;
        $where = [];
        if (isset($condition['contact_status']) && $condition['contact_status']) {
            $where['AND']['contact_status'] = $condition['contact_status'];
        }
        if (isset($condition['about_name']) && $condition['about_name']) {
            $where['AND']['about_name[~]'] = $condition['about_name'];
        }
        if (isset($condition['company_name']) && $condition['company_name']) {
            $where['AND']['company_name[~]'] = $condition['company_name'];
        }
        $count = $this->count($where);
        $where['ORDER'] = ' create_time desc';
        $where['LIMIT'] = array(($p - 1) * $size, $size);
        $list = $this->select('*', $where);
        return array('list' => $list, 'count' => ceil($count / $size));
    }

    public function aboutAdd($condition = [])
    {
        if (!isset($condition['about_name']) || !$condition['about_name']) {
            return ['ret' => 0, 'msg' => '姓名不能为空!'];
        }
        if (!isset($condition['company_name']) || !$condition['company_name']) {
            return ['ret' => 0, 'msg' => '公司名称不能为空!'];
        }
        if (!isset($condition['about_phone']) || !$condition['about_phone']) {
            return ['ret' => 0, 'msg' => '电话不能为空!'];
        }
        $data = [
            'about_name' => $condition['about_name'],
            'company_name' => $condition['company_name'],
            'about_phone' => $condition['about_phone'],
            'create_time' => time(),
        ];
        $re = $this->insert($data);
        if ($re) return ['ret' => 1, 'msg' => ''];
        return ['ret' => 0, 'msg' => '预约失败'];
    }


    public function aboutEdit($condition = [])
    {
        if (!isset($condition['id']) || !$condition['id']) {
            return ['ret' => 0, 'msg' => '参数错误'];
        }
        $id = $condition['id'];
        $re = $this->update(['contact_status' => 2], ['id' => $id]);
        return ['ret' => $re, 'msg' => ''];
    }


}