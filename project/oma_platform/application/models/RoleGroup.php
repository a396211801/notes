<?php

class Model_RoleGroup extends Smodel
{

    protected $table = "role_group";

    /**
     * 新建权限组
     * @param $name
     * @return array|mixed
     */
    public function createRoleGroup($name)
    {
        $data = [
            'name' => $name,
            'status' => 1,
        ];
        $insert = $this->insert($data);
        return $insert;
    }

    /**
     * 某个权限组的权限信息
     * @param int $group_id
     * @return array
     */
    public function roleData($group_id = 0)
    {

        //验证权限组是否存在
        $group = $this->has(['AND' => ['id' => $group_id]]);
        if (!$group) {
            return [];
        }

        //权限是否存在
        $model_role_operations = new Model_RoleOperations();
        $action_id = $model_role_operations->select('action_id', ['AND' => ['group_id' => $group_id]]);
        if (!isset($action_id) || !$action_id) {
            return [];
        }

        $model_role_tasks = new Model_RoleTasks();

        $tasks = $model_role_tasks->select('*', ['AND' => ['id' => $action_id]]);

        $return = [];
        if (isset($tasks) && $tasks) {
            foreach ($tasks as $k => $v) {
                $return[$v['controller']][] = $v['action'];
            }
        }

        return $return;
    }


}