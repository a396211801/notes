<?php

class Controller_Index extends Admin
{
    protected $layout = 'base';

    public function init()
    {
        parent::init();
    }

    public function indexAction()
    {
        $this->display();
    }


}