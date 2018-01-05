<?php


namespace Model;

class UserName extends \App\Model
{

    protected $table = "user_name";

    /*
     * 验证用户信息
     */
    private function checkNamesInfo($data)
    {
        if (isset($data['name']) && empty($data['name'])) {
            return "名称不能为空";
        }
        if (isset($data['name'])) {
            $uid = $this->getIdByName($data['user_id'], $data['name']);
            if ($uid) {
                if (isset($data['id'])) {
                    if ($uid != $data['id']) {
                        return "名称已存在";
                    }
                } else {
                    return "名称已存在";
                }
            }
        }
        return "";
    }

    /*
     * 根据用户名查找用户
     */
    private function getIdByName($userid, $username)
    {
        return $this->get("id", ['AND'=>['name' => $username, 'user_id' => $userid]]);
    }

    /*
     * 创建用户
     */
    public function addNames($data)
    {
        $err = $this->checkNamesInfo($data);
        if ($err) {
            return [false, $err];
        }

        $res = $this->insert($data);
        if ($res > 0) {
            return [true, "创建成功"];
        }
        return [false, "创建失败"];
    }


    /*
     * 修改用户
     */
    public function editNames($data)
    {
        $err = $this->checkNamesInfo($data);
        if ($err) {
            return [false, $err];
        }

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
        $where['AND']['user_id'] = $condition['user_id'];
        return $where;
    }

    /*
     * 获取列表
     */
    public function getList($condition, $p = 1, $size = 10)
    {
        $w = $this->getQueryCondition($condition);
        $count = $this->count($w);

        $list = $this->select("*", $w);
        return ['list' => $list, 'count' => $count];
    }

    /*
     * 删除
     */
    public function delNames($id)
    {
        return $this->delete(['id' => $id]);
    }

}
