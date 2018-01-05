<?php

class Model_User extends Smodel
{
    protected $table = "user";

    /**
     * 网站主列表
     * */
    public function listData($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $size = isset($condition['limit']) ? $condition['limit'] > 0 ? $condition['limit'] : 10 : 10;
        $where = $this->listCondition($condition);
        $count = $this->count($where);
        $where['LIMIT'] = array(($p - 1) * $size, $size);
        $where['ORDER'] = ' create_time desc ';
        $field = ['id', 'user_name', 'phone', 'email', 'qq', 'fc_type', 'fc_has_invoice', 'fc_bank', 'fc_account', 'fc_payee', 'status', 'rate', 'login_ip', 'create_time'];
        $list = $this->select($field, $where);
        return ['list' => $list, 'count' => ceil($count / $size)];
    }


    /**
     * 编辑\添加账号
     * */
    public function createUser($data = [])
    {
        $info = $this->checkCreate($data);
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
     * 列表查询筛选
     * */
    private function listCondition($condition = [])
    {
        $where = [];
        if (isset($condition['user_name']) && $condition['user_name']) {
            $where['AND']['user_name[~]'] = $condition['user_name'];
        }
        if (isset($condition['phone']) && $condition['phone']) {
            $where['AND']['phone'] = $condition['phone'];
        }
        if (isset($condition['email']) && $condition['email']) {
            $where['AND']['email'] = $condition['email'];
        }
        if (isset($condition['qq']) && $condition['qq']) {
            $where['AND']['qq'] = $condition['qq'];
        }
        if (isset($condition['fc_type']) && $condition['fc_type']) {
            $where['AND']['fc_type[~]'] = $condition['fc_type'];
        }
        if (isset($condition['fc_has_invoice']) && $condition['fc_has_invoice'] != '') {
            $where['AND']['fc_has_invoice'] = $condition['fc_has_invoice'];
        }
        if (isset($condition['fc_bank']) && $condition['fc_bank']) {
            $where['AND']['fc_bank'] = $condition['fc_bank'];
        }
        if (isset($condition['fc_account']) && $condition['fc_account']) {
            $where['AND']['fc_account'] = $condition['fc_account'];
        }
        if (isset($condition['fc_payee']) && $condition['fc_payee']) {
            $where['AND']['fc_payee'] = $condition['fc_payee'];
        }
        if (isset($condition['status']) && $condition['status'] != '') {
            $where['AND']['status'] = $condition['status'];
        }
        if (isset($condition['status']) && $condition['status'] != '') {
            $where['AND']['status'] = $condition['status'];
        }
        return $where;
    }

    /**
     * 验证用户登录
     * @param $data
     * @return mixed
     */
    public function loginCheck($data)
    {
        if (!isset($data['user_name']) || !$data['user_name']) {
            return ['ret' => 0, 'msg' => '请输入用户名!'];
        }
        if (!isset($data['password']) || !$data['password']) {
            return ['ret' => 0, 'msg' => '请输入密码!'];
        }

        $user_name = $data['user_name'];
        $password = $data['password'];

        $user = $this->get("*", ['AND' => ['user_name' => $user_name]]);

        if (!$user) {
            return ['ret' => 0, 'msg' => '帐号不存在,请联系管理员!'];
        }

        switch ($user['status']) {
            case 1 :
                return ['ret' => 0, 'msg' => '您的账号已冻结,请联系管理员!'];
                break;
            case 2 :
                return ['ret' => 0, 'msg' => '您的账号不存在,请联系管理员!'];
                break;
            default:
                $salt = $user['salt'];
                $old_password = $user['password'];
                if ($old_password == md5($password . "_" . $salt)) {
                    return ['ret' => 1, 'data' => $user];
                } else {
                    return ['ret' => 0, 'msg' => '密码输入错误!'];
                }
                break;
        }
    }

    /**
     * 创建用用户-数据验证
     * @param $data
     * @return array
     * */
    private function checkCreate($data)
    {
        if (!isset($data['user_name']) || !$data['user_name']) {
            return ['ret' => 0, 'msg' => '用户名不能为空'];
        }
        if (!isset($data['password']) || !$data['password']) {
            return ['ret' => 0, 'msg' => '密码不能为空'];
        }
        if (strlen($data['password']) < 7) {
            return ['ret' => 0, 'msg' => '密码8位以上'];
        }

        if(isset($data['id']) && $data['id']){
            $ret = $this->get('*',['AND'=>['id[!]'=>$data['id'],'OR' => ['user_name' => $data['user_name'], 'phone' => $data['phone']]]]);
        }else{
            $ret = $this->get('*',['OR' => ['user_name' => $data['user_name'], 'phone' => $data['phone']]]);
        }
        if ($ret) return ['ret' => 0, 'msg' => '用户名或手机号已存在'];

        $salt = mt_rand(1000, 9999);
        $password = md5($data['password'] . "_" . $salt);
        $info = [
            'user_name' => $data['user_name'],
            'password' => $password,
            'salt' => $salt,
        ];

        if (isset($data['phone']) && $data['phone']) {
            $info['phone'] = $data['phone'];
        }
        if (isset($data['email']) && $data['email']) {
            $info['email'] = $data['email'];
        }
        if (isset($data['qq']) && $data['qq']) {
            $info['qq'] = $data['qq'];
        }
        if (isset($data['fc_type']) && $data['fc_type']) {
            $info['fc_type'] = $data['fc_type'];
        }
        if (isset($data['fc_has_invoice']) && $data['fc_has_invoice']) {
            $info['fc_has_invoice'] = $data['fc_has_invoice'];
        }
        if (isset($data['fc_bank']) && $data['fc_bank']) {
            $info['fc_bank'] = $data['fc_bank'];
        }
        if (isset($data['fc_account']) && $data['fc_account']) {
            $info['fc_account'] = $data['fc_account'];
        }
        if (isset($data['fc_payee']) && $data['fc_payee']) {
            $info['fc_payee'] = $data['fc_payee'];
        }
        if (isset($data['status']) && $data['status']) {
            $info['status'] = $data['status'];
        }
        if (isset($data['money']) && $data['money']) {
            $info['money'] = $data['money'];
        }
        if (isset($data['rate']) && $data['rate']) {
            $info['rate'] = $data['rate'];
        }
        return ['ret' => 1, 'data' => $info];
    }

    /**
     * 验证编辑用户-数据是否正确
     * @param $data
     * @return array
     */
    public function checkEditData($data)
    {
        $_c = Yaf_Application::app()->getConfig()->toArray();
        $base_info = $_c['base_info'];

        //详细信息
        if (!isset($data['email']) || !$data['email']) {
            return ['ret' => 0, 'msg' => '请输入电子邮箱!'];
        }
        if (!isset($data['qq']) || !$data['qq']) {
            return ['ret' => 0, 'msg' => '请输入腾讯QQ!'];
        }
        if (!isset($data['phone']) || !$data['phone']) {
            return ['ret' => 0, 'msg' => '请输入手机号码!'];
        }

        //更改密码
        if (((isset($data['new_password']) && $data['new_password'])
                || (isset($data['new_password_again']) && $data['new_password_again']))
            && ($data['new_password'] != $data['new_password_again'])
        ) {
            return ['ret' => 0, 'msg' => '新密码输入不一致!'];
        }

        //财务信息
        if (!isset($data['fc_type']) || !$base_info['user']['fc_type'][$data['fc_type']]) {
            return ['ret' => 0, 'msg' => '请选择财务对象!'];
        }
        if (!isset($data['fc_has_invoice']) || !$base_info['user']['fc_has_invoice'][$data['fc_has_invoice']]) {
            return ['ret' => 0, 'msg' => '请选择有无发票!'];
        }
        if (!isset($data['fc_bank']) || !$data['fc_bank']) {
            return ['ret' => 0, 'msg' => '请选择收款银行!'];
        }
        if (!isset($data['fc_account']) || !$data['fc_account']) {
            return ['ret' => 0, 'msg' => '请输入银行帐号!'];
        }
        if (!isset($data['fc_payee']) || !$data['fc_payee']) {
            return ['ret' => 0, 'msg' => '请输入收款人!'];
        }
        return ['ret' => 1];
    }


    /**
     * 编辑用户信息
     * @param $data
     * @param $id
     * @return bool
     */
    public function editUser($data, $id)
    {
        $edit_data = [
            'email' => $data['email'],
            'qq' => $data['qq'],
            'phone' => $data['phone'],
            'fc_type' => $data['fc_type'],
            'fc_has_invoice' => $data['fc_has_invoice'],
            'fc_bank' => $data['fc_bank'],
            'fc_account' => $data['fc_account'],
            'fc_payee' => $data['fc_payee'],
            'update_time' => time(),
        ];

        if(isset($data['new_password']) && $data['new_password']) {
            $salt = mt_rand(1000, 9999);
            $password = md5($data['new_password'] . "_" . $salt);
            $edit_data['salt'] = $salt;
            $edit_data['password'] = $password;
        }

        $edit_result = $this->update($edit_data, ['AND' => ['id' => $id]]);
        if ($edit_result) {
            return true;
        } else {
            return false;
        }
    }


    /**
     * 后台用户编辑
     * @param $data
     * @return array
     * */
    public function editUserBackstage($data = [])
    {
        if (!isset($data['id']) || !$data['id']) {
            return ['ret' => 0, 'msg' => '参数错误'];
        }
        $id = $data['id'];
        $re = $this->checkUserBackstage();
        if ($re['ret'] != 1) return $re;
        $this->get();
        $salt = mt_rand(1000, 9999);
        $password = md5('12345678' . "_" . $salt);
        $info = [
            'user_name' => $data['user_name'],
            'password' => $password,
            'salt' => $salt,
            'phone' => $data['phone'],
            'email' => $data['email'],
            'qq' => $data['qq'],
        ];

        $re = $this->update($info, ['id' => $id]);
        if ($re) {
            $msg = '编辑成功';
        } else {
            $msg = '编辑失败';
        }
        return ['ret' => $re, 'msg' => $msg];
    }

    private function checkUserBackstage($data)
    {
        if (!isset($data['user_name']) && !$data['user_name']) {
            return ['ret' => 0, 'msg' => '用户名不能为空'];
        }
        if (!isset($data['password']) && !$data['password']) {
            return ['ret' => 0, 'msg' => '密码不能为空'];
        }

        if (strlen($data['password']) < 8) {
            return ['ret' => 0, 'msg' => '密码长度不能地狱８位'];
        }
        if (!isset($data['phone']) && !$data['phone']) {
            return ['ret' => 0, 'msg' => '手机号码不能为空'];
        }
        if (!isset($data['email']) && !$data['email']) {
            return ['ret' => 0, 'msg' => '邮箱不能为空'];
        }


        return ['ret' => 1];

    }

    /**
     * 冻结、解冻、删除
     * @param $data
     * @return array
     * */
    public function frozenUser($data)
    {
        if (!isset($data['id']) || !$data['id'] || !isset($data['status'])) {
            return ['ret' => 0, 'msg' => '参数错误'];
        }
        $id = $data['id'];
        $status = $data['status'];
        $re = $this->update(['status' => $status], ['id' => $id]);
        if ($re) {
            $msg = '操作成功';
        } else {
            $msg = '操作失败';
        }
        return ['ret' => $re, 'msg' => $msg];
    }

    /**
     *  重置密码
     * @param $data
     * @return array
     * */
    public function resetPsw($data)
    {
        if (!isset($data['id']) && !$data['id']) {
            return ['ret' => 0, 'msg' => '参数错误'];
        }
        $id = $data['id'];
        $salt = mt_rand(1000, 9999);
        $password = md5('12345678' . "_" . $salt);
        $info = [
            'salt' => $salt,
            'password' => $password,
        ];
        $re = $this->update($info, ['id' => $id]);
        if ($re) {
            return ['ret' => $re, 'msg' => '重置成功'];
        }
        return ['ret' => 0, 'msg' => '重置失败'];
    }


    /**********************后台**********************/

    /**
     * 财务信息
     * @param array $condition
     * @return array
     */
    public function getList($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $r = isset($condition['limit']) && $condition['limit'] > 0 ? $condition['limit'] : 10;
        $where = $this->processCondition($condition);
        $count = $this->count($where);
        $where['ORDER'] = ' id desc';
        $where['LIMIT'] = array(($p - 1) * $r, $r);
        $field = ['id', 'user_name', 'fc_type', 'fc_has_invoice', 'fc_bank', 'fc_account', 'fc_payee', 'update_time'];
        $list = $this->select($field, $where);
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
        //用户名
        if (isset($condition['user_name']) && $condition['user_name']) {
            $where['AND']['user_name[~]'] = $condition['user_name'];
        }

        //财务对象
        if (isset($condition['fc_type']) && $condition['fc_type'] != -1) {
            $where['AND']['fc_type'] = $condition['fc_type'];
        }

        //发票
        if (isset($condition['fc_has_invoice']) && $condition['fc_has_invoice'] != -1) {
            $where['AND']['fc_has_invoice'] = $condition['fc_has_invoice'];
        }

        return $where;
    }

    public function processList($list = [])
    {
        $_c = Yaf_Application::app()->getConfig()->toArray();
        $base_info = $_c['base_info'];

        if (empty($list)) {
            return [];
        }

        foreach ($list as $k => $v) {

            //财务对象
            if (isset($base_info['user']['fc_type'][$v['fc_type']]) && $base_info['user']['fc_type'][$v['fc_type']]) {
                $fc_type_name = $base_info['user']['fc_type'][$v['fc_type']];
            } else {
                $fc_type_name = '暂无';
            }
            $list[$k]['fc_type_name'] = $fc_type_name;

            //是否有发票
            if (isset($base_info['user']['fc_has_invoice'][$v['fc_has_invoice']]) && $base_info['user']['fc_has_invoice'][$v['fc_has_invoice']]) {
                $fc_has_invoice_name = $base_info['user']['fc_has_invoice'][$v['fc_has_invoice']];
            } else {
                $fc_has_invoice_name = '暂无';
            }
            $list[$k]['fc_has_invoice_name'] = $fc_has_invoice_name;

            //修改时间
            $list[$k]['update_time_name'] = $v['update_time'] > 0 ? date("Y-m-d H:i:s", $v['update_time']) : '暂无';
        }
        return $list;
    }


    /**
     * 财务管理
     * @param array $condition
     * @return array
     */
    public function financeManage($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $r = isset($condition['limit']) && $condition['limit'] > 0 ? $condition['limit'] : 10;
        $where = $this->processFinanceManageCondition($condition);
        $count = $this->count($where);
        $where['ORDER'] = ' id desc';
        $where['LIMIT'] = array(($p - 1) * $r, $r);
        $field = ['id', 'user_name', 'rate'];
        $list = $this->select($field, $where);
        $list = $this->processFinanceManageList($list);
        return array('list' => $list, 'count' => ceil($count / $r));
    }

    /**
     * 条件删选
     * @param $condition
     * @return array
     */
    public function processFinanceManageCondition($condition = [])
    {
        $where = [];
        //用户名
        if (isset($condition['user_name']) && $condition['user_name']) {
            $where['AND']['user_name[~]'] = $condition['user_name'];
        }

        //财务对象
        if (isset($condition['fc_type']) && $condition['fc_type'] != -1) {
            $where['AND']['fc_type'] = $condition['fc_type'];
        }

        //发票
        if (isset($condition['fc_has_invoice']) && $condition['fc_has_invoice'] != -1) {
            $where['AND']['fc_has_invoice'] = $condition['fc_has_invoice'];
        }
        return $where;
    }

    public function processFinanceManageList($list = [])
    {
        if (empty($list)) {
            return [];
        }

        $model_pay = new Model_Pay();
        foreach ($list as $k => $v) {

            //总收入
            $w = [
                'AND' => [
                    'user_id' => $v['id'],
                ],
                'ORDER' => ' date desc',
            ];
            $total_money = $model_pay->get('total_money', $w);
            $list[$k]['total_money'] = isset($total_money) && $total_money ? $total_money : '0';

            //打款次数
            $w = [
                'AND' => [
                    'user_id' => $v['id'],
                    'status' => 1,
                ]
            ];
            $pay_times = $model_pay->count($w);
            $list[$k]['pay_times'] = $pay_times;

            //已结算金额

            $w = [
                'AND' => [
                    'user_id' => $v['id'],
                    'status' => 1,
                ],
                'GROUP' => ' user_id'
            ];
            $total_pay_money = $model_pay->selects('sum(pay_money) as total_pay_money', $w);
            if (empty($total_pay_money)) {
                $total_pay_money = 0;
            } else {
                $total_pay_money = $total_pay_money['0'];
            }
            $list[$k]['total_pay_money'] = $total_pay_money;

            //未结算金额
            $w = [
                'AND' => [
                    'user_id' => $v['id'],
                    'status' => 0,
                ],
                'GROUP' => ' user_id'
            ];
            $total_not_pay_money = $model_pay->selects('sum(pay_money) as total_pay_money', $w);
            if (empty($total_not_pay_money)) {
                $total_not_pay_money = 0;
            } else {
                $total_not_pay_money = $total_not_pay_money['0'];
            }

            $list[$k]['total_not_pay_money'] = $total_not_pay_money;

        }
        return $list;
    }

}