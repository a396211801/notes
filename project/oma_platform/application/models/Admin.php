<?php

class Model_Admin extends Smodel
{

    protected $table = "admin";

    /**
     * 验证后台登录
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

        $admin = $this->get("*", ['AND' => ['user_name' => $user_name]]);

        if ($admin) {
            if ($admin['status'] == 1) {
                return ['ret' => 0, 'msg' => '您的账号已冻结,请联系管理员!'];
            }
            if ($admin['status'] == 2) {
                return ['ret' => 0, 'msg' => '您的账号不存在,请联系管理员!'];
            }
            $salt = $admin['salt'];
            $old_password = $admin['password'];
            if ($old_password == md5($password . "_" . $salt)) {
                return ['ret' => 1, 'data' => $admin];

            } else {
                return ['ret' => 0, 'msg' => '密码输入错误!'];
            }

        } else {
            return ['ret' => 0, 'msg' => '帐号不存在,请联系管理员!'];
        }
    }

    /**
     * 后台帐号列表
     * @param array $condition
     * @return array
     */
    public function getList($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $r = isset($condition['limit']) && $condition['limit'] > 0 ? $condition['limit'] : 15;
        $where['AND']['status[!]'] = 2;
        $count = $this->count($where);
        $where['ORDER'] = ' id desc';
        $where['LIMIT'] = array(($p - 1) * $r, $r);
        $field = ['id', 'user_name', 'real_name', 'status', 'group_id', 'create_time', 'login_time'];
        $list = $this->select($field, $where);
        $list = $this->processList($list);
        return array('list' => $list, 'count' => ceil($count / $r));
    }

    public function processList($list = [])
    {
        if(empty($list)) {
            return [];
        }

        $_c = Yaf_Application::app()->getConfig()->toArray();
        $base_info = $_c['base_info'];

        $model_role_group = new Model_RoleGroup();
        $role_group = $model_role_group->select('*',[]);
        $role_group = fn_get_key_field($role_group,'id');

        foreach($list as $k=>$v) {

            //权限组
            $role_group_name = isset($role_group[$v['group_id']]) ? $role_group[$v['group_id']]['name'] : '未知';
            $list[$k]['role_group_name'] = $role_group_name;

            //状态
            $status_name = isset($base_info['admin']['status']) ? $base_info['admin']['status'][$v['status']] : '未知';
            $list[$k]['status_name'] = $status_name;

        }


        return $list;
    }




    /**
     * 验证新建后台帐号-数据是否正确
     * @param $data
     * @return array
     */
    public function checkCreateData($data)
    {
        if (!isset($data['user_name']) || !$data['user_name']) {
            return ['ret' => 0, 'msg' => '请输入用户名!'];
        }
        if (!isset($data['real_name']) || !$data['real_name']) {
            return ['ret' => 0, 'msg' => '请输入真实名称!'];
        }
        if (!isset($data['password']) || !$data['password']) {
            return ['ret' => 0, 'msg' => '请输入密码!'];
        }
        if (!isset($data['group_id']) || !$data['group_id']) {
            return ['ret' => 0, 'msg' => '请选择权限组!'];
        }

        //用户名是否重复
        $exist = $this->has(['AND' => ['user_name' => $data['user_name'],'status[!]'=>2]]);
        if ($exist) {
            return ['ret' => 0, 'msg' => '该用户名已被存在!'];
        }

        //验证密码格式
        $n = preg_match_all("/^[a-zA-Z\d_]{6,12}$/", $data['password']);
        if ($n != 1) {
            return ['ret' => 0, 'msg' => '密码格式错误,请输入6-12位数字和密码!'];
        }

        return ['ret' => 1];
    }

    /**
     * 新建后台帐号
     * @param $data
     * @return bool
     */
    public function createAccount($data)
    {
        //随机干扰数
        $salt = mt_rand(1000, 9999);
        $password = md5($data['password'] . "_" . $salt);

        $insert_data = [
            'user_name' => $data['user_name'],
            'real_name' => $data['real_name'],
            'password' => $password,
            'salt' => $salt,
            'group_id' => $data['group_id'],
            'create_time' => time(),
        ];

        $insert_result = $this->insert($insert_data);
        if ($insert_result) {
            return true;
        } else {
            return false;
        }
    }


    /**
     * 验证编辑后台帐号-数据是否正确
     * @param $data
     * @return array
     */
    public function checkEditData($data)
    {
        if (!isset($data['id']) || !$data['id']) {
            return ['ret' => 0, 'msg' => '非法请求!'];
        }
        if (!isset($data['user_name']) || !$data['user_name']) {
            return ['ret' => 0, 'msg' => '请输入用户名!'];
        }
        if (!isset($data['real_name']) || !$data['real_name']) {
            return ['ret' => 0, 'msg' => '请输入真实名称!'];
        }
        if (!isset($data['password']) || !$data['password']) {
            return ['ret' => 0, 'msg' => '请输入密码!'];
        }
        if (!isset($data['group_id']) || !$data['group_id']) {
            return ['ret' => 0, 'msg' => '请选择权限组!'];
        }

        //用户名是否重复
        $exist = $this->has(['AND' => ['user_name' => $data['user_name'],'status[!]'=>2 ,'id[!]' => $data['id']]]);
        if ($exist) {
            return ['ret' => 0, 'msg' => '该用户名已被存在!'];
        }

        //验证密码格式
        $old_password = $this->get('password', ['AND' => ['id' => $data['id']]]);
        if ($old_password != $data['password']) {
            $n = preg_match_all("/^[a-zA-Z\d_]{6,12}$/", $data['password']);
            if ($n != 1) {
                return ['ret' => 0, 'msg' => '密码格式错误,请输入6-12位数字和密码!'];
            }
        }

        return ['ret' => 1];
    }

    /**
     * 编辑后台帐号
     * @param $data
     * @return bool
     */
    public function editAccount($data)
    {
        //管理员id
        $id = $data['id'];

        //待修改的信息
        $edit_data = [
            'user_name' => $data['user_name'],
            'real_name' => $data['real_name'],
            'group_id' => $data['group_id'],
            'update_time' => time(),
        ];

        //修改密码
        $old_password = $this->get('password', ['AND' => ['id' => $id]]);
        if ($old_password != $data['password']) {
            $salt = mt_rand(1000, 9999);
            $password = md5($data['password'] . "_" . $salt);
            $edit_data['password'] = $password;
            $edit_data['salt'] = $salt;
        }

        $edit_result = $this->update($edit_data, ['AND' => ['id' => $id]]);
        if ($edit_result) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 冻结后台帐号
     * @param $data
     * @return bool
     */
    public function frozenAccount($id)
    {
        //待修改的信息
        $edit_data = [
            'status' => 1,
            'update_time' => time(),
        ];
        $edit_result = $this->update($edit_data, ['AND' => ['id' => $id]]);
        if ($edit_result) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 解冻后台帐号
     * @param $id
     * @return bool
     */
    public function disFrozenAccount($id)
    {
        //待修改的信息
        $edit_data = [
            'status' => 0,
            'update_time' => time(),
        ];
        $edit_result = $this->update($edit_data, ['AND' => ['id' => $id]]);
        if ($edit_result) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 重置密码
     * @param $id
     * @return bool
     */
    public function resetPassword($id)
    {
        $salt = mt_rand(1000, 9999);
        $password = md5("12345678_" . $salt);

        //待修改的信息
        $edit_data = [
            'password' => $password,
            'salt' => $salt,
            'update_time' => time(),
        ];
        $edit_result = $this->update($edit_data, ['AND' => ['id' => $id]]);
        if ($edit_result) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 删除
     * @param $id
     * @return bool
     */
    public function deleteAccount($id)
    {
        //待修改的信息
        $edit_data = [
            'status' => 2,
            'update_time' => time(),
        ];
        $edit_result = $this->update($edit_data, ['AND' => ['id' => $id]]);
        if ($edit_result) {
            return true;
        } else {
            return false;
        }
    }



}