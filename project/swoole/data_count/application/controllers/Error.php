<?php

/**
 * Description of Error
 *
 * @author Sgenmi
 */
class Controller_Error extends Yaf\Controller_Abstract
{
    public function errorAction( $exception )
    {
         $this->getView()->setLayout("");
            Yaf\Dispatcher::getInstance()->disableView();
           $this->E404( $exception );
    }

    private function E404( $error )
    { 
        if( $error->getMessage()=='未登录')
        {
         
            $uri = $_SERVER['REQUEST_URI'];
            $ref="";
            if(strlen($uri)>3){
                  $ref= "http://".$_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
            }
           $this->redirect('/');
        }
        
        self::getView()->display("Error/404.php" );
    }
    

}
