<?php

class Front extends Web
{
    protected $model_user;

    public function init()
    {
        parent::init();
        $this->model_user = new Model_User();

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
        $user_info = $this->_session->get('user_info');
        if(!isset($user_info) || !$user_info) {
            Header("Location: /member/login");
        }
    }

    /**
     * 设置基本信息
     */
    public function setInfo()
    {
        //设置客户信息
        $user_info = $this->_session->get('user_info');
        $userInfo = $this->model_user->get('*',['AND'=>['id'=>$user_info['id']]]);
        $this->assign('userInfo',$userInfo);

        //设置导航参数
        $controller = strtolower($this->_c);
        switch($controller) {
            case 'advertposition' :
                $nav_num = 1;
                $title = '广告位管理';
                break;
            case 'data' :
                $nav_num = 2;
                $title = '数据报表';
                break;
            case 'settlement' :
                $nav_num = 3;
                $title = '结算报表';
                break;
            case 'user' :
                $nav_num = 4;
                $title = '用户信息';
                break;
            default :
                $nav_num = 0;
                $title = '';
                break;
        }
        //设置标题
        $this->assign('title',$title);
        //设置导航css样式种类
        $this->assign('nav_num',$nav_num);
        //设置基本数据
        $_c = Yaf_Application::app()->getConfig()->toArray();
        $base_info = $_c['base_info'];
        $this->assign('base_info',$base_info);
    }


}