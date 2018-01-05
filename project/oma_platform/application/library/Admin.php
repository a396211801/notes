<?php

class Admin extends Web
{
    protected $model_admin;
    protected $model_role_group;


    public function init()
    {
        parent::init();
        $this->model_admin = new Model_User();
        $this->model_role_group = new Model_RoleGroup();

        //判断是否登录
        $this->checkLogin();
        //设置基本信息
        $this->setInfo();
    }


    /**
     * 判断是否登录
     */
    public function checkLogin()
    {
        $admin_info = $this->_session->get('admin_info');
        if(!isset($admin_info) || !$admin_info) {
            Header("Location: /admin/member/login");
        }
    }

    /**
     * 设置基本信息
     */
    public function setInfo()
    {
        //设置客户信息
        $admin_info = $this->_session->get('admin_info');
        $adminInfo = $this->model_admin->get('*',['AND'=>['id'=>$admin_info['id']]]);
        $this->assign('adminInfo',$adminInfo);

        //设置导航参数
        $controller_name = strtolower($this->_c);
        $this->assign('controller_name',$controller_name);

        //设置基本数据
        $_c = Yaf_Application::app()->getConfig()->toArray();
        $base_info = $_c['base_info'];
        $this->assign('base_info',$base_info);
    }

    /**
     * 获取权限组
     * @return array
     */
    public function getRuleGroup()
    {
        $role_group = $this->model_role_group->select('*',[]);
        $role_group = fn_get_key_field($role_group,'id');
        return $role_group;
    }
}
