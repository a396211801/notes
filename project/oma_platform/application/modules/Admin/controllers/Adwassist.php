<?php

/*
 *辅助投放
 */

class Controller_Adwassist extends Admin
{
    protected $layout = 'base';

    public function init()
    {
        parent::init();
    }

    /*
     * 添加
     */
    public function addAction()
    {
        $m = new Model_AdvertPositionAssist();
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
            $res = $m->AddInfo($data);
            if ($res) {
                fn_ajax_return(1, $res, "");
            } else {
                fn_ajax_return(0, "添加成功", "");
            }
        }
        $this->assign('adwlist', $m->GetAdwList());
        $this->display();
    }

    /*
     * 修改
     */
    public function editAction()
    {
        $m = new Model_AdvertPositionAssist();

        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
            $res = $m->EditInfo($data);
            if ($res) {
                fn_ajax_return(1, $res, "");
            } else {
                fn_ajax_return(0, "修改成功", "");
            }
        }

        $info = $m->GetInfo($this->_request->getQuery("id"));
        if (!$info) {
            fn_js_redirect("没有该数据", "/admin/adwassist/list");
            exit;
        }

        $this->assign('info', $info);
        $this->assign('adwlist', $m->GetAdwList());
        $this->display();
    }

    /*
     * 删除
     */
    public function delAction()
    {
        $m = new Model_AdvertPositionAssist();
        $id = $this->_request->getQuery("id");
        if ($id) {
            fn_ajax_return(1, "参数错误", "");
        }
        $res = $m->DeleteInfo($id);
        if ($res) {
            fn_ajax_return(0, "删除成功", "");
        } else {
            fn_ajax_return(1, "删除失败", "");
        }
    }

    /*
     * 列表
     */
    public function listAction()
    {
        $m = new Model_AdvertPositionAssist();
        $list = $m->GetList([], fn_get_val('p', 1), 10);
        $this->assign('list', $list['list']);
        $this->assign('count', ceil($list['count'] / 10));
        $this->display();
    }

    /*
     * 获取区域
     */
    public function getAreaAction()
    {
        $m = new Model_Area();
        $list = $m->GetProvinceCitys();
        fn_ajax_return(0, "", $list);
    }

}