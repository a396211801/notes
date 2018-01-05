<?php

class Model_AdvertPosition extends Smodel
{
    protected $table = "advert_position";

    /**
     * 广告位列表
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
        $list = $this->select(['id', 'media_id', 'user_id', 'name', 'type', 'js_type', 'shield_id', 'status', 'third_rate', 'third_tpl_url','audit_fail_reason', 'update_time', 'audit_time', 'create_time'], $where);
        if (!empty($list)) {
            $list = $this->externalConnection($list);
        }
        return array('list' => $list, 'count' => ceil( $count / $size ));
    }

    /**
     * @param array $data
     * @return array
     * 新增广告位
     */
    public function addAdvertPosition($data = [])
    {
        $now = time();
        $model_media = new Model_Media();
        $model_media->setPdo($this->pdo);
        $media_data = [
            'user_id' => $data['user_id'],
            'name' => $data['media_name'],
            'type' => $data['media_type'],
            'create_time' => $now,
        ];
        if ($data['media_type'] == 3) {
            $media_data['web_url'] = $data['web_url'];
        } else {
            $media_data['pkg_name'] = $data['pkg_name'];
            $media_data['download_url'] = $data['download_url'];
        }
        $this->begin();
        $media_id = $model_media->insert($media_data);
        $insert_data = [
            'user_id' => $data['user_id'],
            'name' => $data['name'],
            'type' => $data['type'],
            'media_id' => $media_id,
            'create_time' => $now,
        ];
        if ($data['type'] == 3) {
            $insert_data['js_type'] = $data['js_type'];
        }
        $res = $this->insert($insert_data);
        if ($media_id && $res) {
            $this->commit();
            return ['ret' => 1, 'msg' => '添加成功'];
        } else {
            $this->rollback();
            return ['ret' => 0, 'msg' => '添加失败'];
        }
    }

    /**
     * @param array $data
     * @return array
     * 修改
     */
    public function editAdvertPosition($data = [])
    {
        $model_media = new Model_Media();
        $model_media->setPdo($this->pdo);
        $now = time();
        $update_data = [
            'name' => $data['name'],
            'type' => $data['type'],
            'update_time' => $now,
        ];
        //前台编辑和重新提交
        if (isset($data['status']) && intval($data['status']) >= 0) {
            $update_data['status'] = $data['status'];
        }
        //js类型
        if ($data['type'] == 3) {
            $update_data['js_type'] = $data['js_type'];
        }
        $media_data = [
            'name' => $data['media_name'],
            'type' => $data['media_type'],
            'update_time' => $now,
        ];
        if ($data['media_type'] == 3) {
            $media_data['web_url'] = $data['web_url'];
        } else {
            $media_data['pkg_name'] = $data['pkg_name'];
            $media_data['download_url'] = $data['download_url'];
        }
        $this->begin();
        $update = $this->update($update_data, ['id' => $data['id']]);
        $media_update = $model_media->update($media_data, ['id' => $data['media_id']]);
        if ($update && $media_update) {
            $this->commit();
            return ['ret' => 1, 'msg' => '操作成功'];
        } else {
            $this->rollback();
            return ['ret' => 0, 'msg' => '操作失败'];
        }
    }

    /**
     * @param array $data
     * @return array
     * 审核
     */
    public function examineAdvertPosition($data = [])
    {
        $now = time();
        $update_data = [
            'status' => $data['status'],
            'audit_time' => $now,
        ];

        if ($update_data['status'] == 2) {
            $update_data['audit_fail_reason'] = $data['audit_fail_reason'];
        }

        $update = $this->update($update_data, ['id' => $data['id']]);
        if ($update) {
            return ['ret' => 1, 'msg' => '审核成功'];
        } else {
            return ['ret' => 0, 'msg' => '审核失败'];
        }
    }

    /**
     * @param array $data
     * @return array
     * 删除
     */
    public function delAdvertPosition($data = [])
    {
        $now = time();
        $update_data = [
            'is_del' => 1,
            'update_time' => $now
        ];

        $update = $this->update($update_data, ['id' => $data['id']]);
        if ($update) {
            return ['ret' => 1, 'msg' => '删除成功'];
        } else {
            return ['ret' => 0, 'msg' => '删除失败'];
        }
    }

    /**
     * @param array $data
     * @return array
     * 取消屏蔽包
     */
    public function cancelSetShield($data = [])
    {
        $now = time();
        $update_data = [
            'shield_id' => 0,
            'update_time' => $now
        ];

        $update = $this->update($update_data, ['id' => $data['id']]);
        if ($update) {
            return ['ret' => 1, 'msg' => '取消成功'];
        } else {
            return ['ret' => 0, 'msg' => '取消失败'];
        }
    }

    /**
     * @param array $data
     * @return array
     * 设置屏蔽包
     */
    public function setAdvertPositionShield($data = [])
    {
        $now = time();
        $update_data = [
            'shield_id' => $data['shield_id'],
            'update_time' => $now
        ];

        $update = $this->update($update_data, ['id' => $data['id']]);
        if ($update) {
            return ['ret' => 1, 'msg' => '设置成功'];
        } else {
            return ['ret' => 0, 'msg' => '设置失败'];
        }
    }

    /**
     * @param array $data
     * @return array
     * 设置第三方模板信息
     */
    public function setThirdInfo($data = [])
    {
        $now = time();
        $update_data = [
            'third_rate' => $data['third_rate'],
            'third_tpl_url' => $data['third_tpl_url'],
            'update_time' => $now
        ];

        $update = $this->update($update_data, ['id' => $data['id']]);
        $url = 'http://' . $_SERVER['SERVER_NAME'] . '/ts/api/v1/update_tpl';
        fn_get_contents($url, [], 'get', 0);
        if ($update) {
            return ['ret' => 1, 'msg' => '设置成功'];
        } else {
            return ['ret' => 0, 'msg' => '设置失败'];
        }
    }

    /**
     * @param array $data
     * @return array
     * 取消第三方模板信息
     */
    public function unsetThirdInfo($data = [])
    {
        $now = time();
        $update_data = [
            'third_rate' => 0.00,
            'third_tpl_url' => '',
            'update_time' => $now
        ];

        $update = $this->update($update_data, ['id' => $data['id']]);
        if ($update) {
            return ['ret' => 1, 'msg' => '取消成功'];
        } else {
            return ['ret' => 0, 'msg' => '取消失败'];
        }
    }

    /**
     * @param array $data
     * @return array
     * 上传图片接口
     */
    public function adwUploadImg($data = [])
    {
        $now = time();
        $update_data = [
            'pic_size' => $data['pic_size'],
            'pic' => $data['pic'],
            'update_time' => $now
        ];

        $update = $this->update($update_data, ['id' => $data['id']]);
        if ($update) {
            return ['ret' => 1, 'msg' => '设置成功'];
        } else {
            return ['ret' => 0, 'msg' => '设置失败'];
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
            $model_media = new Model_Media();
            $media_info = $model_media->get('*', ['id' => $info['media_id']]);
            if ($media_info) {
                $info['media_name'] = $media_info['name'];
                $info['pkg_name'] = $media_info['pkg_name'];
                $info['web_url'] = $media_info['web_url'];
                $info['download_url'] = $media_info['download_url'];
                $info['media_type'] = $media_info['type'];
                return ['ret' => 1, 'msg' => '获取成功', 'data' => $info];
            } else {
                return ['ret' => 0, 'msg' => '媒体信息获取失败'];
            }
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
        //客户名称/广告位名称
        if (isset($condition['name']) && $condition['name']) {
            $where['AND']['OR']['id'] = $condition['name'];
            $where['AND']['OR']['name[~]'] = $condition['name'];
            $users = new Model_User();
            $wheres['OR']['user_name[~]'] = $condition['name'];
            $user = $users->select('id', $wheres);
            if (!empty($user)) {
                $where['AND']['OR']['user_id'] = $user;
            }
        }
        if (isset($condition['status']) && $condition['status']) {
            $where['AND']['status'] = $condition['status'];
            if ($condition['status'] == 3) {
                $where['AND']['status'] = 0;
            }
        }
        if (isset($condition['type']) && $condition['type']) {
            $where['AND']['type'] = $condition['type'];
        }
        if (isset($condition['id']) && $condition['id']) {
            $where['AND']['id'] = $condition['id'];
        }
        if (isset($condition['user_id']) && $condition['user_id']) {
            $where['AND']['user_id'] = $condition['user_id'];
        }
        $where['AND']['is_del'] = 0;
        return $where;
    }

    /**
     * 链接外表
     */
    public function externalConnection($list)
    {
        if ($list) {
            $_c = Yaf_Application::app()->getConfig()->toArray();
            $type = $_c['base_info']['advert']['type'];
            $js_type = $_c['base_info']['advert']['js_type'];
            $user = new Model_User();
            $model_shield = new Model_Shield();
            foreach ($list as $k => $v) {
                $list[$k]['h5_url'] = fn_get_h5_url($v['user_id'], $v['id']);
                $where_user['AND']['id'] = $v['user_id'];
                $user_name = $user->get('user_name', $where_user);
                $list[$k]['user_name'] = isset($user_name) ? $user_name : '暂无';
                $list[$k]['init_type'] = $v['type'];
                $list[$k]['type'] = $type[$v['type']];
                if ($v['type'] == 3) {
                    $list[$k]['type'] = $js_type[$v['js_type']];
                }
                if ($v['shield_id'] != 0) {
                    $shield_field = ['id', 'name', 'industry_id', 'urls'];
                    $list[$k]['shield_info'] = $model_shield->get($shield_field, ['id' => $v['shield_id']]);
                }
            }
        }
        return $list;
    }

    /**********************************检查参数合法性start**********************************/

    /**
     * @param $data
     * @return array
     * 检查添加广告位参数合法性
     */
    public function checkAddData($data)
    {
        if (!isset($data['user_id']) || !trim($data['user_id'])) return ['ret' => 0, 'msg' => '用户必选'];
        if (!isset($data['name']) || !trim($data['name'])) return ['ret' => 0, 'msg' => '广告位名称必填'];
        if (!isset($data['type']) || !$data['type']) return ['ret' => 0, 'msg' => '广告位类型必选'];
        if (!isset($data['media_type']) || !trim($data['media_type'])) return ['ret' => 0, 'msg' => '媒体类型必选'];
        if (!isset($data['media_name']) || !trim($data['media_name'])) return ['ret' => 0, 'msg' => '媒体名称必填'];
        if ($data['media_type'] == 3) {
            if (!isset($data['web_url']) || !trim($data['web_url'])) return ['ret' => 0, 'msg' => '网站域名必填'];
        } else {
            if (!isset($data['pkg_name']) || !trim($data['pkg_name'])) return ['ret' => 0, 'msg' => '程序包名必填'];
            if (!isset($data['download_url']) || !trim($data['download_url'])) return ['ret' => 0, 'msg' => '下载地址必填'];
        }
        if ($data['type'] != 1 && $data['type'] != 3) {
            //暂行
            return ['ret' => 0, 'msg' => '广告位类型暂开放H5,JS'];
        }
        if ($data['type'] == 3) {
            if (!isset($data['js_type']) || !trim($data['js_type'])) return ['ret' => 0, 'msg' => 'JS类型必选'];
        }
        return ['ret' => 1, 'msg' => '验证通过'];
    }

    /**
     * @param $data
     * @return array
     * 检查编辑广告位参数合法性
     */
    public function checkEditData($data)
    {
        if (!isset($data['id']) || !trim($data['id']) || !isset($data['media_id']) || !trim($data['media_id'])) return ['ret' => 0, 'msg' => '参数错误'];
        if (!isset($data['user_id']) || !trim($data['user_id'])) return ['ret' => 0, 'msg' => '用户必选'];
        if (!isset($data['name']) || !trim($data['name'])) return ['ret' => 0, 'msg' => '广告位名称必填'];
        if (!isset($data['type']) || !trim($data['type'])) return ['ret' => 0, 'msg' => '广告位类型必选'];
        if (!isset($data['media_type']) || !trim($data['media_type'])) return ['ret' => 0, 'msg' => '媒体类型必选'];
        if (!isset($data['media_name']) || !trim($data['media_name'])) return ['ret' => 0, 'msg' => '媒体名称必填'];
        if ($data['media_type'] == 3) {
            if (!isset($data['web_url']) || !trim($data['web_url'])) return ['ret' => 0, 'msg' => '网站域名必填'];
        } else {
            if (!isset($data['pkg_name']) || !trim($data['pkg_name'])) return ['ret' => 0, 'msg' => '程序包名必填'];
            if (!isset($data['download_url']) || !trim($data['download_url'])) return ['ret' => 0, 'msg' => '下载地址必填'];
        }
        if ($data['type'] != 1 && $data['type'] != 3) {
            //暂行
            return ['ret' => 0, 'msg' => '广告位类型暂开放H5,JS'];
        }
        if ($data['type'] == 3) {
            if (!isset($data['js_type']) || !trim($data['js_type'])) return ['ret' => 0, 'msg' => 'JS类型必选'];
        }
        return ['ret' => 1, 'msg' => '验证通过'];
    }

    /**
     * @param $data
     * @return array
     * 检查审核广告位参数合法性
     */
    public function checkExamineData($data)
    {
        if (!isset($data['id']) || !trim($data['id'])) return ['ret' => 0, 'msg' => '参数错误'];
        if (!isset($data['status']) || !trim($data['status'])) return ['ret' => 0, 'msg' => '参数错误'];
        if ($data['status'] == 2) {
            if (!isset($data['audit_fail_reason']) || !trim($data['audit_fail_reason'])) return ['ret' => 0, 'msg' => '失败原因必填'];
        }
        return ['ret' => 1, 'msg' => '验证通过'];
    }

    /**
     * @param $data
     * @return array
     * 检查删除广告位参数合法性(取消屏蔽包共用)
     */
    public function checkDelData($data)
    {
        if (!isset($data['id']) || !trim($data['id'])) return ['ret' => 0, 'msg' => '参数错误'];
        return ['ret' => 1, 'msg' => '验证通过'];
    }

    /**
     * @param $data
     * @return array
     * 检查设置广告位屏蔽包参数合法性
     */
    public function checksetData($data)
    {
        if (!isset($data['id']) || !trim($data['id'])) return ['ret' => 0, 'msg' => '参数错误'];
        if (!isset($data['shield_id']) || !trim($data['shield_id'])) return ['ret' => 0, 'msg' => '参数错误'];
        return ['ret' => 1, 'msg' => '验证通过'];
    }

    /**
     * @param $data
     * @return array
     * 检查设置第三方参数合法性
     */
    public function checkThirdInfoData($data)
    {
        if (!isset($data['id']) || !trim($data['id'])) return ['ret' => 0, 'msg' => '参数错误'];
        if (!isset($data['third_rate']) || trim($data['third_rate']) == '') return ['ret' => 0, 'msg' => '第三方调用比例必填'];
        if (!isset($data['third_tpl_url']) || !trim($data['third_tpl_url'])) return ['ret' => 0, 'msg' => '第三方调用url必填'];
        return ['ret' => 1, 'msg' => '验证通过'];
    }

    /**
     * @param $data
     * @return array
     * 检查广告位上传参数合法性
     */
    public function checkAdwUploadData($data)
    {
        if (!isset($data['id']) || !trim($data['id'])) return ['ret' => 0, 'msg' => '参数错误'];
        if (!isset($data['pic_size']) || trim($data['pic_size']) == '') return ['ret' => 0, 'msg' => '图片尺寸必选'];
        if (!isset($data['pic']) || !trim($data['pic'])) return ['ret' => 0, 'msg' => '没有上传图片'];
        return ['ret' => 1, 'msg' => '验证通过'];
    }

    /**********************************检查参数合法性end**********************************/
}