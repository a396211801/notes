<?php

/**
 * Created by IntelliJ IDEA.
 * User: lidc
 * Date: 17-11-24
 * Time: 上午10:21
 */
class Controller_User extends \App\User
{
    private $user;
    private $username;
    protected $layout = "layout";
    protected $position;

    public function init()
    {
        parent::init();
        $this->user = new \Model\User();
        $this->username = new \Model\UserName();
    }

    public function listAction()
    {
        if (IS_POST) {
            $query = $this->_request->getPost();
            $p = isset($query['page']) ? $query['page'] : 1;
            $l = isset($query['limit']) ? $query['limit'] : 10;
            $list = $this->user->getList($query, $p, $l);
            fn_ajax_return(0, "", $list['list'], ['count' => $list['count']]);
        } else {
            $this->display("User/list");
        }
    }

    public function addAction()
    {
        if (IS_POST) {
            $post = $this->_request->getPost();
            $post['position'] = 1;
            list($res, $msg) = $this->user->addUser($post);
            fn_ajax_return($res, $msg, "");
        } else {
            $this->display("User/add");
        }
    }

    public function editAction()
    {
        if (IS_POST) {
            $post = $this->_request->getPost();
            list($res, $msg) = $this->user->editUser($post);
            fn_ajax_return($res, $msg, "");
        } else {
            $this->display("User/edit");
        }
    }

    public function editPwdAction()
    {
        if (IS_POST) {
            $post = $this->_request->getPost();
            $post['id'] = $this->user_id;
            list($res, $msg) = $this->user->editPwd($post);
            fn_ajax_return($res, $msg, "");
        }
    }

    public function getAction()
    {
        $post = $this->_request->getQuery();
        $uid = isset($post['uid']) ? $post['uid'] : 0;

        if (!$uid) {
            fn_ajax_return(1, "参数错误");
        }

        $uinfo = $this->user->getUserById($uid);
        if (!$uinfo) {
            fn_ajax_return(1, "用户不存在");
        } else {
            unset($uinfo['password']);
            fn_ajax_return(0, "", $uinfo);
        }
    }

    public function delAction()
    {
        if (IS_POST) {
            $post = $this->_request->getPost();
            $uid = isset($post['uid']) ? $post['uid'] : 0;

            if (!$uid) {
                fn_ajax_return(1, "参数错误");
            }
            $res = $this->user->delUser($uid);
            if ($res) {
                fn_ajax_return(0, "删除成功");
            } else {
                fn_ajax_return(1, "删除失败");
            }
        }
    }

    public function userlistAction()
    {
        $list = $this->user->userList();
        fn_ajax_return(0, "", $list);
    }

    public function namelistAction()
    {
        if (IS_POST) {
            $query = $this->_request->getPost();
            $p = isset($query['page']) ? $query['page'] : 1;
            $l = isset($query['limit']) ? $query['limit'] : 10;
            $list = $this->username->getList($query, $p, $l);
            fn_ajax_return(0, "", $list['list'], ['count' => $list['count']]);
        } else {
            $this->assign('uid', isset($_GET['uid']) ? $_GET['uid'] : "");
            $this->assign('uname', isset($_GET['uname']) ? $_GET['uname'] : "");
            $this->display("User/namelist");
        }
    }

    public function nameaddAction()
    {
        if (IS_POST) {
            $post = $this->_request->getPost();
            list($res, $msg) = $this->username->addNames($post);
            fn_ajax_return($res, $msg, "");
        } else {
            $this->display("User/add");
        }
    }

    public function nameeditAction()
    {
        if (IS_POST) {
            $post = $this->_request->getPost();
            list($res, $msg) = $this->username->editNames($post);
            fn_ajax_return($res, $msg, "");
        } else {
            $this->display("User/edit");
        }
    }

    public function namedelAction()
    {
        if (IS_POST) {
            $post = $this->_request->getPost();
            $uid = isset($post['id']) ? $post['id'] : 0;

            if (!$uid) {
                fn_ajax_return(1, "参数错误");
            }
            $res = $this->username->delNames($uid);
            if ($res) {
                fn_ajax_return(0, "删除成功");
            } else {
                fn_ajax_return(1, "删除失败");
            }
        }
    }
}