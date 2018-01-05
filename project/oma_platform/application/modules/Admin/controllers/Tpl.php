<?php

class Controller_Tpl extends Admin
{
    protected $model_tpl;
    protected $layout = 'base';

    public function init()
    {
        parent::init();
        $this->model_tpl = new Model_Tpl();
    }

    public function tplTypes($id)
    {
        $list = [
            "1" => "砸金蛋",
            "2" => "转盘",
            "3" => "娃娃机",
            "4" => "刷红包",
            "5" => "捞奖品",
            "6" => "转盘",
            "7" => "打金蛋",
            "8" => "筛子",
            "9" => "砸鸭子",
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
        $list = $this->model_tpl->getList([], fn_get_val('p', 1), 10);
        if ($list) {
            foreach ($list['list'] as &$value) {
                $value['type_name'] = $this->tplTypes($value['type_id']);
                $value['status_name'] = $this->statusNames($value['status']);
            }
        }
        $this->assign('list', $list['list']);
        $this->assign('count', ceil($list['count'] / 10));
        $this->display();
    }

    public function addAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
            unset($data['file']);
            $data['uniqe_name'] = $data['is_third'] == 1 ? $data['uniqe_name1'] : $data['uniqe_name2'];
            unset($data['uniqe_name1']);
            unset($data['uniqe_name2']);
            list($err, $res) = $this->model_tpl->addInfo($data);

            if ($err == "1") {
                fn_ajax_return(1, $res, "");
            }

            if ($res > 0) {
                fn_get_contents("http://".$_SERVER['HTTP_HOST']."/ts/api/v1/update_tpl");
                fn_ajax_return(0, "添加成功", "");
            } else {
                fn_ajax_return(0, "添加失败", "");
            }
        }
        $this->display();
    }

    public function delAction()
    {
        if ($this->_request->isPost()) {
            $id = $this->_request->getPost("tid");
            $res = $this->model_tpl->deleteInfo($id);
            if ($res > 0) {
                fn_get_contents("http://".$_SERVER['HTTP_HOST']."/ts/api/v1/update_tpl");
                fn_ajax_return(0, "删除成功", "");
            } else {
                fn_ajax_return(0, "删除失败", "");
            }
        }
    }

    public function editAction()
    {
        if ($this->_request->isPost()) {
            $data = $this->_request->getPost();
            unset($data['file']);
            $data['uniqe_name'] = $data['is_third'] == 1 ? $data['uniqe_name1'] : $data['uniqe_name2'];
            $data['third_url'] = $data['is_third'] == 1 ? $data['third_url'] : "";
            unset($data['uniqe_name1']);
            unset($data['uniqe_name2']);

            list($err, $res) = $this->model_tpl->editInfo($data);

            if ($err == "1") {
                fn_ajax_return(1, $res, "");
            }

            if ($res > 0) {
                fn_get_contents("http://".$_SERVER['HTTP_HOST']."/ts/api/v1/update_tpl");
                fn_ajax_return(0, "编辑成功", "");
            } else {
                fn_ajax_return(0, "编辑失败", "");
            }
        }
        $id = $this->_request->getQuery("id");
        $info = $this->model_tpl->info($id);
        $this->assign('info', $info);
        $this->display();
    }

    public function uploadAction()
    {
        $data = $this->_request->getPost();
        if (!isset($_FILES['file']['tmp_name'])) {
            $this->return_json('请上传图片');
        }
        $tmp_name = $_FILES['file']['tmp_name'];
        $fileInfo = getimagesize($tmp_name);
        $width = $fileInfo[0]; //宽
        $height = $fileInfo[1]; //高
        if (isset($data['type']) && $data['type']) {
            if ($data['type'] == 1) {
                //640*300
                if ($width != 640 || $height != 300) {
                    $this->return_json('图片尺寸不对');
                }
            } else if ($data['type'] == 2) {
                ///224*140
                if ($width != 224 || $height != 140) {
                    $this->return_json('图片尺寸不对');
                }
            }
        }

        if (isset($data['js_type']) && $data['js_type']) {
            if ($data['js_type'] == 1 || $data['js_type'] == 2 || $data['js_type'] == 5) {
                if ($width != 640 || !in_array($height, [200, 150, 100])) {
                    fn_ajax_return(1, '图片尺寸不对');
                }
            } elseif ($data['js_type'] == 3 || $data['js_type'] == 4) {
                if ($width != 160 || $height != 160) {
                    fn_ajax_return(1, '图片尺寸不对');
                }
            } elseif ($data['js_type'] == 6) {
                if ($width != 230 || $height != 300) {
                    fn_ajax_return(1, '图片尺寸不对');
                }
            }
        }
        fn_upload_image_static();
    }

    private function return_json($msg)
    {
        echo json_encode([
            "code" => 1,
            "msg" => "",
            "data" => [
                "src" => $msg,
            ]
        ]);
        exit;
    }


}
