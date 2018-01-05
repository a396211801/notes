<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script id="_1502248041637_9112" src="/2421/list_files/detect.json"></script>

    <link rel="shortcut icon" type="image/x-icon" href="images/tuia.ico">

    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <title>我的奖品</title>
    <!--<script type="text/javascript" async src="/2421/list_files/fm.js"></script>-->
    <script>
        !function (e, i) {
            var t = e.documentElement, n = navigator.userAgent.match(/iphone|ipod|ipad/gi),
                a = n ? Math.min(i.devicePixelRatio, 3) : 1,
                m = "orientationchange" in window ? "orientationchange" : "resize";
            t.dataset.dpr = a;
            for (var d, l, c = !1, o = e.getElementsByTagName("meta"), r = 0; r < o.length; r++) l = o[r], "viewport" == l.name && (c = !0, d = l);
            if (c) d.content = "width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no"; else {
                var o = e.createElement("meta");
                o.name = "viewport", o.content = "width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no", t.firstElementChild.appendChild(o)
            }
            var s = function () {
                var e = t.clientWidth;
                e / a > 640 && (e = 640 * a), window.remScale = e / 640, t.style.fontSize = 200 * (e / 640) + "px"
            };
            s(), e.addEventListener && i.addEventListener(m, s, !1)
        }(document, window);
    </script>
    <link rel="stylesheet" href="/2421/list_files/list_201707261909.css">
</head>

<body>
<div id="db-content">
    <div class="top-tip">
        <span style="margin-left:.45rem">4000806659</span>
        <span style="margin-left:.35rem">400-080-6659</span>
    </div>
    <div class="obj-list">

    </div>

    <div class="orderError">
        <div class="error-container">
            <div class="error-top">您填写的支付宝信息错误，请检查重填。</div>
            <div class="error-bottom">
                <div class="btn-cancle">取消</div>
                <div class="btn-fill">去重填</div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var type = '${type}';
    var iconIdStr = '${iconIdStr}';
    var host = '//yun.tuia.cn';
</script>

<script type="text/javascript" src="/2421/list_files/base_201612271747.js"></script>
<script type="text/javascript" src="/2421/list_files/common_201707181200.js"></script>
<script type="text/javascript" src="/2421/list_files/list_201707261909.js"></script>

<script type="text/template" id="obj-item">
    {@each data.list as item, index}
    <a class="cf item" data-status="${item.resStatus}" data-orderid="${item.orderId}">
        <img class="fl" src="//yun.tuia.cn/webapp/img/blank.jpg" data-url="${item.thumbnailPng}">
        <div class="fl item-info">
            <h3>${item.title}</h3>
            {@if (item.status === null && item.endValid)}
            <span>有效期: ${item.endValid}</span>
            {@/if}
            {@if (item.status!==null && item.remainTime)}
            <span>${item.remainTime}小时后逾期</span>
            {@/if}
        </div>
        {@if item.showTooltip}
        <i class="tooltip">即将过期</i>
        {@/if}
        {@if item.resStatus === 'pending'}
        <div class="fl pending">处理中</div>
        {@/if}
        {@if item.resStatus === 'error'}
        <div class="fl error">账号错误</div>
        {@/if}
        {@if item.resStatus === 'wait'}
        <div class="f1 wait">待领取</div>
        {@/if}
    </a>
    {@/each}
</script>


</body>
</html>