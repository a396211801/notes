<?php

/**
 * Description of Error
 *
 * @author Sgenmi
 */
class Controller_Error extends \Base
{
    protected $layout = '';


    public function init()
    {
        parent::init();
    }

    public function errorAction($exception)
    {

        switch ($exception->getCode()) {
            case YAF_ERR_URL:
                $this->showMsg($exception->getMessage(), YAF_ERR_URL);
                break;
            case YAF_ERR_DATA:
                $this->showMsg($exception->getMessage(), YAF_ERR_DATA);
                break;
            default:
                $this->E404($exception);
                break;
        }
    }

    private function E404($error)
    {
        if (DEVELOPMENT) {
            $msg = "404:" . str_replace(BASE_PATH, "", $error->getMessage());
            $this->assign('msg', $msg);
            $this->assign('title', '404-久旭推广');
            $this->display("error/errorPage");
        } else {
            $this->display("error/errorPage");
        }
    }

    /**
     * url错误。
     * 如参数非法数据
     */
    public function showMsg($msg, $code)
    {
        echo sprintf('错误消息：%s，错误代码：%d 点击<a href="http://zhi.9xu.com">这里</a>返回首页', $msg, $code);
    }

}
