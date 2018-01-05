<?php


namespace App;

class User extends \App\Web
{

    protected $is_admin;
    protected $user_id;

    public function init()
    {
        parent::init();
        $this->checkLogin();
        $this->showLeftNavBar();
    }

    private function checkLogin()
    {
        if (!\Yaf\Session:: getInstance()->get('USER_ID')) {
            $this->redirect('/member/login');
        }
        $this->is_admin = $this->_session->get('USER_POSITION') == 2;
        $this->user_id = $this->_session->get("USER_ID");
    }

    private function showLeftNavBar()
    {
        $cname = strtolower($this->getRequest()->getControllerName());
        $aname = strtolower($this->getRequest()->getActionName());

        $navlist = [
            'main' => [
                ['title' => "主页", 'url' => '/main/index', 'show' => true],
            ],
            'user' => [
                ['title' => "用户列表", 'url' => '/user/list', 'show' => $this->is_admin && 2],
//                ['title' => "用户添加", 'url' => '/user/add', 'show' => $this->is_admin && 2],
            ],
            'stats' => [
                ['title' => "统计列表", 'url' => '/stats/list', 'show' => true],
//                ['title' => "统计添加", 'url' => '/stats/add', 'show' => $this->is_admin && 2],
            ],
        ];

        $mainNavList = [
            'main' => ['title'=>'首页','url'=>'/main/index','show'=>true],
            'user' => ['title'=>'用户管理','url'=>'/user/list','show'=>$this->is_admin && 2],
            'stats' => ['title'=>'统计数据','url'=>'/stats/list','show'=>true],
        ];

        $this->assign('navleft', isset($navlist[$cname]) ? $navlist[$cname] : $navlist['main']);
        $this->assign('mainnavleft', $mainNavList);
        $this->assign('username',$this->_session->get("USER_REALNAME"));
    }


}
