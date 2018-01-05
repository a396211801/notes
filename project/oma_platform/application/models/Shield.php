<?php

class Model_Shield extends Smodel {
    protected $table = "shield";
    protected $industry = ['1' => '棋牌', '2' => '金融', '3' => '网赚', '4' => '电商', '5' => '其他'];

    /**
     * 屏蔽包列表
     * @param array $condition
     * @return array
     */
    public function getList($condition = [])
    {
        $p = isset($condition['p']) ? $condition['p'] : 1;
        $size = isset($condition['limit']) ? $condition['limit'] > 0 ? $condition['limit'] : 10 : 10;
        $where = $this->listCondition($condition);
        $count = $this->count($where);
        $where['LIMIT'] = array(($p - 1) * $size, $size);
        $where['ORDER'] = ' id desc ';
        $list = $this->select(['id', 'name', 'industry_id', 'urls', 'create_time', 'update_time'], $where);
        if (!empty($list)) {
            $list = $this->externalConnection($list);
        }
        return array('list' => $list, 'count' => ceil( $count / $size));
    }

    /**
     * @param array $data
     * @return array
     * 新增屏蔽包
     */
    public function addShield($data = [])
    {
        $res = $this->checkAddData($data);
        if ($res['ret'] == 0) {
            return $res;
        }
        $now = time();
        $insert_data = [
            'name' => $data['name'],
            'industry_id' => $data['industry_id'],
            'urls' => str_replace("\n","|",$data['urls']),
            'create_time' => $now,
        ];
        $res = $this->insert($insert_data);
        if ($res) {
            return ['ret' => 1, 'msg' => '添加成功'];
        } else {
            return ['ret' => 0, 'msg' => '添加失败'];
        }
    }

    /**
     * @param array $data
     * @return array
     * 修改
     */
    public function editShield($data = [])
    {
        $res = $this->checkEditData($data);
        if ($res['ret'] == 0) {
            return $res;
        }
        $now = time();
        $update_data = [
            'name' => $data['name'],
            'industry_id' => $data['industry_id'],
            'urls' => str_replace("\n","|",$data['urls']),
            'update_time' => $now,
        ];
        $update = $this->update($update_data, ['id' => $data['id']]);
        if ($update) {
            return ['ret' => 1, 'msg' => '操作成功'];
        } else {
            return ['ret' => 0, 'msg' => '操作失败'];
        }
    }

    /**
     * @param array $data
     * @return array
     * 删除
     */
    public function delShield($id)
    {

        $res = $this->delete(['id' => $id]);
        if ($res) {
            return ['ret' => 1, 'msg' => '删除成功'];
        } else {
            return ['ret' => 0, 'msg' => '删除失败'];
        }
    }

    /**
     * @param array $data
     * @return array
     * 获取详情
     */
    public function getDetail($data = [])
    {
        if (!isset($data['id'])) return ['ret' => 0, 'msg' => '参数错误'];

        $info = $this->get('*', ['id' => $data['id']]);
        if ($info) {
            return ['ret' => 1, 'msg' => '获取成功', 'data' => $info];
        } else {
            return ['ret' => 0, 'msg' => '获取失败'];
        }
    }

    /**
     * 获取最终条件
     */
    public function listCondition($condition = array())
    {
        $where = array();
        if (isset($condition['name']) && $condition['name']) {
            $where['AND']['name[~]'] = $condition['name'];
        }
        if (isset($condition['industry_id']) && $condition['industry_id']) {
            $where['AND']['industry_id'] = $condition['industry_id'];
        }
        return $where;
    }

    /**
     * 链接外表
     */
    public function externalConnection($list)
    {
        if ($list) {
            foreach ($list as $k => $v) {
                $list[$k]['type'] = $this->industry[$v['industry_id']];
            }
        }
        return $list;
    }

    /**********************************检查参数合法性start**********************************/

    /**
     * @param $data
     * @return array
     * 检查添加屏蔽包参数合法性
     */
    public function checkAddData($data)
    {
        if (!isset($data['name']) || !trim($data['name'])) return ['ret' => 0, 'msg' => '屏蔽包名称必填'];
        if ((isset($data['industry_id']) && !$data['industry_id']) && (isset($data['urls']) && !$data['urls'])) {
            return ['ret' => 0, 'msg' => '行业类型和屏蔽域名不能都为空'];
        }
        return ['ret' => 1, 'msg' => '验证通过'];
    }

    /**
     * @param $data
     * @return array
     * 检查编辑屏蔽包参数合法性
     */
    public function checkEditData($data)
    {
        if (!isset($data['id']) || !trim($data['id'])) ['ret' => 0, 'msg' => '参数错误'];
        if (!isset($data['name']) || !trim($data['name'])) return ['ret' => 0, 'msg' => '屏蔽包名称必填'];
        if ((isset($data['industry_id']) && !$data['industry_id']) && (isset($data['urls']) && !$data['urls'])) {
            return ['ret' => 0, 'msg' => '行业类型和屏蔽域名不能都为空'];
        }
        return ['ret' => 1, 'msg' => '验证通过'];
    }

    /**
     * @param $data
     * @return array
     * 检查删除屏蔽包参数合法性
     */
    public function checkDelData($data)
    {
        if (!isset($data['id']) || !trim($data['id'])) return ['ret' => 0, 'msg' => '参数错误'];
        return ['ret' => 1, 'msg' => '验证通过'];
    }

    /**********************************检查参数合法性end**********************************/
}