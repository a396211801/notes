<?php

/**
 * 辅助投放表
 * User: zb
 * Date: 18-1-3
 * Time: 下午3:51
 */
class Model_AdvertPositionAssist extends Smodel
{
    protected $table = "advert_position_assist";

    private function checkData($data)
    {
        //验证广告位是否添加过
        if (!isset($data["id"])) {
            $data["id"] = -1;
        }
        $exist = $this->has(['AND' => ['adw_id' => $data['adw_id'], 'id[!]' => $data['id']]]);
        if ($exist) {
            return "该广告位已经添加辅助策略";
        }

        return "";
    }

    /*
     * 添加策略
     */
    public function AddInfo($data)
    {
        $res = $this->checkData($data);
        if ($res) {
            return $res;
        }

        $data['shield_ip'] = str_replace("\n", ";", $data['shield_ip']);
        $this->insert($data);
        return "";
    }

    /*
     * 编辑信息
     */
    public function EditInfo($data)
    {
        $res = $this->checkData($data);
        if ($res) {
            return $res;
        }
        $data['shield_ip'] = str_replace("\n", ";", $data['shield_ip']);
        $this->update($data, ['id' => $data['id']]);
        return "";
    }

    /*
     * 获取单条数据
     */
    public function GetInfo($id)
    {
        return $this->get("*", ['id' => $id]);
    }

    /*
     * 生成查询条件
     */
    private function getQueryCondition($query)
    {
        $where = [];
        if (isset($query['adw_id'])) {
            $where['AND']['adw_id'] = $query['adw_id'];
        }
        return $where;
    }

    /*
     * 获取列表
     */
    public function GetList($query, $p = 1, $limit = 10)
    {
        $w = $this->getQueryCondition($query);
        $count = $this->count($w);
        $w['LIMIT'] = [($p - 1) * $limit, $limit];
        $list = $this->select("*",$w);
        if ($list) {
            $adwMap = $this->GetAdwMap();
            foreach ($list as &$value) {
                $value['adw_name'] = isset($adwMap[$value['adw_id']]) ? $adwMap[$value['adw_id']] : "-";
            }
        }
        return ['list' => $list, 'count' => $count];
    }

    /*
     * 删除数据
     */
    public function DeleteInfo($id)
    {
        return $this->delete(['id' => $id]);
    }

    /*
     * 获取广告位列表
     */
    public function GetAdwList()
    {
        $adwModel = new Model_AdvertPosition();
        return $adwModel->select(["id", "name"], ['AND' => ['is_del' => 0, 'status' => 1]]);
    }

    /*
     * 获取广告位映射
     */
    public function GetAdwMap()
    {
        $list = $this->GetAdwList();
        $nlist = [];
        if ($list) {
            foreach ($list as $value) {
                $nlist[$value['id']] = $value['name'];
            }
        }
        return $nlist;
    }
}