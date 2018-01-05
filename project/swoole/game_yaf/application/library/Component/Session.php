<?php
namespace Component;
class Session
{
    public function __construct()
    {
        $this->session = Yaf\Session::getInstance();
    }

    public function get($name)
    {
        return $this->session->get($name);
    }
    
    
    public function set($name,$value)
    {
        return $this->session->set($name,$value);
    }
    
    
    public function del($name)
    {
        return $this->session->del($name);
    }
    
}
