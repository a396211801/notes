<?php

class Controller_Index extends Web
{
    protected $layout = '';

    public function init()
    {
        parent::init();
    }

    public function indexAction()
    {
        $this->display();
    }

}
