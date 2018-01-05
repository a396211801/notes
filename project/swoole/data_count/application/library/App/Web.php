<?php

/**
 * Description of Web
 *
 * @author Sgenmi
 * @date 2014-02-18
 */

namespace App;

class Web extends \Yaf\Controller_Abstract {

    protected $request_http;
    protected $layout = '';
    protected $_config;
    protected $_session;
    protected $view_path;
    protected $_request;
    protected $is = array();
    protected $page_limit = 15;

    public function init() {
        $this->_config = \Yaf\Registry::get("_config");
        $this->_request = $this->getRequest();
        $this->_session =  \Yaf\Session:: getInstance();
        \Yaf\Dispatcher::getInstance()->disableView();

        $this->_is();
        $this->pajx();
    }

    //判断
    private function _is() {
        $this->is['IS_PJAX'] = IS_PJAX;
        $this->is['IS_AJAX'] = IS_AJAX;
        $this->is['IS_POST'] = IS_POST;
    }

    private function pajx() {
        if ($this->is['IS_PJAX'] || $this->is['IS_AJAX']) {
            $this->layout = NULL;
        }
        $this->getView()->setLayout($this->layout);
    }

    //渲染视图
    protected function display($view_path = NULL, array $tpl_vars = array()) {
        $this->set_view_path($view_path);
        self::getView()->display($this->view_path, $tpl_vars);
        return;
    }

    //返回视图->实际是在视图中，加载另一个视图用
    protected function render($view_path = NULL, array $tpl_vars = array()) {
        if (!$this->set_view_path($view_path)) {
            return;
        }

        echo $this->getView()->render($this->view_path, $tpl_vars);
    }

//    给视图中变量赋值
    protected function assign($name = NULL, $value = NULL) {
        if (!$name) {
            return;
        }

        if (is_string($name)) {
            if (!$value) {
                return;
            }
            return $this->getView()->assign($name, $value);
        } else {
            return $this->getView()->assign($name);
        }
    }

    private function set_view_path($view_path) {
        $fileInfo = pathinfo($view_path);
        if (!isset($fileInfo['extension'])) {
            $view_path .= "." . $this->_config->application->view->ext;
        }
        $this->view_path = $view_path;
    }


}
