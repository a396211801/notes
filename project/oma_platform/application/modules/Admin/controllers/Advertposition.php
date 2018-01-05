<?php
/**
 * Created by IntelliJ IDEA.
 * User: zhanghuang
 * Date: 17-12-5
 * Time: 下午1:29
 * 广告位管理controller
 */
class Controller_Advertposition extends Admin
{
    protected $layout = 'base';
    protected $model_advertPosition;
    protected  $model_user;
    protected  $model_shield;
    public function init()
    {
        parent::init();
        $this->model_advertPosition = new Model_AdvertPosition();
        $this->model_user = new Model_User();
        $this->model_shield = new Model_Shield();
        $status = [ '3' => '待审核', '1' => '审核通过', '2' => '审核未通过'];
        $industry = [ '1' => '棋牌', '2' => '金融', '3' => '网赚', '4' => '电商', '5' => '其他'];
        $this->assign('industry',$industry);
        $this->assign('status',$status);
    }

    /**
     * 广告位列表
     */
    public function indexAction()
    {
        $list = $this->model_advertPosition->getList($this->_request->getQuery());
        $shield_info  = $this->model_shield->select(['id', 'name', 'urls']);
        $this->assign('shield_info',$shield_info);
        $this->assign('list',$list);
        $this->display();
    }

    /**
     * 新增广告位
     */
    public function addAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            //验证数据
            $result = $this->model_advertPosition->checkAddData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }

            $list = $this->model_advertPosition->addAdvertPosition($data);
            if ($list['ret'] == 1) fn_ajax_return(1, '添加成功', '');
            fn_ajax_return(0, '添加失败', '');
        } else {
            $users = $this->model_user->select(['id','user_name'], ['status' => 0]);
            $this->assign('users',$users);
            $this->display();
        }
    }

    /**
     * 修改广告位
     */
    public function editAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            //验证数据
            $result = $this->model_advertPosition->checkEditData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }

            $list = $this->model_advertPosition->editAdvertPosition($data);
            if ($list['ret'] == 1) fn_ajax_return(1, '修改成功', '');
            fn_ajax_return(0, '修改失败', '');
        } else {
            $data = $this->_request->getQuery();
            $info = $this->model_advertPosition->getDetail($data);
            $users = $this->model_user->select(['id','user_name'], ['status' => 0]);
            $this->assign('users',$users);
            $this->assign('list',$info);
            $this->display();
        }
    }
    /**
     * 审核广告位
     */
    public function examineAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            //验证数据
            $result = $this->model_advertPosition->checkExamineData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }
            $list = $this->model_advertPosition->examineAdvertPosition($data);
            if ($list['ret'] == 1) fn_ajax_return(1, '审核成功', '');
            fn_ajax_return(0, '审核失败', '');
        }
    }

    /**
     * 删除广告位
     */
    public function delAdvertPositionAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            //验证数据
            $result = $this->model_advertPosition->checkDelData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }
            $list = $this->model_advertPosition->delAdvertPosition($data);
            if ($list['ret'] == 1) fn_ajax_return(1, '删除成功', '');
            fn_ajax_return(0, '删除失败', '');
        }
    }

    /**
     * 设置广告位屏蔽包
     */
    public function setAdvertPositionShieldAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            //验证数据
            $result = $this->model_advertPosition->checksetData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }
            $list = $this->model_advertPosition->setAdvertPositionShield($data);
            if ($list['ret'] == 1) fn_ajax_return(1, '设置成功', '');
            fn_ajax_return(0, '设置失败', '');
        }
    }

    /**
     * 修改屏蔽条件
     */
    public function updateSetShieldAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            //验证数据
            $result = $this->model_shield->checkEditData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }
            $list = $this->model_shield->editShield($data);
            if ($list['ret'] == 1) fn_ajax_return(1, '修改成功', '');
            fn_ajax_return(0, '修改失败', '');
        }
    }

    /**
     * 取消屏蔽包
     */
    public function cancelSetShieldAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            //验证数据
            $result = $this->model_advertPosition->checkDelData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }
            $list = $this->model_advertPosition->cancelSetShield($data);
            if ($list['ret'] == 1) fn_ajax_return(1, '取消成功', '');
            fn_ajax_return(0, '取消失败', '');
        }
    }


    /**
     * 获取广告位信息
     */
    public function getDetailAction()
    {
        $list = $this->model_advertPosition->getDetail($this->_request->getPost());
        if ($list['ret'] == 1) fn_ajax_return(1, '获取成功', $list['data']);
        fn_ajax_return(0, '获取失败', '');
    }

    /**
     * 设置第三方
     */
    public function setThirdInfoAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            //验证数据
            $result = $this->model_advertPosition->checkThirdInfoData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }
            $list = $this->model_advertPosition->setThirdInfo($data);
            if ($list['ret'] == 1) fn_ajax_return(1, '设置成功', '');
            fn_ajax_return(0, '设置失败', '');
        }
    }

    /**
     * 取消第三方
     */
    public function unsetThirdInfoAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            //验证数据
            $result = $this->model_advertPosition->checkDelData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }
            $list = $this->model_advertPosition->unsetThirdInfo($data);
            if ($list['ret'] == 1) fn_ajax_return(1, '取消成功', '');
            fn_ajax_return(0, '取消失败', '');
        }
    }

    /**
     * 广告位上传图片
     */
    public function adwUploadImgAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();

            //验证数据
            $result = $this->model_advertPosition->checkAdwUploadData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }
            $list = $this->model_advertPosition->adwUploadImg($data);
            if ($list['ret'] == 1) fn_ajax_return(1, '设置成功', '');
            fn_ajax_return(0, '设置失败', '');
        }
    }



}