
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="image/x-icon" href="//yun.tuia.cn/tuia/tuia.ico">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no"/>
    <title>详情</title>
    <script>!function(e,i){var t=e.documentElement,n=navigator.userAgent.match(/iphone|ipod|ipad/gi),a=n?Math.min(i.devicePixelRatio,3):1,m="orientationchange"in window?"orientationchange":"resize";t.dataset.dpr=a;for(var d,l,c=!1,o=e.getElementsByTagName("meta"),r=0;r<o.length;r++)l=o[r],"viewport"==l.name&&(c=!0,d=l);if(c)d.content="width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no";else{var o=e.createElement("meta");o.name="viewport",o.content="width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no",t.firstElementChild.appendChild(o)}var s=function(){var e=t.clientWidth;e/a>640&&(e=640*a),window.remScale=e/640,t.style.fontSize=200*(e/640)+"px"};s(),e.addEventListener&&i.addEventListener(m,s,!1)}(document,window);</script>
    <link rel="stylesheet" href="//yun.tuia.cn/h5-tuia/record/detail_201707041540.css"/>
</head>

<body>
<div id="db-content">

</div>

<script type="text/template" id="footer-item">
    {@if showUse}
    <footer>
        <button type="button" class="submit theme-bgcolor btnCoupon">${buttonText}</button>
    </footer>
    {@/if}
</script>
<script type="text/javascript">
    function loader(cb) {
        var _files = [
            '//yun.tuia.cn/h5-tuia/record/components_201702211711.js',
            '//yun.tuia.cn/h5-tuia/common_201702221100.js',
        ];
        Loader.async(_files, function () {
            cb && cb();
        });
    }
</script>
<script type="text/javascript" src="//yun.tuia.cn/h5/base_201612271747.js"></script>
<script type="text/javascript" src="//yun.tuia.cn/h5-tuia/record/detail_201707181200.js"></script>

<script>
    var url = window.location.href;
    url = url.match(/[1-9]\d{13}/)[0];
     $('body').on('click', '.submit', function() {
        $.ajax({
            url: '/activity/clickCount',
            dataType: 'json',
            type: 'post',
            data: {position: 10 ,order_id: url},
            success: function () {
            }
        })
    })
</script>


</body>
</html>
