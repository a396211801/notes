<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta https-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <title></title>
    <link rel="stylesheet" href="/4001/css/sm.min.css">
    <link rel="stylesheet" type="text/css" href="/4001/css/swiper.min.css"/>
    <link rel="stylesheet" href="/4001/css/Popup.css"/>
    <link rel="stylesheet" href="/4001/css/pops.css">
    <link rel="stylesheet" type="text/css" href="/4001/css/dialog.css">
    <link rel="stylesheet" type="text/css" href="/4001/css/float.css">
    <link rel="stylesheet" type="text/css" href="/4001/css/egg.css"/>
    <script type="text/javascript" src="/4001/js/return.js"></script>
    <style>
        ::-webkit-scrollbar {
            /*隐藏滚轮*/
            display: none;
            background-color: transparent;
        }

        .dialog {
            width: 100%;
            height: 100%;
            background-color: #FFFFFF;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 99999999;
        }

        .loading {
            width: 80px;
            height: 80px;
            position: absolute;
            top: 50%;
            left: 50%;
            margin-left: -40px;
            margin-top: -40px;
        }

        .loadstatic {
            width: 80px;
            height: 80px;
            background: url(/4001/images/load1.png) no-repeat center;
            background-size: 100% 100%;
        }

        .load {
            width: 100%;
            height: 100%;
            background: url(/4001/images/load2.png) no-repeat center;
            background-size: 100% 100%;
            animation: loading 1.5s infinite linear forwards;
            -webkit-animation: loading 1.5s infinite linear forwards;
        }

        .loading p {
            width: 100%;
            font-size: 13px;
            color: #999999;
            text-align: center;
            margin-top: 6px;
        }

        @keyframes loading {
            from {
                transform: rotate(0deg);
            }
            to {
                transform: rotate(360deg);
            }
        }

        @-webkit-keyframes loading {
            from {
                -webkit-transform: rotate(0deg);
            }
            to {
                -webkit-transform: rotate(360deg);
            }
        }

        /****更多活动***/

        .moreAct {
            width: 3rem;
            height: 3rem;
            position: absolute;
            top: 3rem;
            right: -4rem;
            text-align: center;
            z-index: 999;
            display: none
        }

        .moreAct a {
            display: block;
        }

        .moreAct img {
            width: 100%;
            height: auto;
            display: none;
        }

        /****更多活动 飘出****/

        .moreFadein {
            animation: fadeInto ease-in-out 2s forwards;
            -webkit-animation: fadeInto ease-in-out 2s forwards;
        }

        @keyframes fadeInto {
            0% {
                transform: translate(0, 0);
            }
            50% {
                transform: translate(-18rem, 8rem);
            }
            100% {
                transform: translate(-4rem, 19rem);
            }
        }

        @-webkit-keyframes fadeInto {
            0% {
                transform: translate(0, 0);
            }
            50% {
                transform: translate(-18rem, 8rem);
            }
            100% {
                transform: translate(-4rem, 19rem);
            }
        }

        .moreAct .show {
            display: block;
        }

        /*add style*/

        .banner {
            background: url(/4001/images/231335ad-e8f9-4606-ab2f-bf1e59d92e60.png) no-repeat center;
            background-size: 100% 100%;
        }

        .eggs {
            background: url(/4001/images/25d7ced9-46c7-4541-8512-189ad1d766c3.png) no-repeat center;
            background-size: 100% 100%;
        }

        .egg {
            background: url(/4001/images/bff777fc-fab0-4473-8b03-d563148196df.png) no-repeat center;
            background-size: 100% 100%;
        }

        .eggstart {
            background: url(/4001/images/270d9aa5-0472-468b-bad7-7c9e2ad084ee.png) no-repeat center;
            background-size: 100% 100%;
        }

        .eggend {
            background: url(/4001/images/7e263ecd-30b5-4285-a342-ecc1df9db4de.png) no-repeat center;
            background-size: 100% 100%;
        }

        body,
        .page-group,
        .page,
        .e-list {
            background-color: #ffc12c
        }

        .chuizi {
            background: url(/4001/images/5c8a6caa-b077-4c30-b1f8-622edebb79aa.png) no-repeat center;
            background-size: 100% 100%;
        }

        .award_header {
            background: url(/4001/images/3b55cbe6-27cf-4801-af6c-154e2d163546.png) no-repeat center;
            background-size: 100% 100%;
        }

        .myprize {
            background: url(/4001/images/8a2311b0-7607-43e3-8fe2-a23664b7d855.png) no-repeat center;
            background-size: 100% 100%;
        }

        .tip {
            background: url(/4001/images/e2e62b03-d585-4a0b-bf5f-e07c66993b3c.png) no-repeat center;
            background-size: 100% 100%;
        }

        .swiper-scrollbar {
            background-color: #ff9c0f
        }

        .swiper-slide div {
            border-color: #ff9c0f
        }

        .swiper-scrollbar-drag {
            background-color: #ffd879
        }

        .awardName {
            color:
        }

        .jointime i {
            color:
        }
    </style>
</head>

<body onhashchange="_hash()">
<div class="page-group">
    <div class="page page-current">
        <div class="dialog">
            <div class="loading">
                <div class="loadstatic">
                    <div class="load"></div>
                </div>
                <p>努力加载中...</p>
            </div>
        </div>
        <div id="egg">
            <div class="box"></div>
            <div id="way">
                <span class="iconfont">&#xe621;</span>
                <span>规则</span>
            </div>
            <div class="myprize">
                <a href="javascript:;" data-url="prize.html"></a>
            </div>
            <div class="moreAct">
                <a href="javascript:; " class="external">
                    <img class="show" src="" alt=""/>
                </a>
            </div>
            <div class="banner"></div>
            <div class="e-main">
                <div class="jointime">
                    今日剩余免费<i>8</i>次
                </div>
                <div class="eggs">
                    <div class="item beat">
                        <div class="tip"></div>
                        <button class="egg egg1 flag"></button>
                        <button class="egg eggstart egg1 isshow flag"></button>
                        <button disabled="disabled" class="egg eggend egg1 hide"></button>
                    </div>
                    <div class="item">
                        <div class="tip"></div>
                        <button class="egg egg2 flag"></button>
                        <button class="egg eggstart egg2 isshow flag"></button>
                        <button disabled="disabled" class="egg eggend egg2 hide"></button>
                    </div>
                    <div class="item">
                        <div class="tip"></div>
                        <button class="egg egg3 flag"></button>
                        <button class="egg eggstart egg3 isshow flag"></button>
                        <button disabled="disabled" class="egg eggend egg3 hide"></button>
                    </div>
                    <div class="item">
                        <div class="tip"></div>
                        <button class="egg egg4 flag"></button>
                        <button class="egg eggstart egg4 isshow flag"></button>
                        <button disabled="disabled" class="egg eggend egg4 hide"></button>
                    </div>
                    <div class="item">
                        <div class="tip"></div>
                        <button class="egg egg5 flag"></button>
                        <button class="egg eggstart egg5 isshow flag"></button>
                        <button disabled="disabled" class="egg eggend egg5 hide"></button>
                    </div>
                    <div class="item">
                        <div class="tip"></div>
                        <button class="egg egg6 flag"></button>
                        <button class="egg eggstart egg6 isshow flag"></button>
                        <button disabled="disabled" class="egg eggend egg6 hide"></button>
                    </div>
                    <div class="item">
                        <div class="tip"></div>
                        <button class="egg egg7 flag"></button>
                        <button class="egg eggstart egg7 isshow flag"></button>
                        <button disabled="disabled" class="egg eggend egg7 hide"></button>
                    </div>
                    <div class="item">
                        <div class="tip"></div>
                        <button class="egg egg8 flag"></button>
                        <button class="egg eggstart egg8 isshow flag"></button>
                        <button disabled="disabled" class="egg eggend egg8 hide"></button>
                    </div>
                    <div class="item">
                        <div class="tip"></div>
                        <button class="egg egg9 flag"></button>
                        <button class="egg eggstart egg9 isshow flag"></button>
                        <button disabled="disabled" class="egg eggend egg9 hide"></button>
                    </div>
                </div>
                <div class="e-list">
                    <div id="awardlist">
                        <div class="award_header"></div>
                        <div class="award_list">
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide flex">
                                        <div><img src="/4001/images/f266e823-e038-4a0e-a436-6ee881bff02c.png" alt=""/>
                                        </div>
                                        <div class="awardName">100元红包</div>
                                    </div>
                                    <div class="swiper-slide flex">
                                        <div><img src="/4001/images/98f229fd-14c1-4128-b7e3-0f9ff78b741b.png" alt=""/>
                                        </div>
                                        <div class="awardName">1G流量</div>
                                    </div>
                                    <div class="swiper-slide flex">
                                        <div><img src="/4001/images/3237f4ad-6d6b-47d7-a40d-fe1ee7eacf33.png" alt=""/>
                                        </div>
                                        <div class="awardName">800M流量</div>
                                    </div>
                                    <div class="swiper-slide flex">
                                        <div><img src="/4001/images/bccc09c6-29c5-452c-9ae2-4b59b788f3b8.png" alt=""/>
                                        </div>
                                        <div class="awardName">10元红包</div>
                                    </div>
                                    <div class="swiper-slide flex">
                                        <div><img src="/4001/images/3104ce5f-9d08-4106-a0c2-62d1695e8b22.png" alt=""/>
                                        </div>
                                        <div class="awardName">温暖福袋</div>
                                    </div>

                                </div>
                                <div class="swiper-scrollbar"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hammer">
                    <div class="chuizi rotateInit"></div>
                </div>
            </div>
        </div>
        <div class="activity">
            <div class="rule">
                <header><img src="/4001/images/top.png" alt=""/></header>
                <div class="rule-main">
                    <div id="active">
                        <div class="active_header"></div>
                        <div class="active_main">{<title></title>

                            参与活动即有机会获得幸运奖~每天抽奖机会8次免费。此活动为概率中奖，奖品数量有限，祝好运！<br>
                            惊喜一：100元红包<br>
                            惊喜二：1G流量<br>
                            惊喜三：800M流量<br>
                            惊喜四：10元红包<br>
                            惊喜五：温暖福袋<br>
                            －－－－－－－－－－－－－－－－<br>
                            重要声明：<br>
                            1.奖品将在活动结束后5-10个工作日安排发放,请耐心等待<br>
                            2.优惠券类奖品的使用规则详见每个优惠券的介绍页<br>
                            3.请兑换后仔细阅读使用流程,如有疑问,可直接联系客服专线:400-630-5186或客服QQ:3511735466(工作日9:00至18:00)<br>
                            4.通过非法途径获得奖品的,主办方有权不提供奖品
                        </div>
                    </div>
                    <div id="important">
                        <div class="important_header"></div>
                        <div class="mportance_main"></div>
                    </div>
                    <div id="more">
                        <div class="more_header">
                            更多概率说明<span class="iconfont collapse">&#xe61a;</span>
                        </div>
                        <div class="more_main off"><title></title>

                            中奖概率说明：<br>
                            •100元红包共1份，中奖概率0.01%;&nbsp;<br>
                            •1G流量共1份,中奖概率0.01%;<br>
                            •800M流量共2份,中奖概率0.01%;<br>
                            •10元红包共8份,中奖概率0.01%;
                        </div>
                    </div>
                    <div class="close">
                        <span class="iconfont">&#xe622;</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="pop-ok">
            <div class="ggk_hb">
                <div class="bg">
                    <img src="/4001/images/coin.png"/>
                </div>
                <div class="before">
                    <img src="/4001/images/hb-down.png"/>
                </div>
                <div class="after common">
                    <div style="position:relative">
                        <img src="/4001/images/hb-up.png"/>
                        <div class="congratulations common">
                            <span class="ct"></span>
                        </div>
                    </div>
                </div>
                <div class="prize_img">
                    <img src=""/>
                </div>
                <div class="cr"></div>
                <div class="sunshine"></div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    (function(window) {
        var cookie = {
            set: function (name, value, day) {
                var Days = day | 1;
                var exp = new Date();
                exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
                document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
            },
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

    if(!_cookie.get('random')) {
        _cookie.set('random', Math.floor(Math.random() * 100000000000))
    }
    var this_random = _cookie.get('random');
    var this_id = GetQueryString('id');

    function setPosition(type, url) {
        $.ajax({
            url: '/Activity/clickCount',
            dataType: 'json',
            type: 'post',
            data: {id: this_id, random: this_random, position: type},
            success: function () {
                if (url) {
                    window.location.href = url
                }
            }
        })
    }

    function GetQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]);
        return null;
    }
</script>
<script type="text/javascript" src="/4001/js/zepto.js"></script>
<script type="text/javascript" src="/4001/js/base.js"></script>
<script type="text/javascript" src="/4001/js/swiper.min.js"></script>
<script type="text/javascript" src="/4001/js/dialog.js"></script>
<script type="text/javascript" src="/4001/js/api.js"></script>
<script type="text/javascript" src="/4001/js/floatModel.js"></script>
<script type="text/javascript" src="/4001/js/layer.js"></script>
<script type="text/javascript" src="/4001/js/egg.js"></script>
<script>
    baseJs._setRem();
</script>
</body>
</html>
