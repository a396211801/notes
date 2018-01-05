<?php

/**
 * Description of Base
 *
 * @author Sgenmi
 * @date 2016-10-31
 * @email  150560159@qq.com
 */

namespace App;

class Auth {

    private $userId = 0;
    private $authNum = 0;

    public function __construct() {
        
    }

    public static function get_menu() {

        $userId = \Yaf\Session:: getInstance()->get('ADMIN_ID');
        $authNum = \Yaf\Session:: getInstance()->get('ADMIN_AUTH_NUM');
        $model_menu = new \Model_AdminMenu();
        $all_menu = $model_menu->getMenuByUserId($authNum, $userId);

        $ret = array(
            'menu' => $model_menu->getMenuTree(0),
            'auth' => array()
        );

        foreach ($all_menu as $v) {
            if ($v['code']) {
                $ret['auth'][] = $v['code'];
            }
        }
        unset($all_menu);
        return $ret;
    }

    public static function check($code) {
        if (!$code) {
            return FALSE;
        }
        $auth_serialize = \Yaf\Session:: getInstance()->get('ADMIN_AUTH');
        if (!$auth_serialize) {
            return FALSE;
        }
        $auth_arr = unserialize($auth_serialize);
        if (in_array($code, $auth_arr)) {
            return TRUE;
        } else {
            return FALSE;
        }
    }

}
