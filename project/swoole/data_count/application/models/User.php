<?php


namespace Model;

class User extends \App\Model
{

    protected $table = "user";

    public function checkLogin($username, $pwd)
    {
        return $this->get("*", ['AND' => ['username' => $username, 'password' => $pwd]]);
    }

    /*
     * 验证用户信息
     */
    private function checkUserInfo($data)
    {
        if (isset($data['username']) && empty($data['username'])) {
            return "用户名不能为空";
        }
        if (isset($data['username'])) {
            $u = $this->getUserByName($data['username']);
            if ($u) {
                if (isset($data['id'])) {
                    if ($u['id'] != $data['id']) {
                        return "用户名已存在";
                    }
                } else {
                    return "用户名已存在";
                }
            }
        }

        if (isset($data['password']) && empty($data['password'])) {
            return "密码不能为空";
        }
        if (isset($data['password1']) && empty($data['password1'])) {
            return "确定密码不能为空";
        }
        if (isset($data['password1']) && isset($data['password'])
            && $data['password'] != $data['password1']) {
            return "二次密码不一致";
        }
        if (isset($data['old_password']) && !empty($data['old_password'])) {
            $u = $this->getUserById($data['id']);
            if ($u['password'] != md5($data['old_password'])) {
                return "旧密码不正确";
            }
        }
        return "";
    }

    /*
     * 根据用户名查找用户
     */
    private function getUserByName($username)
    {
        return $this->get("*", ['AND' => ['username' => $username, 'deleted' => '0']]);
    }

    /*
     * 根据用户id查找用户
     */
    public function getUserById($userid)
    {
        return $this->get("*", ['AND' => ['id' => $userid, 'deleted' => 0]]);
    }

    /*
     * 创建用户
     */
    public function addUser($data)
    {
        $err = $this->checkUserInfo($data);
        if ($err) {
            return [false, $err];
        }

        $data['password'] = md5($data['password']);
        unset($data['password1']);
        $data['create_date'] = time();
        $data['update_date'] = time();
        $res = $this->insert($data);
        if ($res > 0) {
            return [true, "创建成功"];
        }
        return [false, "创建失败"];
    }


    /*
     * 修改用户
     */
    public function editUser($data)
    {
        $oldUser = $this->get("*", ['id' => $data['id']]);
        if (!$oldUser) {
            return [false, "用户不存在"];
        }

        $err = $this->checkUserInfo($data);
        if ($err) {
            return [false, $err];
        }

        if (isset($data['password']) && $data['password']) {
            $data['password'] = md5($data['password']);
            unset($data['password1']);
        }

        $data['update_date'] = time();
        $res = $this->update($data, ['id' => $data['id']]);
        if ($res > 0) {
            return [true, "修改成功"];
        }
        return [false, "修改失败"];
    }

    /*
     * 修改密码
     */
    public function editPwd($data)
    {
        $err = $this->checkUserInfo($data);
        if ($err) {
            return [false, $err];
        }
        unset($data['old_password']);
        unset($data['password1']);
        $data['password'] = md5($data['password']);
        $res = $this->update($data, ['id' => $data['id']]);
        if ($res > 0) {
            return [true, "修改成功"];
        }
        return [false, "修改失败"];
    }

    /*
     * 获取查询条件
     */
    private function getQueryCondition($condition)
    {
        $where = [];
        if (isset($condition['name']) && !empty($condition['name'])) {
            $where['AND']['username[~]'] = '%' . $condition['name'] . '%';
        }
        $where['AND']['deleted'] = 0;
        return $where;
    }

    /*
     * 获取列表
     */
    public function getList($condition, $p = 1, $size = 10)
    {
        $w = $this->getQueryCondition($condition);
        $count = $this->count($w);

        $w['LIMIT'] = [($p - 1) * $size, $size];
        $w['ORDER'] = ['create_date' => 'DESC'];
        $list = $this->select("*", $w);
        return ['list' => $list, 'count' => $count];
    }

    /*
     * 删除用户逻辑删除
     */
    public function delUser($uid)
    {
        return $this->update(['deleted' => 1], ['id' => $uid]);
    }

    /*
     * 用户列表
     */
    public function userList()
    {
        return $this->select(["id", "username"], ['AND' => ['position' => 1, 'deleted' => 0], "ORDER" => ['id' => "DESC"]]);
    }

}
