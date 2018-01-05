<?php

/**
 * Created by IntelliJ IDEA.
 * User: ying
 * Date: 17-12-6
 * Time: 上午9:24
 */
class Controller_Advertposition extends Front
{
    protected $model_advert_position;
    protected $model_user;
    protected $layout = 'base';

    public function init()
    {
        parent::init();
        $this->model_advert_position = new Model_AdvertPosition();
        $this->model_user = new Model_User();
        $status = ['3' => '待审核', '1' => '审核通过', '2' => '审核未通过'];
        $this->assign('status', $status);
    }

    /**
     * 广告位列表
     */
    public function indexAction()
    {
        $user_info = $this->_session->get('user_info');
        $data = $this->_request->getQuery();
        $data['user_id'] = $user_info['id'];
        $list = $this->model_advert_position->getList($data);
        $this->assign('list', $list);
        $this->display();
    }

    /**
     * 新增广告位
     */
    public function addAction()
    {
        if ($this->_request->isPost()) {

            $data = $this->_request->getPost();

            $user_info = $this->_session->get('user_info');
            $data['user_id'] = $user_info['id'];

            //验证数据
            $result = $this->model_advert_position->checkaddData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }

            $list = $this->model_advert_position->addAdvertPosition($data);
            if ($list['ret'] == 1) fn_ajax_return(1, '添加成功', '');
            fn_ajax_return(0, '添加失败', '');
        } else {
            $this->display();
        }
    }

    /**
     * 修改/重新提交广告位
     */
    public function editAction()
    {
        if ($this->_request->isPost()) {

            $data = $this->_request->getPost();

            $user_info = $this->_session->get('user_info');
            $data['user_id'] = $user_info['id'];

            //验证数据
            $result = $this->model_advert_position->checkEditData($data);
            if ($result['ret'] != 1) {
                fn_ajax_return(0, $result['msg']);
            }
            $data['status'] = 0;
            $list = $this->model_advert_position->editAdvertPosition($data);
            if ($list['ret'] == 1) fn_ajax_return(1, '操作成功', '');
            fn_ajax_return(0, '操作失败', '');
        } else {
            $data = $this->_request->getQuery();
            $info = $this->model_advert_position->getDetail($data);
            $this->assign('list', $info);
            $this->display();
        }
    }

}