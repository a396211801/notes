<?php
/**
 * Created by IntelliJ IDEA.
 * User: ying
 * Date: 17-12-5
 * Time: 下午4:39
 */
class Controller_Finance extends Admin
{
    protected $model_user;
    protected $model_pay;
    protected $layout = 'base';

    public function init()
    {
        parent::init();
        $this->model_user = new Model_User();
        $this->model_pay = new Model_Pay();
    }

    /**
     * 财务信息
     */
    public function financeInfoAction()
    {
        $data = $this->_request->getQuery();
        $list = $this->model_user->getList($data);
        $this->assign('list',$list['list']);
        $this->assign('count',$list['count']);

        $this->display();
    }

    /**
     * 财务管理
     */
    public function financeManageAction()
    {
        $data = $this->_request->getQuery();
        $list = $this->model_user->financeManage($data);
        $this->assign('list',$list['list']);
        $this->assign('count',$list['count']);
        $this->display();
    }

    /**
     * 结算报表
     */
    public function settlementAction()
    {
        $data = $this->_request->getQuery();
        $list = $this->model_pay->getList($data);
        $this->assign('list',$list['list']);
        $this->assign('count',$list['count']);
        $this->display();
    }


}