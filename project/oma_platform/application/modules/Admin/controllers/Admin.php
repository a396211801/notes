<?php
/**
 * Created by IntelliJ IDEA.
 * User: ying
 * Date: 17-12-5
 * Time: 下午1:45
 */
class Controller_Admin extends Admin
{
    protected $model_admin;
    protected $model_role_group;
    protected $layout = 'base';

    public function init()
    {
        parent::init();
        $this->model_admin= new Model_Admin();
        $this->model_role_group = new Model_RoleGroup();
    }

    /**
     * 后台帐号列表
     */
    public function accountListAction()
    {
        $data = $this->_request->getQuery();
        $list = $this->model_admin->getList($data);

        $this->assign('list',$list['list']);
        $this->assign('count',$list['count']);
        $this->display();
    }

    /**
     * 新建后台帐号
     */
    public function createAccountAction()
    {
        if ($this->_request->isPost()) {

            $data = $this->_request->getPost();

            //验证新建后台帐号-数据是否正确
            $result = $this->model_admin->checkCreateData($data);
            if($result['ret'] != 1) {
                fn_ajax_return(0,$result['msg']);
            }

            //新建后台帐号
            $create_result = $this->model_admin->createAccount($data);
            if($create_result) {
                fn_ajax_return(1,'注册成功!');
            } else {
                fn_ajax_return(0,'系统繁忙，请联系管理员!');
            }
        }

        //权限组
        $role_group = $this->getRuleGroup();
        $this->assign('role_group',$role_group);

        $this->display();
    }

    /**
     * 新建权限组
     */
    public function createRoleGroupAction()
    {
        if ($this->_request->isPost()) {

            $name = $this->_request->getPost('name');
            if(!isset($name) || !$name) {
                fn_ajax_return(0,'请输入权限组名称!');
            }

            //新建后台帐号
            $create_result = $this->model_role_group->createRoleGroup($name);
            if($create_result) {
                fn_ajax_return(1,'操作成功!');
            } else {
                fn_ajax_return(0,'系统繁忙，请联系管理员!');
            }
        }
        $this->display();
    }

    /**
     * 编辑后台帐号
     */
    public function editAccountAction()
    {
        if ($this->_request->isPost()) {

            $data = $this->_request->getPost();

            //验证编辑后台帐号-数据是否正确
            $result = $this->model_admin->checkEditData($data);
            if($result['ret'] != 1) {
                fn_ajax_return(0,$result['msg']);
            }

            //编辑后台帐号
            $create_result = $this->model_admin->editAccount($data);
            if($create_result) {
                fn_ajax_return(1,'编辑成功!');
            } else {
                fn_ajax_return(0,'系统繁忙，请联系管理员!');
            }
        }

        //判断参数是否正确
        $id =  $this->_request->getQuery();
        if(!isset($id) || intval($id) <= 0) {
            Header("Location: /admin/index/index");
        }
        $data = $this->model_admin->get('*',['AND'=>['id'=>$id]]);
        if(empty($data)) {
            Header("Location: /admin/index/index");
        }

        //权限组
        $role_group = $this->getRuleGroup();

        $this->assign('role_group',$role_group);
        $this->assign('data',$data);

        $this->display();
    }

    /**
     * 冻结后台帐号
     */
    public function frozenAccountAction()
    {
        if ($this->_request->isPost()) {

            $id = $this->_request->getPost('id');

            //验证数据是否正确
            if(!isset($id) || intval($id) <= 0) {
                return ['ret' => 0, 'msg' => '参数错误!'];
            }

            //冻结后台帐号
            $create_result = $this->model_admin->frozenAccount($id);
            if($create_result) {
                fn_ajax_return(1,'冻结成功!');
            } else {
                fn_ajax_return(0,'系统繁忙，请联系管理员!');
            }
        }
    }

    /**
     * 解冻后台帐号
     */
    public function disFrozenAccountAction()
    {
        if ($this->_request->isPost()) {

            $id = $this->_request->getPost('id');

            //验证数据是否正确
            if(!isset($id) || intval($id) <= 0) {
                return ['ret' => 0, 'msg' => '参数错误!'];
            }

            //冻结后台帐号
            $create_result = $this->model_admin->disFrozenAccount($id);
            if($create_result) {
                fn_ajax_return(1,'解冻成功!');
            } else {
                fn_ajax_return(0,'系统繁忙，请联系管理员!');
            }
        }
    }

    /**
     * 重置密码
     */
    public function resetPasswordAction()
    {
        if ($this->_request->isPost()) {

            $id = $this->_request->getPost('id');

            //验证数据是否正确
            if(!isset($id) || intval($id) <= 0) {
                return ['ret' => 0, 'msg' => '参数错误!'];
            }

            //重置密码
            $create_result = $this->model_admin->resetPassword($id);
            if($create_result) {
                fn_ajax_return(1,'重置成功!');
            } else {
                fn_ajax_return(0,'系统繁忙，请联系管理员!');
            }
        }

    }

    /**
     * 删除帐号
     */
    public function deleteAccountAction()
    {

        if ($this->_request->isPost()) {

            $id = $this->_request->getPost('id');

            //验证数据是否正确
            if(!isset($id) || intval($id) <= 0) {
                return ['ret' => 0, 'msg' => '参数错误!'];
            }

            //重置密码
            $create_result = $this->model_admin->deleteAccount($id);
            if($create_result) {
                fn_ajax_return(1,'操作成功!');
            } else {
                fn_ajax_return(0,'系统繁忙，请联系管理员!');
            }
        }

    }






}