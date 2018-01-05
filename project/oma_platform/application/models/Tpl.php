<?php

class Model_Tpl extends Smodel
{
    protected $table = "tpl";


    private function checkParam($param)
    {
        if (isset($param['name']) && $param['name'] == "") {
            return "名称不能为空";
        }
        if (isset($param['pic']) && $param['pic'] == "") {
            return "图片不能为空";
        }
        if ($param['is_third'] == 1) {
            if (empty($param['third_url'])) {
                return "第三方链接不能为空";
            }
            if (empty($param['uniqe_name'])) {
                return "活动模板标识不能为空";
            }
        }
        if (isset($param['weight']) && $param['weight'] == "") {
            return "权重不能为空";
        }
        if (isset($param['id']) && $param['uniqe_name']) {
            if ($this->checkTplExist($param['uniqe_name'], $param['id'])) {
                return "活动模板标识已存在,不能创建同类模板";
            }
        } else {
            if ($this->checkTplExist($param['uniqe_name'])) {
                return "活动模板标识已存在,不能创建同类模板";
            }
        }

        return "";
    }

    private function checkTplExist($name, $id = -1)
    {
        return $this->has(['AND' => ['uniqe_name' => $name, 'id[!]' => $id]]);
    }

    public function addInfo($param)
    {
        $err = $this->checkParam($param);
        if ($err) {
            return ["1", $err];
        }
        $param['create_time'] = time();
        $param['update_time'] = time();
        $res = $this->insert($param);
        return ["0", $res > 0];
    }

    public function editInfo($param)
    {
        $err = $this->checkParam($param);
        if ($err) {
            return ["1", $err];
        }
        $param['update_time'] = time();
        $res = $this->update($param, ['id' => $param['id']]);
        return ["0", $res > 0];
    }

    public function deleteInfo($id)
    {
        return $this->delete(['id' => $id]);
    }

    public function getList($condition, $page = 1, $size = 10)
    {
        $count = $this->count();
        $where['LIMIT'] = [($page - 1) * $size, $size];
        $list = $this->select("*", $where);
        return ["list" => $list, "count" => $count];
    }

    public function info($id)
    {
        return $this->get("*", ['id' => $id]);
    }

}