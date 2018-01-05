<?php

/*
 * 主页
 */
class Controller_Main extends \App\User
{
    protected $layout = "layout";

    public function init()
    {
        parent::init();
    }

    public function indexAction()
    {
        $this->display("Main/index");
    }
}