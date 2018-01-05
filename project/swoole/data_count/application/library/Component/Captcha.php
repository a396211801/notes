<?php

# KCAPTCHA PROJECT VERSION 2.1
# Automatic test to tell computers and humans apart
# Copyright by Kruglov Sergei, 2006, 2007, 2008, 2011, 2016
# www.captcha.ru, www.kruglov.ru
# System requirements: PHP 4.0.6+ w/ GD
# NOTE! decomment string "function KCAPTCHA(){" and comment "function __construct(){" to complify with php below 5.0
# KCAPTCHA is a free software. You can freely use it for developing own site or software.
# If you use this software as a part of own sofware, you must leave copyright notices intact or add KCAPTCHA copyright notices to own.
# As a default configuration, KCAPTCHA has a small credits text at bottom of CAPTCHA image.
# You can remove it, but I would be pleased if you left it. ;)

namespace Component;

class Captcha {

    private $alphabet = "0123456789abcdefghijklmnopqrstuvwxyz";
    private $allowed_symbols = "23456789abcdegikpqsvxyz";
    private $length = 6;
    private $width = 160;
    private $height = 80;
    private $fluctuation_amplitude = 0; //符号的垂直波动幅度
    private $white_noise_density = 0;
    private $black_noise_density = 0;
    private $no_spaces = true;
    private $font = array();

# show credits
    private $show_credits = true;
    private $credits = 'sgenmi';
    private $foreground_color = array();
    private $background_color = array();
    private $jpeg_quality = 90;
    private $keystring = "";

    function __construct($font = array(), $length = 6, $no_spaces = TRUE,$width = 160, $height = 80,  $show_credits = TRUE, $credits = "sgenmi") {
        $this->length = $length;
        $this->width = $width;
        $this->height = $height;
        $this->no_spaces = $no_spaces;
        $this->font = $font;
        $this->show_credits = $show_credits;
        $this->credits = $credits;
        $this->foreground_color = array(mt_rand(0, 80), mt_rand(0, 80), mt_rand(0, 80));
        $this->background_color = array(mt_rand(220, 255), mt_rand(220, 255), mt_rand(220, 255));
        $this->white_noise_density = 1 / 6;
        $this->black_noise_density = 1 / 30;
    }

    public function create() {
        $alphabet_length = strlen($this->alphabet);
        do {
//            while (true) {
                $this->keystring = '';
                for ($i = 0; $i < $this->length; $i++) {
                    $this->keystring.=$this->allowed_symbols{mt_rand(0, strlen($this->allowed_symbols) - 1)};
                }
//                if (!preg_match('/cp|cb|ck|c6|c9|rn|rm|mm|co|do|cl|db|qp|qb|dp|ww/', $this->keystring))
//                    break;
//            }

            if (is_string($this->font)) {
                $font_file = $this->font;
            } else {
                $font_file = $this->font[mt_rand(0, count($this->font) - 1)];
            }

            $font = imagecreatefrompng($font_file);
            imagealphablending($font, true);
            $fontfile_width = imagesx($font);
            $fontfile_height = 60;

            $font_metrics = array();
            $symbol = 0;
            $reading_symbol = false;

            // loading font
            for ($i = 0; $i < $fontfile_width && $symbol < $alphabet_length; $i++) {
                $transparent = (imagecolorat($font, $i, 0) >> 24) == 127;

                if (!$reading_symbol && !$transparent) {
                    $font_metrics[$this->alphabet{$symbol}] = array('start' => $i);
                    $reading_symbol = true;
                    continue;
                }

                if ($reading_symbol && $transparent) {
                    $font_metrics[$this->alphabet{$symbol}]['end'] = $i;
                    $reading_symbol = false;
                    $symbol++;
                    continue;
                }
            }

            $img = imagecreatetruecolor($this->width, $this->height);
            imagealphablending($img, true);
            $white = imagecolorallocate($img, 255, 255, 255);
            $black = imagecolorallocate($img, 0, 0, 0);

            imagefilledrectangle($img, 0, 0, $this->width - 1, $this->height - 1, $white);

            // draw text
            $x = 1;
            $odd = mt_rand(0, 1);
            if ($odd == 0)
                $odd = -1;
            for ($i = 0; $i < $this->length; $i++) {
                $m = $font_metrics[$this->keystring{$i}];

                $y = (($i % 2) * $this->fluctuation_amplitude - $this->fluctuation_amplitude / 2) * $odd +
                        mt_rand(-round($this->fluctuation_amplitude / 3), round($this->fluctuation_amplitude / 3)) + ($this->height - $fontfile_height) / 2;

                if ($this->no_spaces) {
                    $shift = 0;
                    if ($i > 0) {
                        $shift = 10000;
                        for ($sy = 3; $sy < $fontfile_height - 10; $sy+=1) {
                            for ($sx = $m['start'] - 1; $sx < $m['end']; $sx+=1) {
                                $rgb = imagecolorat($font, $sx, $sy);
                                $opacity = $rgb >> 24;
                                if ($opacity < 127) {
                                    $left = $sx - $m['start'] + $x;
                                    $py = $sy + $y;
                                    if ($py > $this->height)
                                        break;
                                    for ($px = min($left, $this->width - 1); $px > $left - 200 && $px >= 0; $px-=1) {
                                        $color = imagecolorat($img, $px, $py) & 0xff;
                                        if ($color + $opacity < 170) { // 170 - threshold
                                            if ($shift > $left - $px) {
                                                $shift = $left - $px;
                                            }
                                            break;
                                        }
                                    }
                                    break;
                                }
                            }
                        }
                        if ($shift == 10000) {
                            $shift = mt_rand(4, 6);
                        }
                    }
                } else {
                    $shift = 1;
                }
                imagecopy($img, $font, $x - $shift, $y, $m['start'], 1, $m['end'] - $m['start'], $fontfile_height);
                $x+=$m['end'] - $m['start'] - $shift;
            }
        } while ($x >= $this->width - 20); // while not fit in canvas
        //noise
        $white = imagecolorallocate($font, 255, 255, 255);
        $black = imagecolorallocate($font, 0, 0, 0);
        for ($i = 0; $i < (($this->height - 30) * $x) * $this->white_noise_density; $i++) {
            imagesetpixel($img, mt_rand(0, $x - 1), mt_rand(10, $this->height - 15), $white);
        }
        for ($i = 0; $i < (($this->height - 30) * $x) * $this->black_noise_density; $i++) {
            imagesetpixel($img, mt_rand(0, $x - 1), mt_rand(10, $this->height - 15), $black);
        }
        $center = $x / 2;
        // credits. To remove, see configuration file
        $img2 = imagecreatetruecolor($this->width, $this->height + ($this->show_credits ? 12 : 0));
        $foreground = imagecolorallocate($img2, $this->foreground_color[0], $this->foreground_color[1], $this->foreground_color[2]);
        $background = imagecolorallocate($img2, $this->background_color[0], $this->background_color[1], $this->background_color[2]);
        imagefilledrectangle($img2, 0, 0, $this->width - 1, $this->height - 1, $background);
        imagefilledrectangle($img2, 0, $this->height, $this->width - 1, $this->height + 12, $foreground);

//        imagestring($img2, 2, $this->width / 2 - imagefontwidth(2) * strlen($this->credits) / 2, $this->height - 2, $this->credits, $background);
        // periods
        $rand1 = mt_rand(750000, 1200000) / 10000000;
        $rand2 = mt_rand(750000, 1200000) / 10000000;
        $rand3 = mt_rand(750000, 1200000) / 10000000;
        $rand4 = mt_rand(750000, 1200000) / 10000000;
        // phases
        $rand5 = mt_rand(0, 31415926) / 10000000;
        $rand6 = mt_rand(0, 31415926) / 10000000;
        $rand7 = mt_rand(0, 31415926) / 10000000;
        $rand8 = mt_rand(0, 31415926) / 10000000;
        // amplitudes
        $rand9 = mt_rand(330, 420) / 110;
        $rand10 = mt_rand(330, 450) / 100;
        //wave distortion
        for ($x = 0; $x < $this->width; $x++) {
            for ($y = 0; $y < $this->height; $y++) {
                $sx = $x + (sin($x * $rand1 + $rand5) + sin($y * $rand3 + $rand6)) * $rand9 - $this->width / 2 + $center + 1;
                $sy = $y + (sin($x * $rand2 + $rand7) + sin($y * $rand4 + $rand8)) * $rand10;
                if ($sx < 0 || $sy < 0 || $sx >= $this->width - 1 || $sy >= $this->height - 1) {
                    continue;
                } else {
                    $color = imagecolorat($img, $sx, $sy) & 0xFF;
                    $color_x = imagecolorat($img, $sx + 1, $sy) & 0xFF;
                    $color_y = imagecolorat($img, $sx, $sy + 1) & 0xFF;
                    $color_xy = imagecolorat($img, $sx + 1, $sy + 1) & 0xFF;
                }

                if ($color == 255 && $color_x == 255 && $color_y == 255 && $color_xy == 255) {
                    continue;
                } else if ($color == 0 && $color_x == 0 && $color_y == 0 && $color_xy == 0) {
                    $newred = $this->foreground_color[0];
                    $newgreen = $this->foreground_color[1];
                    $newblue = $this->foreground_color[2];
                } else {
                    $frsx = $sx - floor($sx);
                    $frsy = $sy - floor($sy);
                    $frsx1 = 1 - $frsx;
                    $frsy1 = 1 - $frsy;
                    $newcolor = (
                            $color * $frsx1 * $frsy1 +
                            $color_x * $frsx * $frsy1 +
                            $color_y * $frsx1 * $frsy +
                            $color_xy * $frsx * $frsy);

                    if ($newcolor > 255)
                        $newcolor = 255;
                    $newcolor = $newcolor / 255;
                    $newcolor0 = 1 - $newcolor;
                    $newred = $newcolor0 * $this->foreground_color[0] + $newcolor * $this->background_color[0];
                    $newgreen = $newcolor0 * $this->foreground_color[1] + $newcolor * $this->background_color[1];
                    $newblue = $newcolor0 * $this->foreground_color[2] + $newcolor * $this->background_color[2];
                }
                imagesetpixel($img2, $x, $y, imagecolorallocate($img2, $newred, $newgreen, $newblue));
            }
        }
        header('Expires: Mon, 26 Jul 1997 05:00:00 GMT');
        header('Cache-Control: no-store, no-cache, must-revalidate');
        header('Cache-Control: post-check=0, pre-check=0', FALSE);
        header('Pragma: no-cache');
        if (function_exists("imagejpeg")) {
            header("Content-Type: image/jpeg");
            imagejpeg($img2, null, $this->jpeg_quality);
        } else if (function_exists("imagegif")) {
            header("Content-Type: image/gif");
            imagegif($img2);
        } else if (function_exists("imagepng")) {
            header("Content-Type: image/x-png");
            imagepng($img2);
        }
    }

    function getKeyString() {
        return $this->keystring;
    }

}
