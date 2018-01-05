<?php

class Controller_Shield extends Admin
{
    protected $model_shield;
    protected $layout = 'base';

    public function init()
    {
        parent::init();
        $this->model_shield = new Model_Shield();
    }

    public function tplTypes($id)
    {
        $list = [
            '1' => '棋牌',
            '2' => '金融',
            '3' => '网赚',
            '4' => '电商',
            '5' => '其他'
        ];
        return isset($list[$id]) ? $list[$id] : "";
    }

    public function statusNames($id)
    {
        $list = [
            "0" => "正常",
            "1" => "关闭",
        ];
        return isset($list[$id]) ? $list[$id] : "";
    }


    public function listAction()
    {
        $list = $this->model_shield->getList([], fn_get_val('p', 1), 10);
        if ($list) {
            foreach ($list['list'] as &$value) {
                $value['industry_name'] =  $this->tplTypes($value['industry_id']);
            }
        }
        $this->assign('list', $list['list']);
        $this->assign('count', $list['count']);
        $this->assign("industryTypes", function ($id) {
            return $this->tplTypes($id);
        });
        $this->display();
    }

    public function addAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
            $res = $this->model_shield->addShield($data);

            if ($res['ret'] == 0) {
                fn_ajax_return(1, $res['msg'], "");
            } else {
                fn_ajax_return(0, "添加成功", "");
            }
        }
        $this->display();
    }

    public function delAction()
    {
        if ($this->_request->isPost()) {
            $id = $this->_request->getPost("tid");
            $res = $this->model_shield->delShield($id);
            if ($res['ret'] == 1) {
                fn_ajax_return(0, "删除成功", "");
            } else {
                fn_ajax_return(0, $res['msg'], "");
            }
        }
    }

    public function editAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
             $res = $this->model_shield->editShield($data);

            if ($res['ret'] == 1) {
                fn_ajax_return(0, "修改成功", "");
            } else {
                fn_ajax_return(0, $res['msg'], "");
            }
        }
        $id = $this->_request->getQuery("id");
        $info = $this->model_shield->getDetail(['id'=>$id]);
        $this->assign('info', $info['data']);
        $this->display();
    }
}
