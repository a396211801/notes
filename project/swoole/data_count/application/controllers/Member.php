<?php

/**
 * Created by IntelliJ IDEA.
 * User: lidc
 * Date: 17-11-24
 * Time: 上午9:32
 */
class Controller_Member extends \App\Web
{
    private $model_user;

    public function init()
    {
        parent::init();
        $this->model_user = new \Model\User();
    }

    public function loginAction()
    {
        if ($this->is['IS_POST'] && $this->is['IS_AJAX']) {
            $post = $this->_request->getPost();
            $username = isset($post['account']) ? $post['account'] : "";
            $password = isset($post['password']) ? md5($post['password']) : "";
            $user_info = $this->model_user->checkLogin($username,$password);

            if (!$user_info) {
                fn_ajax_return(1, '验证未通过');
                return;
            }
            $this->_session->set('USER_ID', $user_info['id']);
            $this->_session->set('USER_REALNAME', $user_info['username']);
            $this->_session->set('USER_POSITION', $user_info['position']);
            fn_ajax_return(0, 'OK');
            return;
        }
        $this->display('Member/login');
    }

    public function logoutAction()
    {
        $this->_session->del('USER_ID');
        $this->_session->del('USER_REALNAME');
        $this->_session->del('USER_POSITION');
        session_unset();
        session_destroy();
        $this->redirect("/Member/login");
    }


}