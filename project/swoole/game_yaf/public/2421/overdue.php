<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="shortcut icon" type="image/x-icon" href="/2421/images/tuia.ico">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <title>过期奖品</title>
    <script>!function(e,i){var t=e.documentElement,n=navigator.userAgent.match(/iphone|ipod|ipad/gi),a=n?Math.min(i.devicePixelRatio,3):1,m="orientationchange"in window?"orientationchange":"resize";t.dataset.dpr=a;for(var d,l,c=!1,o=e.getElementsByTagName("meta"),r=0;r<o.length;r++)l=o[r],"viewport"==l.name&&(c=!0,d=l);if(c)d.content="width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no";else{var o=e.createElement("meta");o.name="viewport",o.content="width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no",t.firstElementChild.appendChild(o)}var s=function(){var e=t.clientWidth;e/a>640&&(e=640*a),window.remScale=e/640,t.style.fontSize=200*(e/640)+"px"};s(),e.addEventListener&&i.addEventListener(m,s,!1)}(document,window);</script><meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no">
    <link rel="stylesheet" href="/2421/overdue_files/overdue_201707181200.css">
</head>

<body>
<div id="db-content">
    <div class="obj-list">

    </div>
</div>
<script type="text/javascript">
    var type = '${type}';
    var iconIdStr = '${iconIdStr}';
</script>

<script type="text/javascript">
    var host = '//yun.tuia.cn';
</script>
<script type="text/javascript" src="/2421/overdue_files/base_201612271747.js"></script>
<script type="text/javascript" src="/2421/overdue_files/common_201702221100.js"></script>
<script type="text/javascript" src="/2421/overdue_files/overdue_201707181200.js"></script>

<script type="text/template" id="obj-item">
    {@each data.list as item, index}
    <a class="cf item" data-status="${item.resStatus}" data-orderid="${item.orderId}">
        <img class="fl" src="//yun.tuia.cn/webapp/img/blank.jpg" data-url="${item.thumbnailPng}">
        <div class="fl item-info">
            <h3>${item.title}</h3>
            {@if item.endValid}
            <span>有效期: ${item.endValid}</span>
            {@/if}
        </div>
        {@if item.showTooltip}
        <i class="tooltip">已经过期</i>
        {@/if}
        {@if item.resStatus === 'finish'}
        <div class="fl finish">充值成功</div>
        {@/if}
        {@if item.resStatus === 'over'}
        <div class="fl over">逾期未领取</div>
        {@/if}
    </a>
    {@/each}
</script>



<div class="loading"><span class="loading-tip">已经没有更多了！ </span></div></body></html>