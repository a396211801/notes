<?php

class PK {

    private $count_length = 60;
    private $username;
    private $password;
    private   $time ;

    public function __construct($username = null, $password = null) {
        $this->username = $username;
        $this->password = $password;
        $this->time = (string) time();
    }
    private function createPk($d) {
        $time = $this->time;
        $_arr = str_split($d);
        $StartPostion = $time[8];
        $yiwei = $time[9];
        $str = "";
        $i = 0;
        while (TRUE) {
            if ($i > $StartPostion && $i % 2 == 0 && $_arr) {
                $_str = array_pop($_arr);
                $_len = ord($_str);
//            if ($_len <= 117) {
//                $len = $_len + $yiwei;
//                if ($len <= 117) {
//                    $_len = $len;
//                }
//            }
                $str .= chr($_len);
            } else {
                if ($_arr) {
                    $rand_str = rand(33, 126);
                    $str .= chr($rand_str);
                } else {
                    break;
                }
            }
            $i++;
        }

        $leng = strlen($d) + (int) $yiwei;

        if ($leng < 10) {
            $leng = "0" . $leng;
        }
        return array('src' => $str, 'leng' => $leng);
    }

    private function createRand($length = 5) {
        $str = "";
        $i = 0;
        while ($length) {
            $rand_str = rand(33, 126);
            $str .= chr($rand_str);
            if ($i == $length) {
                break;
            }
            $i++;
        }
        return $str;
    }

    public function getEn() {
      
        $username_m = $this->createPk($this->username);
        $password_m = $this->createPk($this->password);
        $count = strlen($username_m['src']) + strlen($password_m['src']);
        $tmp = $username_m['src'] . $this->createRand($this->count_length - $count) . $password_m["src"];
        return  array('pk'=> str_replace(array("'", '"', "\\"), "@", $tmp), 'time'=> $this->time . $username_m['leng'] . $password_m['leng']);
    }
}