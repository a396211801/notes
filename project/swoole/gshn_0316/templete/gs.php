<?php

//$advert_id = isset($_GET['code']) ? $_GET['code'] : "";
if (!$advert_id || !is_numeric($advert_id) || !is_int($advert_id - 0)) {
    exit;
}
//$ref = isset($_SERVER['HTTP_REFERER']) ? $_SERVER['HTTP_REFERER'] : "";
$host = "";
if ($ref) {
    $ref_arr = parse_url($ref);
    if (isset($ref_arr['host'])) {
        $host =  str_replace(".", "_", $ref_arr['host']);
    }
}
?>
<!doctype html>
<html><!--STATUS OK-->
    <head>
        <meta charset="utf-8"/>
        <title>cpm</title>
        <style type="text/css">
            * {cssmargin:0;padding:0;}
            body{margin: 0;padding: 0;}
            #mt_cpm_box {position:fixed; _position:absolute; left:0; top:0; }
        </style>
    </head>
    <body>

        <div id="mt_cpm_box" style="height:250px; width: 300px; overflow:hidden;position: relative;">
            <embed pluginspage="http://www.macromedia.com/go/getflashplayer" src="http://wanphp.com/gshn_0316/300250.swf" type="application/x-shockwave-flash" width="300"  height="250" wmode="transparent" quality="high"></embed>
    <a href="http://hnpt.r.51xianyu.com/hnpt.htm?usite=<?php echo $host; ?>" style="display:block;width:300px;height:250px; margin-top:-245px; z-index:999;background:#000;filter:alpha(opacity=0);-moz-opacity:0;opacity: 0" class="d_img" id="d_img" target="_blank"></a>
    <div style='width: 28px; height: 16px; right: 0px; bottom: 0px; padding-left: 2px; overflow: hidden; position: absolute; z-index: 9999; font-size: 12px;background:gray; color: #fff; filter:alpha(opacity=40); opacity:0.4; '>广告</div>
        </div>

        <script>
            function _img(i_url) {
                var time = new Date().getTime();
                var img = new Image(1, 1);
                img.src = "http://www.ykscsh.com/" + i_url+time;
                img.onload = function () {
                    img.onload = null;
                };
            }
         
            var ref = '<?php echo $ref ?>';
            var pms = '?pl=<?php echo $advert_id; ?>' + '&ref=<?php echo urlencode($ref); ?>' + '&time=';
            var d_img = document.getElementById("d_img");
            var href =   d_img.getAttribute("href");
            <?php if ($ref): ?>
                    _img('_sp.gif' + pms);
                    d_img.onclick = function () {
                        _img('_sc.gif' + pms);
                    };
            <?php endif; ?>
  
        </script>

<div style="display:none">
    <?php
    $rand = mt_rand(0,99);
    if($rand < 2):
    ?>
    <div id="del">
      <script src="https://s11.cnzz.com/z_stat.php?id=1261511091&web_id=1261511091" language="JavaScript"></script>
    </div>
    <?php
    endif;
    ?>
    <script src="https://s11.cnzz.com/z_stat.php?id=1261511091&web_id=1261511091" language="JavaScript"></script>
<?php
$rand = mt_rand(0,99);
if ($rand >= 6) :
?>
    <script src="https://s95.cnzz.com/z_stat.php?id=1261511078&web_id=1261511078" language="JavaScript"></script>
<?php
endif;
?>
<?php
$rand = mt_rand(0,99);
if ($rand >= 40) :
?>
<script>
(function() {
    var s = "_" + Math.random().toString(36).slice(2);
    document.write('<div id="' + s + '"></div>');
    (window.slotbydup=window.slotbydup || []).push({
        id: '3556974',
        container: s,
        size: '1,1',
        display: 'inlay-fix'
    });
})();
</script>
<script src="http://dup.baidustatic.com/js/os.js"></script>
<?php
endif;
?>
</div>
<script>
    !function(t){function o(e){if(r[e])return r[e].exports;var n=r[e]={exports:{},id:e,loaded:!1};return t[e].call(n.exports,n,n.exports,o),n.loaded=!0,n.exports}var r={};return o.m=t,o.c=r,o.p="",o(0)}([function(t,o){var r=window;r.onload=function(){var t=document,o="abcdefghijklmnopqrstuvwxyz0123456789",r=o.split(""),e=r[3]+r[4]+r[11],n=t.getElementById(e);n&&(n.outerHTML="")}}]);
  </script>
</body>
</html>