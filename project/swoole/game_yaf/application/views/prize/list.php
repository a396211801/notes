<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="image/x-icon" href="//yun.yuyiya.com/tuia/tuia.ico">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no" />
    <title>我的奖品</title>
    <script>
        !function (e, i) { var t = e.documentElement, n = navigator.userAgent.match(/iphone|ipod|ipad/gi), a = n ? Math.min(i.devicePixelRatio, 3) : 1, m = "orientationchange" in window ? "orientationchange" : "resize"; t.dataset.dpr = a; for (var d, l, c = !1, o = e.getElementsByTagName("meta"), r = 0; r < o.length; r++)l = o[r], "viewport" == l.name && (c = !0, d = l); if (c) d.content = "width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no"; else { var o = e.createElement("meta"); o.name = "viewport", o.content = "width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no", t.firstElementChild.appendChild(o) } var s = function () { var e = t.clientWidth; e / a > 640 && (e = 640 * a), window.remScale = e / 640, t.style.fontSize = 200 * (e / 640) + "px" }; s(), e.addEventListener && i.addEventListener(m, s, !1) }(document, window);
    </script>

    <link rel="stylesheet" href="//yun.yuyiya.com/h5-tuia/record/list_201707261909.css" />
</head>
<style>
    .top-tips {
        position: relative;
        height: .3rem;
        font-size: .11rem;
        /*background-image: url(//yun.tuia.cn/h5-tuia/record/bg.png);*/
        /*background-color:*/
        background-size: contain;
        background-position: center;
        line-height: .3rem;
        margin-top: .05rem;
        margin-bottom: .05rem
    }
</style>

<body>
<div id="db-content">
    <div class="top-tips">
<!--        <span style="margin-left:.45rem">4000806659</span>-->
<!--        <span style="margin-left:.35rem">400-080-6659</span>-->
    </div>
    <div class="obj-list"></div>

    <div class="noRecord"><img src="//yun.yuyiya.com/h5-tuia/record/noRecord.png">
        <p>您没有可用奖品喔～</p>
    </div>
    <div class="networkError"><img src="//yun.yuyiya.com/h5-tuia/record/noRecord.png">
        <p>接口调用异常</p>
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
    var host = '//yun.yuyiya.com';

    (function (window) {
        var cookie = {
            get: function (name) {
                var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
                if (arr = document.cookie.match(reg))
                    return unescape(arr[2]);
                else
                    return null;
            },
            del: function (name) {
                var exp = new Date();
                exp.setTime(exp.getTime() - 1);
                var val = this.get(name);
                if (val != null)
                    document.cookie = name + "=" + val + ";expires=" + exp.toGMTString();
            }
        };
        window._cookie = cookie;
    })(window)

    var this_random = _cookie.get('random');

</script>

<script type="text/javascript" src="//yun.yuyiya.com/h5/base_201612271747.js"></script>

<script type="text/javascript" src="/js/common_201707181200.js"></script>
<script type="text/javascript" src="/js/list_201707261909.js"></script>
<script>

</script>

<script type="text/template" id="obj-item">
    {@each data.list as item, index}
    <a class="cf item" data-status="${item.resStatus}" data-orderid="${item.orderId}">
        <img class="fl" src="//yun.yuyiya.com/webapp/img/blank.jpg" data-url="${item.thumbnailPng}">
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
    </a> {@/each}
</script>


<script>


    function GetQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]); return null;
    }

    $('body').on('click', '.item', function () {
        $.ajax({
            url: '/Activity/clickCount',
            dataType: 'json',
            type: 'post',
            data: { random: this_random, position: 6 },
            success: function () {
            }
        })
    })


</script>

</body>

</html>