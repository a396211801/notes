<?php

/**
 * Created by IntelliJ IDEA.
 * User: ying
 * Date: 17-12-5
 * Time: 下午5:13
 */
class Controller_User extends Front
{
    protected $layout = 'base';
    protected $model_user;

    public function init()
    {
        parent::init();
        $this->model_user = new Model_User();
    }

    /**
     * 用户信息
     */
    public function indexAction()
    {
        $this->display();
    }

    /**
     * 修改用户信息
     */
    public function editUserAction()
    {
        if ($this->_request->isPost()) {

            $user_info = $this->_session->get('user_info');

            $data = $this->_request->getPost();

            //验证编辑用户-数据是否正确
            $result = $this->model_user->checkEditData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }

            //编辑用户信息
            $create_result = $this->model_user->editUser($data, $user_info['id']);
            if ($create_result) {
                fn_ajax_return(1, '编辑成功!');
            } else {
                fn_ajax_return(0, '系统繁忙，请联系管理员!');
            }
        }
    }

}