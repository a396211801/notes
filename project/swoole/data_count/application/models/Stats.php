<?php


namespace Model;

use App\Model;

class Stats extends \App\Model
{

    protected $table = "stats";

    /*
     * 验证统计信息
     */
    private function checkStatsInfo($data)
    {
        if (isset($data['user_id']) && empty($data['user_id'])) {
            return "统计数据ID不能为空";
        }

        if (isset($data['name']) && empty($data['name'])) {
            return "统计名称不能为空";
        }
        if (isset($data['pv']) && $data['pv'] == "") {
            return "pv不能为空";
        }
        if (isset($data['date']) && empty($data['date'])) {
            return "日期不能为空";
        }
        return "";
    }


    /*
     * 根据统计数据id查找统计数据
     */
    public function getUserById($userid)
    {
        return $this->get("*", ['id' => $userid]);
    }

    /*
     * 创建统计数据
     */
    public function addInfo($data)
    {
        $err = $this->checkStatsInfo($data);
        if ($err) {
            return [false, $err];
        }

        $data['create_time'] = time();
        $data['update_time'] = time();
        $data['date'] = strtotime($data['date']);
        $res = $this->insert($data);
        if ($res > 0) {
            return [true, "创建成功"];
        }
        return [false, "创建失败"];
    }


    /*
     * 修改统计数据
     */
    public function editInfo($data)
    {
        $oldUser = $this->get("*", ['id' => $data['id']]);
        if (!$oldUser) {
            return [false, "数据不存在"];
        }

        $err = $this->checkStatsInfo($data);
        if ($err) {
            return [false, $err];
        }

        $data['update_time'] = time();
        $data['date'] = strtotime($data['date']);
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
        if (isset($condition['begin_date']) && !empty($condition['begin_date'])) {
            $where['AND']['date[>=]'] = strtotime($condition['begin_date']);
        }
        if (isset($condition['end_date']) && !empty($condition['end_date'])) {
            $where['AND']['date[<=]'] = strtotime($condition['end_date']);
        }
        if (isset($condition['name']) && !empty($condition['name'])) {
            $where['AND']['name[~]'] = '%' . $condition['name'] . '%';
        }
        if (isset($condition['user_id']) && !empty($condition['user_id'])) {
            $where['AND']['user_id'] = $condition['user_id'];
        }

        return $where;
    }

    /*
     * 获取列表
     */
    public function getList($condition, $p = 1, $size = 50)
    {
        $w = $this->getQueryCondition($condition);
        $count = $this->count($w);
        $pvtotal = $this->sum("pv", $w);

        $w['LIMIT'] = [($p - 1) * $size, $size];
        $w['ORDER'] = ['date' => 'DESC', 'user_id' => 'DESC'];
        $list = $this->select("*", $w);
        return ['list' => $this->extList($list), 'count' => $count, 'pvtotal' => $pvtotal];
    }

    /*
     * 扩展列表
     */
    private function extList($list)
    {
        $umodel = new \Model\User();
        foreach ($list as &$value) {
            $uinfo = $umodel->getUserById($value['user_id']);
            $value['user_name'] = isset($uinfo['username']) ? $uinfo['username'] : "";
        }
        return $list;
    }

    /*
     * 删除统计数据逻辑删除
     */
    public function delInfo($id)
    {
        return $this->delete(['id' => $id]);
    }

}
