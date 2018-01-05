<?php
/**
 * Created by IntelliJ IDEA.
 * User: zb
 * Date: 17-8-30
 * Time: 下午3:26
 */

function curl_send($url, $keysArr = array(), $mothod = 'get')
{
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    if (strtolower($mothod) == 'post') {
        curl_setopt($ch, CURLOPT_POST, TRUE);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $keysArr);
    } else {
        $url = $url . "?" . http_build_query($keysArr);
    }
    curl_setopt($ch, CURLOPT_URL, $url);
    $ip = '125.122.48.13';
    $ua = "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";
    $headerArr[] = 'User-Agent:' . $ua;
    $headerArr[] = 'CLIENT-IP:' . $ip;
    $headerArr[] = 'X-FORWARDED-FOR:' . $ip;
    $headerArr[] = 'REMOTE_ADDR:' . $ip;
    curl_setopt($ch, CURLOPT_HTTPHEADER, $headerArr);
    curl_setopt($ch, CURLOPT_USERAGENT, $ua);
    curl_setopt($ch, CURLOPT_TIMEOUT, 10);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
    curl_setopt($ch, CURLOPT_MAXREDIRS, 1);
    $ret = curl_exec($ch);
    return $ret;
}