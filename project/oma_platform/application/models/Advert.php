<?php

class Model_Advert extends Smodel
{
    protected $table = "advert";

    /**
     * 广告列表
     * */
    public function advertList($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $size = isset($condition['limit']) && $condition['limit'] > 0 ? $condition['limit'] : 10;
        $where = $this->listCondition($condition);
        $count = $this->count($where);
        $where['ORDER'] = ' create_time desc';
        $where['LIMIT'] = array(($p - 1) * $size, $size);
        $field = ['id', 'user_id', 'ad_name', 'ad_type', 'business_type', 'put_day_limit', 'put_begin_date', 'put_end_date','put_status',
            'put_time_point', 'put_pic', 'put_pic_thumb', 'put_click_url', 'put_price', 'put_onoff', 'weight', 'put_btn_title', 'create_time'
        ];
        $list = $this->select($field, $where);
        if ($list) {//数据外链、处理
            $list = $this->processList($list);
        }
        return array('list' => $list, 'count' => ceil($count / $size));
    }

    private function processList($data)
    {
        if (!$data) return $data;
        foreach ($data as &$item) {
            $item['put_begin_date'] = date('Y-m-d', $item['put_begin_date']);
            $item['put_end_date'] = date('Y-m-d', $item['put_end_date']);
            switch ($item['business_type']) {// 1：棋牌，2 金融，3 网赚，4 电商，5 其他',
                case 1;
                    $item['business_type'] = '棋牌';
                    break;
                case 2;
                    $item['business_type'] = '金融';
                    break;
                case 3;
                    $item['business_type'] = '网赚';
                    break;
                case 4;
                    $item['business_type'] = '电商';
                    break;
                default:
                    $item['business_type'] = '其他';
                    break;
            }
            switch ($item['put_status']) {// '投放状态：0 未投放，1 投放中，2 日限额已到，3 不在投放周期， 4 余额不足,5 不在投放时间段',
                case 0;
                    $item['put_status'] = '未投放';
                    break;
                case 1;
                    $item['put_status'] = '投放中';
                    break;
                case 2;
                    $item['put_status'] = '日限额已到';
                    break;
                case 3;
                    $item['put_status'] = '不在投放周期';
                    break;
                case 4;
                    $item['put_status'] = '余额不足';
                    break;
                case 5;
                    $item['put_status'] = '不在投放时间段';
                    break;
                default:
                    $item['put_status'] = '余额不足';
                    break;
            }
            if ($item['put_onoff'] == 1) {
                $item['put_onoff'] = '开启';
            } else {
                $item['put_onoff'] = '关闭';
            }
        }
        return $data;
    }


    /**
     * 广告列表条件查询
     * */
    public function listCondition($condition = [])
    {

        if (isset($condition['ad_name']) && $condition['ad_name']) {
            $where['AND']['ad_name[~]'] = $condition['ad_name'];
        }
        if (isset($condition['user_id']) && $condition['user_id']) {
            $where['AND']['user_id'] = $condition['user_id'];
        }
        if (isset($condition['ad_type']) && $condition['ad_type']) {
            $where['AND']['ad_type'] = $condition['ad_type'];
        }
        if (isset($condition['business_type']) && $condition['business_type']) {
            $where['AND']['business_type'] = $condition['business_type'];
        }
        if (isset($condition['put_day_limit']) && $condition['put_day_limit']) {
            $where['AND']['put_day_limit'] = $condition['put_day_limit'];
        }
        if (isset($condition['put_begin_date']) && $condition['put_begin_date']) {
            $where['AND']['put_begin_date[>=]'] = strtotime($condition['put_begin_date']);
        }
        if (isset($condition['put_end_date']) && $condition['put_end_date']) {
            $where['AND']['put_end_date[<=]'] = strtotime($condition['put_end_date']);
        }
        if (isset($condition['put_time_point']) && $condition['put_time_point']) {
            $where['AND']['put_time_point'] = $condition['put_time_point'];
        }
        if (isset($condition['put_price']) && $condition['put_price']) {
            $where['AND']['put_price'] = $condition['put_price'];
        }
        if (isset($condition['put_onoff']) && $condition['put_onoff']!='') {
            $where['AND']['put_onoff'] = $condition['put_onoff'];
        }
        $where['AND']['is_del[!]'] = 1;
        return $where;
    }

    /**
     * h5新建广告
     * */
    public function advertH5Create($data = [])
    {
        $info = $this->_checkeData($data, 1);
        if ($info['ret'] != 1) return $info;
        $inset = $info['data'];

        if (isset($data['id']) && $data['id']) {
            $inset['update_time'] = time();
            $re = $this->update($inset, ['id' => $data['id']]);
        } else {
            $inset['create_time'] = time();
            $re = $this->insert($inset);
        }
        if ($re) return ['ret' => 1, 'msg' => '成功'];
        return ['ret' => 0, 'msg' => '失败'];
    }

    /**
     * 广告添加条件验证
     * $type 广告类型 1 h5, 2 app拉活 , 3 js-气泡, 4 js-横幅',
     * */
    private function _checkeData($data = [], $type = false)
    {
        if (!isset($data['ad_type']) || !$data['ad_type']) {
            return ['ret' => 0, 'msg' => '请选择广告类型!'];
        }
        if (!isset($data['ad_name']) || !$data['ad_name']) {
            return ['ret' => 0, 'msg' => '广告名称必填!'];
        }
        if (!isset($data['put_begin_date']) || !$data['put_begin_date']) {
            return ['ret' => 0, 'msg' => '请填写投放开始时间!'];
        }
        if (!isset($data['put_end_date']) || !$data['put_end_date']) {
            return ['ret' => 0, 'msg' => '请填写投放结束时间!'];
        }
        if (!isset($data['put_time_point']) || !$data['put_time_point']) {
            return ['ret' => 0, 'msg' => '请选择投放时间点!'];
        }
        if (!isset($data['put_click_url']) || !$data['put_click_url']) {
            return ['ret' => 0, 'msg' => '请填写点击地址!'];
        }
        if (!isset($data['put_price']) || !$data['put_price']) {
            return ['ret' => 0, 'msg' => '请填写出价!'];
        }
        if (!isset($data['put_pic']) || !$data['put_pic']) {
            return ['ret' => 0, 'msg' => '请上传广告图片'];
        }
        if ($type == 1) {
            if (!isset($data['put_day_limit']) || !$data['put_day_limit']) {
                return ['ret' => 0, 'msg' => '请填写每日限额!'];
            }
            if (!isset($data['put_pic_thumb']) || !$data['put_pic_thumb']) {
                return ['ret' => 0, 'msg' => '请上传附图!'];
            }
        }
        $re = [
            'user_id' => 1,
            'ad_name' => $data['ad_name'],//广告名称
            'ad_type' => isset($data['ad_type']) ? $data['ad_type'] : 0,//广告类型：1 h5, 2 app拉活 , 3 js-气泡, 4 js-横幅',
            'business_type' => $data['business_type'],//广告类型:  1：棋牌，2 金融，3 网赚，4 电商，5 其他
            'put_day_limit' => isset($data['put_day_limit']) ? $data['put_day_limit'] : 0.00,//日限额
            'put_begin_date' => strtotime($data['put_begin_date']),//投放开始时间
            'put_end_date' => strtotime($data['put_end_date']),//投放结束时间
            'put_time_point' => isset($data['put_time_point']) ? $data['put_time_point'] : '',//投放时间点 (1{24}|){7}\r\n24小时*7天 1代表选择 0 不选',
            'put_pic' => isset($data['put_pic']) ? $data['put_pic'] : '',//图片地址
            'put_pic_thumb' => isset($data['put_pic_thumb']) ? $data['put_pic_thumb'] : '',//投放图片附图
            'put_click_url' => isset($data['put_click_url']) ? $data['put_click_url'] : '',//投放点击地址
            'put_ios_download_url' => isset($data['put_ios_download_url']) ? $data['put_ios_download_url'] : '',//ios下载地址
            'put_android_download_url' => isset($data['put_android_download_url']) ? $data['put_android_download_url'] : '',//安卓下载地址
            'put_price' => isset($data['put_price']) ? $data['put_price'] : 0.00,//出价
            'put_btn_title' => isset($data['put_btn_title']) ? $data['put_btn_title'] : '',//中奖广告按钮显示提示语
            'adinfo_expire_date' => isset($data['adinfo_expire_date']) ? $data['adinfo_expire_date'] : '', //有效期
            'app_url' => isset($data['app_url']) ? $data['app_url'] : '',//拉货地址
            'weight' => isset($data['weight']) ? $data['weight'] : 0.00, //权重
            'audit_status' => 1, //广告默认审核通过
        ];
        return ['ret' => 1, 'msg' => '', 'data' => $re];
    }

    public function advertDel($condition = [])
    {
        if (!isset($condition['id']) && !isset($condition['status'])) {
            return ['ret' => 0, 'msg' => '参数错误'];
        }
        $id = $condition['id'];
        $status = $condition['status'];
        $re = $this->update(['is_del' => $status], ['id' => $id]);
        return ['ret' => $re, 'msg' => ''];
    }


    /**
     * js新建
     * */
    public function advertJsCreate($data = [])
    {
        $info = $this->_checkeData($data);
        if ($info['ret'] != 1) return $info;
        $re = $this->inset($info['data']);
        return ['ret' => $re, 'msg' => ''];
    }


}