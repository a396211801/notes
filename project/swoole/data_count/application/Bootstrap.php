<?php

/**
 * Description of Bootstrap
 *
 * @author Sgenmi
 * @date 2016-11-8
 * @email:150560159@qq.com
 */
class Bootstrap extends Yaf\Bootstrap_Abstract {

    private $_config;

    //配置考备
    public function _initBootstrap() {
        $this->_config = Yaf\Application::app()->getConfig();
        Yaf\Registry::set('_config', $this->_config);
    }

    public function _initIncludePath() {
        set_include_path(get_include_path() . PATH_SEPARATOR . $this->_config->application->library);
    }

    //是否开始错语报告，上线后，一定要关掉
    public function _initErrors() {
        if ($this->_config->application->showErrors) {
            ini_set('display_errors', 'On');
        } else {
            error_reporting(0);
            ini_set('display_errors', 'Off');
        }
    }

    //导入公共库

    public function _initCommon() {
        Yaf\Loader::import("Function/Fn_arr.php");
    }

    public function _initRoutes(Yaf\Dispatcher $dispatcher) {
//        $router = $dispatcher->getRouter();
        //Index前页
//        $router->addRoute('Index_index', new \Yaf\Route\Rewrite('/index', array('controller' => 'Index', "action" => "index")));
    }

    public function _initPjax() {

            $request = new Yaf\Request\Http();
            if (isset($_SERVER['HTTP_X_PJAX']) && $_SERVER['HTTP_X_PJAX']) {
                define("IS_PJAX", TRUE);
                define('IS_AJAX', FALSE);
            } else {
                define("IS_PJAX", FALSE);

                if ($request->isXmlHttpRequest()) {
                    define('IS_AJAX', TRUE);
                } else {
                    define('IS_AJAX', FALSE);
                }
            }
            //判断是否是post,get
            if($request->isPost() )
            {
                define('IS_POST', TRUE);
            }  else {
                define('IS_POST', FALSE);
            }
    }

    public function _initLayout(Yaf\Dispatcher $dispatcher) {
        $layout = new \Core\View\Layout($this->_config->application->layout->directory);
        $dispatcher->setView($layout);
    }


}
