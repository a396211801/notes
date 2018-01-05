<?php

class Encrypt {

    const key = 'b22829d624644140';
    private $encrypter;

    static $init=null;
    
    
    public static function init()
    {
        if(!self::$init )
        {
            self::$init = new self();
        }
        return self::$init ;
    }

    public function __construct() {
        $this->encrypter = mcrypt_module_open(MCRYPT_RIJNDAEL_128, '', MCRYPT_MODE_CBC, '');
    }

    public function encrypt($origData) {
        $origData = $this->pkcs5padding($origData, mcrypt_enc_get_block_size($this->encrypter));
        mcrypt_generic_init($this->encrypter, self::key, substr(self::key, 0, 16));
        $ciphertext = mcrypt_generic($this->encrypter, $origData);
        mcrypt_generic_deinit($this->encrypter);
        return bin2hex($ciphertext);
    }

    public function decrypt($ciphertext) {
        $ciphertext = hex2bin($ciphertext);
        mcrypt_generic_init($this->encrypter, self::key, substr(self::key, 0, 16));
        $origData = mdecrypt_generic($this->encrypter, $ciphertext);
        mcrypt_generic_deinit($this->encrypter);
        return $this->pkcs5unPadding($origData);
    }
            
    public function close() {
        mcrypt_module_close($this->encrypter);
    }

    function pkcs5padding($data, $blocksize) {
        $padding = $blocksize - strlen($data) % $blocksize;
        $paddingText = str_repeat(chr($padding), $padding);
        return $data . $paddingText;
    }

    function pkcs5unPadding($data) {
        $length = strlen($data);
        $unpadding = ord($data[$length - 1]);
        return substr($data, 0, $length - $unpadding);
    }

}

//// AES-128
//$encrypter = new Encrypt();
//$data = '1600|1458923683';
//$result = $encrypter->encrypt($data);
//var_dump($result);
//var_dump(rtrim($encrypter->decrypt($result)));
//$encrypter->close();
