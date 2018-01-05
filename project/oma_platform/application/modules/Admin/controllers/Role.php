<?php

class Controller_Role extends Admin
{

    protected $model_role_group;
    protected $model_role_operations;
    protected $model_role_tasks;

    public function init()
    {
        parent::init();
        $this->model_role_group = new Model_RoleGroup();
        $this->model_role_operations = new Model_RoleOperations();
        $this->model_role_tasks = new Model_RoleTasks();
    }


    /**
     * 权限列表
     */
    public function roleListAction()
    {
        //权限组信息
        //$role_group = $this->model_role_group->select('*',[]);
        //$this->assign('role_group',$role_group);
        //$this->display();
    }

    /**
     * 某个权限组的权限信息
     */
    public function roleDataAction()
    {
        if ($this->_request->isPost()) {
            $group_id = $this->_request->getPost('group_id');
            $roleData = $this->model_role_group->roleData($group_id);
            fn_ajax_return(1,'获取成功',$roleData);
        }

    }

    /**
     * 编辑权限
     */
    public function roleEditAction()
    {
        //等页面出来再写

    }


}