<?php

/**
 * Created by IntelliJ IDEA.
 * User: ying
 * Date: 17-12-7
 * Time: 上午9:19
 */
class Controller_Settlement extends Front
{
    protected $layout = 'base';
    protected $model_pay;

    public function init()
    {
        parent::init();
        $this->model_pay = new Model_Pay();
    }

    /**
     * 结算报表-列表
     */
    public function indexAction()
    {
        $user_info = $this->_session->get('user_info');

        $data = $this->_request->getQuery();
        $data['user_id'] = $user_info['id'];
        $list = $this->model_pay->getList($data);

        $this->assign('list', $list['list']);
        $this->assign('count', $list['count']);
        $this->display();
    }

}