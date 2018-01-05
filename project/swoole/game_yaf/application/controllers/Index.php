<?php

class Controller_Index extends \Base
{

    public function init()
    {
        parent::init();
    }

    /**
     * 游戏页面
     * */
    public function indexAction()
    {
        $data = $this->_request->getQuery();
        if (isset($data['id']) && $data['id']) {
            $id = $data['id'];
            switch ($id) {
                case 2421:
                    $url = '2421';
                    break;
                case 2244:
                    $url = '2244';
                    break;
                case 2324:
                    $url = '2324';
                    break;
                case 2390:
                    $url = '2390';
                    break;
                case 2419:
                    $url = '2419';
                    break;
                case 2426:
                    $url = '2426';
                    break;
                case 2427:
                    $url = '2427';
                    break;
                case 3151:
                    $url = '3151';
                    break;
                case 4000:
                    $url = '4000';
                    break;
                case 4001:
                    $url = '4001';
                    break;
                case 4002:
                    $url = '4002';
                    break;
                default :
            }
        }

        if (!isset($url)) {
            $this->redirect('/?id=4000');
            exit;
        }
        $this->display($url);
    }

}
