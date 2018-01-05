var _typeof2 = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator
    ? function (t) {
        return typeof t
    }
    : function (t) {
        return t && "function" == typeof Symbol && t.constructor === Symbol && t !== Symbol.prototype
            ? "symbol"
            : typeof t
    };
!function t(i, e, o) {
    function s(r, a) {
        if (!e[r]) {
            if (!i[r]) {
                var l = "function" == typeof require && require;
                if (!a && l) 
                    return l(r, !0);
                if (n) 
                    return n(r, !0);
                var c = new Error("Cannot find module '" + r + "'");
                throw c.code = "MODULE_NOT_FOUND",
                c
            }
            var h = e[r] = {
                exports: {}
            };
            i[r][0].call(h.exports, function (t) {
                var e = i[r][1][t];
                return s(e
                    ? e
                    : t)
            }, h, h.exports, t, i, e, o)
        }
        return e[r].exports
    }
    for (var n = "function" == typeof require && require, r = 0; r < o.length; r++) 
        s(o[r]);
    return s
}({
    1: [
        function (t, i, e) {
            $.cookie = function (t, i, e) {
                if ("undefined" == typeof i) {
                    var o = null;
                    if (document.cookie && "" != document.cookie) 
                        for (var s = document.cookie.split(";"), n = 0; n < s.length; n++) {
                            var r = $.trim(s[n]);
                            if (r.substring(0, t.length + 1) == t + "=") {
                                o = decodeURIComponent(r.substring(t.length + 1));
                                break
                            }
                        }
                    return o
                }
                e = e || {},
                null === i && (i = "", e = $.extend({}, e), e.expires = -1);
                var a = "";
                if (e.expires && ("number" == typeof e.expires || e.expires.toUTCString)) {
                    var l;
                    "number" == typeof e.expires
                        ? (l = new Date, l.setTime(l.getTime() + 24 * e.expires * 60 * 60 * 1e3))
                        : l = e.expires,
                    a = "; expires=" + l.toUTCString()
                }
                var c = e.path
                        ? "; path=" + e.path
                        : "",
                    h = e.domain
                        ? "; domain=" + e.domain
                        : "",
                    d = e.secure
                        ? "; secure"
                        : "";
                document.cookie = [
                    t,
                    "=",
                    encodeURIComponent(i),
                    a,
                    c,
                    h,
                    d
                ].join("")
            }
        }, {}
    ],
    2: [
        function (t, i, e) {
            !function (i) {
                var e = t("../../unit/lib/lib-template/0.0.0/artTemplate"),
                    o = {
                        init: function (e) {
                            var o = this,
                                s = t("./tpl");
                            CFG.isShowRecommend
                                ? this.ajax(function (t) {
                                    t.recommend = !0,
                                    o.render(i("body"), t, s),
                                    i("#recommend-modal").show(),
                                    window.DB && window.DB.exposure && window
                                        .DB
                                        .exposure
                                        .initLog(),
                                    e && e()
                                })
                                : o.render(i("body"), {
                                    recommend: !1
                                }, s)
                        },
                        render: function s(t, i, o) {
                            var s = e.compile(o),
                                n = s(i);
                            t.append(n)
                        },
                        ajax: function (t) {
                            var e = this;
                            i.ajax({
                                url: "/activity/getRecommend",
                                type: "post",
                                dataType: "json",
                                data: {
                                    id: this_id,
                                    random: this_random
                                },
                                success: function (i) {
                                    i.success
                                        ? (e.isJPG(i.data.block1 && i.data.block1.bannerUrl) && "function" == typeof "".ossimg && (i.data.block1.bannerUrl = i.data.block1.bannerUrl.ossimg()), e.isJPG(i.data.block2 && i.data.block2.bannerUrl) && "function" == typeof "".ossimg && (i.data.block2.bannerUrl = i.data.block2.bannerUrl.ossimg()), t && t(i.data))
                                        : t && t("")
                                },
                                error: function () {
                                    console.log("get recommend queue error")
                                }
                            })
                        },
                        show: function () {
                            var t = this;
                            t.init(function () {
                                window.DB && window.DB.exposure && window
                                    .DB
                                    .exposure
                                    .initLog()
                            }),
                            t.events()
                        },
                        events: function () {
                            i("body")
                                .on("click", "#recommend-modal .close", function () {
                                    i("#recommend-modal")
                                        .hide()
                                        .remove()
                                })
                        },
                        isJPG: function (t) {
                            var i = !1;
                            if (t) {
                                var e = t.split(".");
                                i = e.length > 0 && ("jpg" === e[e.length - 1] || "png" === e[e.length - 1])
                            }
                            return i
                        },
                        getparams: function (t) {
                            var i = "[\\?&]" + t + "=([^&#]*)",
                                e = new RegExp(i),
                                o = e.exec(location.href);
                            return null === o
                                ? ""
                                : o[1]
                        }
                    };
                window.recommendModal = o
            }(Zepto)
        }, {
            "../../unit/lib/lib-template/0.0.0/artTemplate": 19,
            "./tpl": 3
        }
    ],
    3: [
        function (t, i, e) {
            i.exports = '<div id="recommend-modal" class="recommend-modal"><div class="recommend-modal-di' +
                    'alog"> <i class="close" db-exposure="{{stRecommendInfo}}"></i>{{if !block1}}<div' +
                    ' class="recommend-body3">{{if recommend}}<a class="recommend-bg3Btn" href="{{blo' +
                    'ck3.actUrl}}"></a>{{/if}}</div>{{else}}{{if !block2}}<div class="recommend-body2' +
                    '"><a class="fuli" href="{{block3.actUrl}}"></a><a class="recommend-li" href="{{b' +
                    'lock1.actUrl}}"><i class="recommend-btn"></i><img src="{{block1.bannerUrl}}"></a' +
                    '></div>{{else}}<div class="recommend-body1"><a class="fuli" href="{{block3.actUr' +
                    'l}}"></a><a class="recommend-li" href="javascript:void(0);" onclick="setPosition' +
                    '(2, \'{{block1.actUrl}}\')"><i class="recommend-btn"  onclick="setPosition(2, \'' +
                    '{{block1.actUrl}}\'"></i><img src="{{block1.bannerUrl}}"></a><a class="recommend' +
                    '-li" href="javascript:void(0);" onclick="setPosition(3, \'{{block2.actUrl}}\')">' +
                    '<i class="recommend-btn"  onclick="setPosition(3, \'{{block2.actUrl}}\'"></i><im' +
                    'g src="{{block2.bannerUrl}}"></a></div>{{/if}}{{/if}}</div></div>'
        }, {}
    ],
    4: [
        function (t, i, e) {
            !function (t) {
                var i = function (t) {
                    return this.prize
                        ? '<div class="modal-dinge modal-container1">\n\t\t\t\t\t    <span class="modal-clo' +
                            'se" db-exposure=' + t.page1.st_info_dpm_exposure + "\n\t\t\t\t\t    db-click=" + t.page1.st_info_dpm_btn_close + '></span>\n\t\t\t\t\t    <div class="modal-dialog">\n\t\t\t\t\t      <div class="' +
                                'modal-body" db-click=' + t.page1.st_info_dpm_img_click + '>\n\t\t\t\t\t        <div class="modal-amount">' + t.amount + '</div>\n\t\t\t\t\t        <i class="modal-coin2"></i>\n\t\t\t\t\t      </div>\n' +
                                '\t\t\t\t\t      <div class="modal-btn" db-click=' + t.page1.st_info_dpm_btn_get + '></div>\n\t\t\t\t\t      <div class="modal-tip">请在24小时内领取喔，逾期作废</div>\n\t\t\t\t' +
                                '\t    </div>\n\t\t\t\t\t  </div>'
                        : ""
                };
                e.init = i
            }(Zepto)
        }, {}
    ],
    5: [
        function (t, i, e) {
            !function (t) {
                var i = function (t) {
                    return this.prize
                        ? '<div class="modal-dinge modal-container2">\n\t\t\t\t\t    <span class="modal-clo' +
                            'se" db-exposure=' + t.page2.st_info_dpm_exposure + "\n\t\t\t\t\t    db-click=" + t.page2.st_info_dpm_btn_close + '></span>\n\t\t\t\t\t    <div class="modal-dialog">\n\t\t\t\t\t      <div class="' +
                                'modal-body">\n\t\t\t\t\t        <i class="modal-coin2"></i>\n\t\t\t\t\t        <' +
                                'input type="text" class="modal-account" placeholder="输入支付宝账号领取红包" value="' + t.aliAccount + '">\n\t\t\t\t\t\t\t\t\t<input type="text" class="modal-name" placeholder="输入真实姓名"' +
                                ' value="' + t.aliName + '">\n\t\t\t\t\t\t\t\t\t<div class="modal-tip"></div>\n\t\t\t\t\t      </div>\n\t' +
                                '\t\t\t\t      <div class="modal-btn"></div>\n\t\t\t\t\t    </div>\n\t\t\t\t\t  <' +
                                '/div>'
                        : ""
                };
                e.init = i
            }(Zepto)
        }, {}
    ],
    6: [
        function (t, i, e) {
            var o = "function" == typeof Symbol && "symbol" === _typeof2(Symbol.iterator)
                ? function (t) {
                    return "undefined" == typeof t
                        ? "undefined"
                        : _typeof2(t)
                }
                : function (t) {
                    return t && "function" == typeof Symbol && t.constructor === Symbol && t !== Symbol.prototype
                        ? "symbol"
                        : "undefined" == typeof t
                            ? "undefined"
                            : _typeof2(t)
                };
            !function (i) {
                var e = function (t) {
                        new s(t)
                    },
                    s = function (e) {
                        if ("object" === ("undefined" == typeof e
                            ? "undefined"
                            : o(e))) {
                            var s = {},
                                n = this;
                            if (e.result && e.result.lottery) {
                                var r = e.result.lottery;
                                switch (s = {
                                    amount: r.amount,
                                    page1: r.page1,
                                    page2: r.page2,
                                    page3: r.page3,
                                    aliAccount: r.aliAccount || "",
                                    aliName: r.aliName || ""
                                }, r.subType) {
                                    case 1:
                                        n.tpl1 = t("./dinge/tpl1").init,
                                        n.tpl2 = t("./dinge/tpl2").init;
                                        break;
                                    case 2:
                                        n.tpl1 = t("./random/tpl1").init,
                                        n.tpl2 = t("./random/tpl2").init;
                                        break;
                                    default:
                                        n.tpl1 = t("./random/tpl1").init,
                                        n.tpl2 = t("./random/tpl2").init
                                }
                                n.tplResult = t("./tplResult").init,
                                n.result = e.result,
                                n.callback = e.callback
                            }
                            this.prize = e.prize || {},
                            this.prize = i.extend(!0, s, this.prize),
                            i("body")
                                .append(n.tpl1(n.prize))
                                .append(n.tpl2(n.prize)),
                            document.ontouchmove = function (t) {
                                t.preventDefault()
                            },
                            e.showPage2 && (i(".modal-container1").hide(), i(".modal-container2").show()),
                            n.exposure(),
                            n.events()
                        } else 
                            console.warn("参数错误")
                    };
                s.prototype.events = function () {
                    var t = this;
                    t.hasClick = !1;
                    var e = i(".modal-container1"),
                        o = i(".modal-container2");
                    e.on("click", ".modal-body, .modal-btn", function () {
                        e.hide(),
                        o.show(),
                        t.exposure()
                    }),
                    o.on("click", ".modal-btn", function () {
                        t.check(),
                        t.status && !t.hasClick && (t.hasClick = !0, t.accountApi(function (e) {
                            switch (t.hasClick = !1, e.data.result) {
                                case "TA-0000000":
                                case "TA-0200001":
                                case "TA-0200002":
                                case "TA-0200003":
                                    t.dbClickBtn(),
                                    o.hide(),
                                    i("body").append(t.tplResult(t.prize, e.data)),
                                    t.getRecommend(),
                                    setTimeout(function () {
                                        t.exposure()
                                    }, 500);
                                    break;
                                case "TA-0200004":
                                case "TA-0200005":
                                    t.showTip(e.data.resultMsg)
                            }
                        }))
                    }),
                    i("body").on("click", ".modal-close", function () {
                        e.remove(),
                        o.remove(),
                        document.ontouchmove = null,
                        i(".modal-result").remove();
                        var s = t.callback;
                        s && s.close && s.close()
                    }),
                    o.on("focus", "input", function () {
                        t.hideTip(),
                        i(".modal-container1,.modal-container2").css("position", "absolute")
                    }),
                    o.on("blur", "input", function () {
                        i(".modal-container1,.modal-container2").css("position", "fixed")
                    })
                },
                s.prototype.exposure = function () {
                    setTimeout(function () {
                        window.DB && window.DB.exposure && window
                            .DB
                            .exposure
                            .initLog()
                    }, 100)
                },
                s.prototype.showTip = function (t) {
                    t
                        ? i(".modal-container2")
                            .find(".modal-tip")
                            .text(t)
                            .show()
                        : i(".modal-container2")
                            .find(".modal-tip")
                            .show()
                },
                s.prototype.hideTip = function () {
                    i(".modal-container2")
                        .find(".modal-tip")
                        .hide()
                },
                s.prototype.check = function () {
                    var t = this,
                        e = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"),
                        o = new RegExp("^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\\d{8})$"),
                        s = new RegExp("^[一-龥]{2,4}$"),
                        n = i(".modal-account")[0],
                        r = i(".modal-name")[0];
                    return e.test(n.value) || o.test(n.value)
                        ? s.test(r.value)
                            ? void(t.status = !0)
                            : (t.showTip("请输入有效的姓名"), void(t.status = !1))
                        : (t.showTip("请输入有效的账号"), void(t.status = !1))
                },
                s.prototype.dbClickBtn = function (t) {
                    var i = JSON.parse(this.prize.page2.st_info_dpm_btn_get);
                    i.domain4Web && this.sendApi({
                        domain: i.domain4Web,
                        url: i.url,
                        data: i
                    }, function () {
                        t && t()
                    })
                },
                s.prototype.accountApi = function (t) {
                    var e = this;
                    i.ajax({
                        url: "/alipay/transferToAccount",
                        type: "post",
                        dataType: "json",
                        data: {
                            orderId: e.result.orderId,
                            account: i(".modal-account")[0].value,
                            name: i(".modal-name")[0].value,
                            amount: e.result.lottery.amount,
                            isAlipay: !0
                        },
                        success: function (i) {
                            i.success && t && t(i)
                        },
                        error: function () {
                            console.log("transferToAccount error")
                        }
                    })
                },
                s.prototype.getRecommend = function () {
                    var t = this;
                    i.ajax({
                        url: "/activity/getRecommend",
                        type: "post",
                        dataType: "json",
                        data: {
                            id: this_id,
                            random: this_random
                        },
                        success: function (t) {
                            t.success && (t.data.block1
                                ? (i(".block1").attr("href", t.data.block1.actUrl), i(".block1").find(".recommend-img").attr("src", t.data.block1.bannerUrl), t.data.block2
                                    ? (i(".block2").attr("href", t.data.block2.actUrl), i(".block2").find(".recommend-img").attr("src", t.data.block2.bannerUrl))
                                    : i(".block2").hide())
                                : i(".block1, block2").hide())
                        },
                        error: function () {
                            console.log("get recommend queue error")
                        }
                    })
                },
                s.prototype.getparams = function (t) {
                    var i = "[\\?&]" + t + "=([^&#]*)",
                        e = new RegExp(i),
                        o = e.exec(location.href);
                    return null === o
                        ? ""
                        : o[1]
                },
                s.prototype.sendApi = function (t, e, o, s) {
                    try {
                        var n = JSON.stringify(t);
                        if (n.indexOf("iframe") !== -1) 
                            return
                    } catch (r) {
                        console.log("数据异常:" + (r || ""))
                    }
                    var a = t.domain || "",
                        l = t.url;
                    delete t.domain,
                    delete t.url,
                    t.data && t.data.domain && delete t.data.domain,
                    i.ajax({
                        url: a + l,
                        data: t.data,
                        dataType: "jsonp",
                        type: t.type || "get",
                        jsonpCallback: "tracks",
                        complete: function () {
                            e && e()
                        },
                        success: function (t) {
                            o && o(t)
                        },
                        error: function (t) {
                            s && s(t)
                        }
                    })
                },
                window.showAlipayPrize = e
            }(Zepto)
        }, {
            "./dinge/tpl1": 4,
            "./dinge/tpl2": 5,
            "./random/tpl1": 7,
            "./random/tpl2": 8,
            "./tplResult": 9
        }
    ],
    7: [
        function (t, i, e) {
            !function (t) {
                var i = function (t) {
                    return this.prize
                        ? '<div class="modal-random modal-container1">\n\t\t\t\t\t    <span class="modal-cl' +
                            'ose" db-exposure=' + t.page1.st_info_dpm_exposure + "\n\t\t\t\t\t    db-click=" + t.page1.st_info_dpm_btn_close + '></span>\n\t\t\t\t\t    <div class="modal-dialog">\n\t\t\t\t\t      <div class="' +
                                'modal-body" db-click=' + t.page1.st_info_dpm_img_click + '></div>\n\t\t\t\t\t      <i class="modal-hand1"></i>\n\t\t\t\t\t      <i class="' +
                                'modal-hand2"></i>\n\t\t\t\t\t      <i class="modal-coin1"></i>\n\t\t\t\t\t      ' +
                                '<i class="modal-coin2"></i>\n\t\t\t\t\t    </div>\n\t\t\t\t\t  </div>'
                        : ""
                };
                e.init = i
            }(Zepto)
        }, {}
    ],
    8: [
        function (t, i, e) {
            !function (t) {
                var i = function (t) {
                    return this.prize
                        ? '<div class="modal-random modal-container2">\n              <span class="modal-cl' +
                            'ose" db-exposure=' + t.page2.st_info_dpm_exposure + "\n              db-click=" + t.page2.st_info_dpm_btn_close + '></span>\n              <div class="modal-dialog">\n                <div class="' +
                                'modal-body">\n                  <div class="modal-amount">' + t.amount + '<span>元</span></div>\n                  <input type="text" class="modal-account"' +
                                ' placeholder="输入支付宝账号领取红包" value="' + t.aliAccount + '">\n                  <input type="text" class="modal-name" placeholder="输入真实姓名"' +
                                ' value="' + t.aliName + '">\n                  <div class="modal-tip"></div>\n                  <div clas' +
                                's="modal-btn"></div>\n                </div>\n              </div>\n            ' +
                                '</div>'
                        : ""
                };
                e.init = i
            }(Zepto)
        }, {}
    ],
    9: [
        function (t, i, e) {
            !function (t) {
                var i = function (t, i) {
                    if (!this.prize) 
                        return "";
                    var e = void 0;
                    return e = "TA-0000000" === i.result
                        ? '<div class="modal-desc modal-success">已经到账啦！</div>'
                        : '<div class="modal-desc">正在火速处理中，查看进度请点击<a href="/activity/indexRecord?vmName=lis' +
                            't"><span class="result-btn" db-click=' + t.page3.st_info_dpm_btn_get + ">我的奖品</span></a></div>",
                    '<div class="modal-result">\n              <span class="modal-close" db-exposure=' + t.page3.st_info_dpm_exposure + "\n              db-click=" + t.page3.st_info_dpm_btn_close + '></span>\n              <div class="modal-dialog">\n                <div class="' +
                            'modal-animate">\n                  <i class="modal-coin"></i>\n                 ' +
                            ' <div class="modal-head">\n                    ' + e + '\n                    <div class="modal-contact">客服：<i class="icon-qq"></i>40000' +
                            '66855 <i class="icon-phone"></i>400-090-0208</div>\n                  </div>\n  ' +
                            '                <div class="more">更多福利</div>\n                  <a class="block1' +
                            '"><img src="" class="recommend-img"></a>\n                  <a class="block2"><i' +
                            'mg src="" class="recommend-img"></a>\n                </div>\n              </di' +
                            'v>\n            </div>'
                };
                e.init = i
            }(Zepto)
        }, {}
    ],
    10: [
        function (t, i, e) {
            !function (i) {
                function e(t) {
                    var i = "[\\?&]" + t + "=([^&#]*)",
                        e = new RegExp(i),
                        o = e.exec(location.href);
                    return null === o
                        ? ""
                        : o[1]
                }
                t("../cookie/cookie");
                var o = e("tck_rid_6c8") || i.cookie("_coll_rid");
                if (o) {
                    _fmOpt = {
                        partner: "duiba",
                        appName: "tuia_h5",
                        token: o
                    };
                    var s = new Image(1, 1);
                    s.onload = function () {
                        _fmOpt.imgLoaded = !0
                    },
                    s.src = "https://fp.fraudmetrix.cn/fp/clear.png?partnerCode=" + _fmOpt.partner + "&appName=" + _fmOpt.appName + "&tokenId=" + _fmOpt.token;
                    var n = document.createElement("script");
                    n.type = "text/javascript",
                    n.async = !0,
                    n.src = ("https:" == document.location.protocol
                        ? "https://"
                        : "http://") + "static.fraudmetrix.cn/fm.js?ver=0.1&t=" + ((new Date).getTime() / 36e5).toFixed(0);
                    var r = document.getElementsByTagName("script")[0];
                    r
                        .parentNode
                        .insertBefore(n, r)
                }
            }(Zepto)
        }, {
            "../cookie/cookie": 1
        }
    ],
    11: [
        function (t, i, e) {
            t("../../../../unit/common/js/downloadApp"),
            t("../../../../unit/common/js/statistics"),
            t("../../../../unit/common/js/showObjectPrize"),
            t("../../../../unit/common/js/showModal"),
            t("../../../../unit/common/js/prizeDetail"),
            t("../../../../module/tongdun"),
            t("../../../../module/showAlipayPrize/index"),
            t("../../../../module/recommendModal"),
            t("./../components/intercept")
        }, {
            "../../../../module/recommendModal": 2,
            "../../../../module/showAlipayPrize/index": 6,
            "../../../../module/tongdun": 10,
            "../../../../unit/common/js/downloadApp": 14,
            "../../../../unit/common/js/prizeDetail": 15,
            "../../../../unit/common/js/showModal": 16,
            "../../../../unit/common/js/showObjectPrize": 17,
            "../../../../unit/common/js/statistics": 18,
            "./../components/intercept": 12
        }
    ],
    12: [
        function (t, i, e) {
            !function () {
                function t() {
                    if (!history.state) {
                        var t = location.href;
                        history.replaceState({
                            page: "intercept",
                            entered: !1
                        }, "", intercetpUrl),
                        history.pushState({
                            page: "current"
                        }, "", t)
                    }
                    window.onpopstate = function () {
                        history.state && "intercept" == history.state.page && (history.state.entered || (history.replaceState({
                            page: "intercept",
                            entered: !0
                        }, "", intercetpUrl), e(function () {
                            location.reload()
                        })))
                    }
                }
                function i() {
                    $.ajax({
                        url: "/activity/getReturnPage",
                        type: "post",
                        data: {
                            id: this_id,
                            random: this_random
                        },
                        dataType: "json",
                        success: function (i) {
                            i.success && (window.intercetpUrl = i.data.url, intercetpUrl && t())
                        },
                        error: function () {
                            console.log("network error")
                        }
                    })
                }
                function e(t) {
                    $.ajax({
                        url: "/activity/updateReturnTimes",
                        type: "post",
                        data: {
                            slotId: s("slotId")
                        },
                        dataType: "json",
                        success: function (i) {
                            i.success
                                ? t & t()
                                : console.log("Update times error")
                        },
                        error: function () {
                            console.log("network error")
                        }
                    })
                }
                function o() {
                    return !s("dpm") && !s("sourceId")
                }
                function s(t) {
                    var i = "[\\?&]" + t + "=([^&#]*)",
                        e = new RegExp(i),
                        o = e.exec(location.href);
                    return null === o
                        ? ""
                        : o[1]
                }
                $(function () {
                    history.pushState && (history.state
                        ? window.onpopstate = function (t) {
                            history.state && "current" == history.state.page
                                ? location.reload()
                                : history.state && "intercept" == history.state.page && (history.state.entered
                                    ? history.go(-1)
                                    : (history.state.entered = !0, e(function () {
                                        location.reload()
                                    })))
                        }
                        : o() && i())
                })
            }(Zepto)
        }, {}
    ],
    13: [
        function (t, i, e) {
            var o = "function" == typeof Symbol && "symbol" === _typeof2(Symbol.iterator)
                ? function (t) {
                    return "undefined" == typeof t
                        ? "undefined"
                        : _typeof2(t)
                }
                : function (t) {
                    return t && "function" == typeof Symbol && t.constructor === Symbol && t !== Symbol.prototype
                        ? "symbol"
                        : "undefined" == typeof t
                            ? "undefined"
                            : _typeof2(t)
                };
            !function (t, i, e) {
                function s(e, o) {
                    this.wrapper = "string" == typeof e
                        ? i.querySelector(e)
                        : e,
                    this.scroller = this.wrapper.children[0],
                    this.scrollerStyle = this.scroller.style,
                    this.options = {
                        resizeScrollbars: !0,
                        mouseWheelSpeed: 20,
                        snapThreshold: .334,
                        disablePointer: !l.hasPointer,
                        disableTouch: l.hasPointer || !l.hasTouch,
                        disableMouse: l.hasPointer || l.hasTouch,
                        startX: 0,
                        startY: 0,
                        scrollY: !0,
                        directionLockThreshold: 5,
                        momentum: !0,
                        bounce: !0,
                        bounceTime: 600,
                        bounceEasing: "",
                        preventDefault: !0,
                        preventDefaultException: {
                            tagName: /^(INPUT|TEXTAREA|BUTTON|SELECT)$/
                        },
                        HWCompositing: !0,
                        useTransition: !0,
                        useTransform: !0,
                        bindToWrapper: "undefined" == typeof t.onmousedown
                    };
                    for (var s in o) 
                        this.options[s] = o[s];
                    this.translateZ = this.options.HWCompositing && l.hasPerspective
                        ? " translateZ(0)"
                        : "",
                    this.options.useTransition = l.hasTransition && this.options.useTransition,
                    this.options.useTransform = l.hasTransform && this.options.useTransform,
                    this.options.eventPassthrough = this.options.eventPassthrough === !0
                        ? "vertical"
                        : this.options.eventPassthrough,
                    this.options.preventDefault = !this.options.eventPassthrough && this.options.preventDefault,
                    this.options.scrollY = "vertical" != this.options.eventPassthrough && this.options.scrollY,
                    this.options.scrollX = "horizontal" != this.options.eventPassthrough && this.options.scrollX,
                    this.options.freeScroll = this.options.freeScroll && !this.options.eventPassthrough,
                    this.options.directionLockThreshold = this.options.eventPassthrough
                        ? 0
                        : this.options.directionLockThreshold,
                    this.options.bounceEasing = "string" == typeof this.options.bounceEasing
                        ? l.ease[this.options.bounceEasing] || l.ease.circular
                        : this.options.bounceEasing,
                    this.options.resizePolling = void 0 === this.options.resizePolling
                        ? 60
                        : this.options.resizePolling,
                    this.options.tap === !0 && (this.options.tap = "tap"),
                    "scale" == this.options.shrinkScrollbars && (this.options.useTransition = !1),
                    this.options.invertWheelDirection = this.options.invertWheelDirection
                        ? -1
                        : 1,
                    this.x = 0,
                    this.y = 0,
                    this.directionX = 0,
                    this.directionY = 0,
                    this._events = {},
                    this._init(),
                    this.refresh(),
                    this.scrollTo(this.options.startX, this.options.startY),
                    this.enable()
                }
                function n(t, e, o) {
                    var s = i.createElement("div"),
                        n = i.createElement("div");
                    return o === !0 && (s.style.cssText = "position:absolute;z-index:9999", n.style.cssText = "-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;p" +
                            "osition:absolute;background:rgba(0,0,0,0.5);border:1px solid rgba(255,255,255,0." +
                            "9);border-radius:3px"),
                    n.className = "iScrollIndicator",
                    "h" == t
                        ? (o === !0 && (s.style.cssText += ";height:7px;left:2px;right:2px;bottom:0", n.style.height = "100%"), s.className = "iScrollHorizontalScrollbar")
                        : (o === !0 && (s.style.cssText += ";width:7px;bottom:2px;top:2px;right:1px", n.style.width = "100%"), s.className = "iScrollVerticalScrollbar"),
                    s.style.cssText += ";overflow:hidden",
                    e || (s.style.pointerEvents = "none"),
                    s.appendChild(n),
                    s
                }
                function r(e, o) {
                    this.wrapper = "string" == typeof o.el
                        ? i.querySelector(o.el)
                        : o.el,
                    this.wrapperStyle = this.wrapper.style,
                    this.indicator = this.wrapper.children[0],
                    this.indicatorStyle = this.indicator.style,
                    this.scroller = e,
                    this.options = {
                        listenX: !0,
                        listenY: !0,
                        interactive: !1,
                        resize: !0,
                        defaultScrollbars: !1,
                        shrink: !1,
                        fade: !1,
                        speedRatioX: 0,
                        speedRatioY: 0
                    };
                    for (var s in o) 
                        this.options[s] = o[s];
                    if (this.sizeRatioX = 1, this.sizeRatioY = 1, this.maxPosX = 0, this.maxPosY = 0, this.options.interactive && (this.options.disableTouch || (l.addEvent(this.indicator, "touchstart", this), l.addEvent(t, "touchend", this)), this.options.disablePointer || (l.addEvent(this.indicator, l.prefixPointerEvent("pointerdown"), this), l.addEvent(t, l.prefixPointerEvent("pointerup"), this)), this.options.disableMouse || (l.addEvent(this.indicator, "mousedown", this), l.addEvent(t, "mouseup", this))), this.options.fade) {
                        this.wrapperStyle[l.style.transform] = this.scroller.translateZ;
                        var n = l.style.transitionDuration;
                        this.wrapperStyle[n] = l.isBadAndroid
                            ? "0.0001ms"
                            : "0ms";
                        var r = this;
                        l.isBadAndroid && a(function () {
                            "0.0001ms" === r.wrapperStyle[n] && (r.wrapperStyle[n] = "0s")
                        }),
                        this.wrapperStyle.opacity = "0"
                    }
                }
                var a = t.requestAnimationFrame || t.webkitRequestAnimationFrame || t.mozRequestAnimationFrame || t.oRequestAnimationFrame || t.msRequestAnimationFrame || function (i) {
                        t.setTimeout(i, 1e3 / 60)
                    },
                    l = function () {
                        function s(t) {
                            return a !== !1 && ("" === a
                                ? t
                                : a + t.charAt(0).toUpperCase() + t.substr(1))
                        }
                        var n = {},
                            r = i
                                .createElement("div")
                                .style,
                            a = function () {
                                for (var t, i = [
                                    "t", "webkitT", "MozT", "msT", "OT"
                                ], e = 0, o = i.length; e < o; e++) 
                                    if (t = i[e] + "ransform", t in r) 
                                        return i[e].substr(0, i[e].length - 1);
                            return !1
                            }();
                        n.getTime = Date.now || function () {
                            return (new Date).getTime()
                        },
                        n.extend = function (t, i) {
                            for (var e in i) 
                                t[e] = i[e]
                        },
                        n.addEvent = function (t, i, e, o) {
                            t.addEventListener(i, e, !!o)
                        },
                        n.removeEvent = function (t, i, e, o) {
                            t.removeEventListener(i, e, !!o)
                        },
                        n.prefixPointerEvent = function (i) {
                            return t.MSPointerEvent
                                ? "MSPointer" + i
                                    .charAt(7)
                                    .toUpperCase() + i.substr(8)
                                : i
                        },
                        n.momentum = function (t, i, o, s, n, r) {
                            var a,
                                l,
                                c = t - i,
                                h = e.abs(c) / o;
                            return r = void 0 === r
                                ? 6e-4
                                : r,
                            a = t + h * h / (2 * r) * (c < 0
                                ? -1
                                : 1),
                            l = h / r,
                            a < s
                                ? (a = n
                                    ? s - n / 2.5 * (h / 8)
                                    : s, c = e.abs(a - t), l = c / h)
                                : a > 0 && (a = n
                                    ? n / 2.5 * (h / 8)
                                    : 0, c = e.abs(t) + a, l = c / h), {
                                destination: e.round(a),
                                duration: l
                            }
                        };
                        var l = s("transform");
                        return n.extend(n, {
                            hasTransform: l !== !1,
                            hasPerspective: s("perspective") in r,
                            hasTouch: "ontouchstart" in t,
                            hasPointer: !(!t.PointerEvent && !t.MSPointerEvent),
                            hasTransition: s("transition") in r
                        }),
                        n.isBadAndroid = function () {
                            var i = t.navigator.appVersion;
                            if (/Android/.test(i) && !/Chrome\/\d/.test(i)) {
                                var e = i.match(/Safari\/(\d+.\d)/);
                                return !(e && "object" === ("undefined" == typeof e
                                    ? "undefined"
                                    : o(e)) && e.length >= 2) || parseFloat(e[1]) < 535.19
                            }
                            return !1
                        }(),
                        n.extend(n.style = {}, {
                            transform: l,
                            transitionTimingFunction: s("transitionTimingFunction"),
                            transitionDuration: s("transitionDuration"),
                            transitionDelay: s("transitionDelay"),
                            transformOrigin: s("transformOrigin")
                        }),
                        n.hasClass = function (t, i) {
                            var e = new RegExp("(^|\\s)" + i + "(\\s|$)");
                            return e.test(t.className)
                        },
                        n.addClass = function (t, i) {
                            if (!n.hasClass(t, i)) {
                                var e = t
                                    .className
                                    .split(" ");
                                e.push(i),
                                t.className = e.join(" ")
                            }
                        },
                        n.removeClass = function (t, i) {
                            if (n.hasClass(t, i)) {
                                var e = new RegExp("(^|\\s)" + i + "(\\s|$)", "g");
                                t.className = t
                                    .className
                                    .replace(e, " ")
                            }
                        },
                        n.offset = function (t) {
                            for (var i = -t.offsetLeft, e = -t.offsetTop; t = t.offsetParent;) 
                                i -= t.offsetLeft,
                                e -= t.offsetTop;
                            return {left: i, top: e}
                        },
                        n.preventDefaultException = function (t, i) {
                            for (var e in i) 
                                if (i[e].test(t[e])) 
                                    return !0;
                        return !1
                        },
                        n.extend(n.eventType = {}, {
                            touchstart: 1,
                            touchmove: 1,
                            touchend: 1,
                            mousedown: 2,
                            mousemove: 2,
                            mouseup: 2,
                            pointerdown: 3,
                            pointermove: 3,
                            pointerup: 3,
                            MSPointerDown: 3,
                            MSPointerMove: 3,
                            MSPointerUp: 3
                        }),
                        n.extend(n.ease = {}, {
                            quadratic: {
                                style: "cubic-bezier(0.25, 0.46, 0.45, 0.94)",
                                fn: function (t) {
                                    return t * (2 - t)
                                }
                            },
                            circular: {
                                style: "cubic-bezier(0.1, 0.57, 0.1, 1)",
                                fn: function (t) {
                                    return e.sqrt(1 - --t * t)
                                }
                            },
                            back: {
                                style: "cubic-bezier(0.175, 0.885, 0.32, 1.275)",
                                fn: function (t) {
                                    var i = 4;
                                    return (t -= 1) * t * ((i + 1) * t + i) + 1
                                }
                            },
                            bounce: {
                                style: "",
                                fn: function (t) {
                                    return (t /= 1) < 1 / 2.75
                                        ? 7.5625 * t * t
                                        : t < 2 / 2.75
                                            ? 7.5625 * (t -= 1.5 / 2.75) * t + .75
                                            : t < 2.5 / 2.75
                                                ? 7.5625 * (t -= 2.25 / 2.75) * t + .9375
                                                : 7.5625 * (t -= 2.625 / 2.75) * t + .984375
                                }
                            },
                            elastic: {
                                style: "",
                                fn: function (t) {
                                    var i = .22,
                                        o = .4;
                                    return 0 === t
                                        ? 0
                                        : 1 == t
                                            ? 1
                                            : o * e.pow(2, -10 * t) * e.sin((t - i / 4) * (2 * e.PI) / i) + 1
                                }
                            }
                        }),
                        n.tap = function (t, e) {
                            var o = i.createEvent("Event");
                            o.initEvent(e, !0, !0),
                            o.pageX = t.pageX,
                            o.pageY = t.pageY,
                            t
                                .target
                                .dispatchEvent(o)
                        },
                        n.click = function (t) {
                            var e,
                                o = t.target;
                            /(SELECT|INPUT|TEXTAREA)/i.test(o.tagName) || (e = i.createEvent("MouseEvents"), e.initMouseEvent("click", !0, !0, t.view, 1, o.screenX, o.screenY, o.clientX, o.clientY, t.ctrlKey, t.altKey, t.shiftKey, t.metaKey, 0, null), e._constructed = !0, o.dispatchEvent(e))
                        },
                        n
                    }();
                s.prototype = {
                    version: "5.2.0",
                    _init: function () {
                        this._initEvents(),
                        (this.options.scrollbars || this.options.indicators) && this._initIndicators(),
                        this.options.mouseWheel && this._initWheel(),
                        this.options.snap && this._initSnap(),
                        this.options.keyBindings && this._initKeys()
                    },
                    destroy: function () {
                        this._initEvents(!0),
                        clearTimeout(this.resizeTimeout),
                        this.resizeTimeout = null,
                        this._execEvent("destroy")
                    },
                    _transitionEnd: function (t) {
                        t.target == this.scroller && this.isInTransition && (this._transitionTime(), this.resetPosition(this.options.bounceTime) || (this.isInTransition = !1, this._execEvent("scrollEnd")))
                    },
                    _start: function (t) {
                        if (1 != l.eventType[t.type]) {
                            var i;
                            if (i = t.which
                                ? t.button
                                : t.button < 2
                                    ? 0
                                    : 4 == t.button
                                        ? 1
                                        : 2, 0 !== i) 
                                return
                        }
                        if (this.enabled && (!this.initiated || l.eventType[t.type] === this.initiated)) {
                            !this.options.preventDefault || l.isBadAndroid || l.preventDefaultException(t.target, this.options.preventDefaultException) || t.preventDefault();
                            var o,
                                s = t.touches
                                    ? t.touches[0]
                                    : t;
                            this.initiated = l.eventType[t.type],
                            this.moved = !1,
                            this.distX = 0,
                            this.distY = 0,
                            this.directionX = 0,
                            this.directionY = 0,
                            this.directionLocked = 0,
                            this.startTime = l.getTime(),
                            this.options.useTransition && this.isInTransition
                                ? (this._transitionTime(), this.isInTransition = !1, o = this.getComputedPosition(), this._translate(e.round(o.x), e.round(o.y)), this._execEvent("scrollEnd"))
                                : !this.options.useTransition && this.isAnimating && (this.isAnimating = !1, this._execEvent("scrollEnd")),
                            this.startX = this.x,
                            this.startY = this.y,
                            this.absStartX = this.x,
                            this.absStartY = this.y,
                            this.pointX = s.pageX,
                            this.pointY = s.pageY,
                            this._execEvent("beforeScrollStart")
                        }
                    },
                    _move: function (t) {
                        if (this.enabled && l.eventType[t.type] === this.initiated) {
                            this.options.preventDefault && t.preventDefault();
                            var i,
                                o,
                                s,
                                n,
                                r = t.touches
                                    ? t.touches[0]
                                    : t,
                                a = r.pageX - this.pointX,
                                c = r.pageY - this.pointY,
                                h = l.getTime();
                            if (this.pointX = r.pageX, this.pointY = r.pageY, this.distX += a, this.distY += c, s = e.abs(this.distX), n = e.abs(this.distY), !(h - this.endTime > 300 && s < 10 && n < 10)) {
                                if (this.directionLocked || this.options.freeScroll || (s > n + this.options.directionLockThreshold
                                    ? this.directionLocked = "h"
                                    : n >= s + this.options.directionLockThreshold
                                        ? this.directionLocked = "v"
                                        : this.directionLocked = "n"), "h" == this.directionLocked) {
                                    if ("vertical" == this.options.eventPassthrough) 
                                        t.preventDefault();
                                    else if ("horizontal" == this.options.eventPassthrough) 
                                        return void(this.initiated = !1);
                                    c = 0
                                } else if ("v" == this.directionLocked) {
                                    if ("horizontal" == this.options.eventPassthrough) 
                                        t.preventDefault();
                                    else if ("vertical" == this.options.eventPassthrough) 
                                        return void(this.initiated = !1);
                                    a = 0
                                }
                                a = this.hasHorizontalScroll
                                    ? a
                                    : 0,
                                c = this.hasVerticalScroll
                                    ? c
                                    : 0,
                                i = this.x + a,
                                o = this.y + c,
                                (i > 0 || i < this.maxScrollX) && (i = this.options.bounce
                                    ? this.x + a / 3
                                    : i > 0
                                        ? 0
                                        : this.maxScrollX),
                                (o > 0 || o < this.maxScrollY) && (o = this.options.bounce
                                    ? this.y + c / 3
                                    : o > 0
                                        ? 0
                                        : this.maxScrollY),
                                this.directionX = a > 0
                                    ? -1
                                    : a < 0
                                        ? 1
                                        : 0,
                                this.directionY = c > 0
                                    ? -1
                                    : c < 0
                                        ? 1
                                        : 0,
                                this.moved || this._execEvent("scrollStart"),
                                this.moved = !0,
                                this._translate(i, o),
                                h - this.startTime > 300 && (this.startTime = h, this.startX = this.x, this.startY = this.y)
                            }
                        }
                    },
                    _end: function (t) {
                        if (this.enabled && l.eventType[t.type] === this.initiated) {
                            this.options.preventDefault && !l.preventDefaultException(t.target, this.options.preventDefaultException) && t.preventDefault();
                            var i,
                                o,
                                s = (t.changedTouches
                                    ? t.changedTouches[0]
                                    : t, l.getTime() - this.startTime),
                                n = e.round(this.x),
                                r = e.round(this.y),
                                a = e.abs(n - this.startX),
                                c = e.abs(r - this.startY),
                                h = 0,
                                d = "";
                            if (this.isInTransition = 0, this.initiated = 0, this.endTime = l.getTime(), !this.resetPosition(this.options.bounceTime)) {
                                if (this.scrollTo(n, r), !this.moved) 
                                    return this.options.tap && l.tap(t, this.options.tap),
                                    this.options.click && l.click(t),
                                    void this._execEvent("scrollCancel");
                                if (this._events.flick && s < 200 && a < 100 && c < 100) 
                                    return void this._execEvent("flick");
                                if (this.options.momentum && s < 300 && (i = this.hasHorizontalScroll
                                    ? l.momentum(this.x, this.startX, s, this.maxScrollX, this.options.bounce
                                        ? this.wrapperWidth
                                        : 0, this.options.deceleration)
                                    : {
                                        destination: n,
                                        duration: 0
                                    }, o = this.hasVerticalScroll
                                    ? l.momentum(this.y, this.startY, s, this.maxScrollY, this.options.bounce
                                        ? this.wrapperHeight
                                        : 0, this.options.deceleration)
                                    : {
                                        destination: r,
                                        duration: 0
                                    }, n = i.destination, r = o.destination, h = e.max(i.duration, o.duration), this.isInTransition = 1), this.options.snap) {
                                    var p = this._nearestSnap(n, r);
                                    this.currentPage = p,
                                    h = this.options.snapSpeed || e.max(e.max(e.min(e.abs(n - p.x), 1e3), e.min(e.abs(r - p.y), 1e3)), 300),
                                    n = p.x,
                                    r = p.y,
                                    this.directionX = 0,
                                    this.directionY = 0,
                                    d = this.options.bounceEasing
                                }
                                return n != this.x || r != this.y
                                    ? ((n > 0 || n < this.maxScrollX || r > 0 || r < this.maxScrollY) && (d = l.ease.quadratic), void this.scrollTo(n, r, h, d))
                                    : void this._execEvent("scrollEnd")
                            }
                        }
                    },
                    _resize: function () {
                        var t = this;
                        clearTimeout(this.resizeTimeout),
                        this.resizeTimeout = setTimeout(function () {
                            t.refresh()
                        }, this.options.resizePolling)
                    },
                    resetPosition: function (t) {
                        var i = this.x,
                            e = this.y;
                        return t = t || 0,
                        !this.hasHorizontalScroll || this.x > 0
                            ? i = 0
                            : this.x < this.maxScrollX && (i = this.maxScrollX),
                        !this.hasVerticalScroll || this.y > 0
                            ? e = 0
                            : this.y < this.maxScrollY && (e = this.maxScrollY),
                        (i != this.x || e != this.y) && (this.scrollTo(i, e, t, this.options.bounceEasing), !0)
                    },
                    disable: function () {
                        this.enabled = !1
                    },
                    enable: function () {
                        this.enabled = !0
                    },
                    refresh: function () {
                        this.wrapper.offsetHeight;
                        this.wrapperWidth = this.wrapper.clientWidth,
                        this.wrapperHeight = this.wrapper.clientHeight,
                        this.scrollerWidth = this.scroller.offsetWidth,
                        this.scrollerHeight = this.scroller.offsetHeight,
                        this.maxScrollX = this.wrapperWidth - this.scrollerWidth,
                        this.maxScrollY = this.wrapperHeight - this.scrollerHeight,
                        this.hasHorizontalScroll = this.options.scrollX && this.maxScrollX < 0,
                        this.hasVerticalScroll = this.options.scrollY && this.maxScrollY < 0,
                        this.hasHorizontalScroll || (this.maxScrollX = 0, this.scrollerWidth = this.wrapperWidth),
                        this.hasVerticalScroll || (this.maxScrollY = 0, this.scrollerHeight = this.wrapperHeight),
                        this.endTime = 0,
                        this.directionX = 0,
                        this.directionY = 0,
                        this.wrapperOffset = l.offset(this.wrapper),
                        this._execEvent("refresh"),
                        this.resetPosition()
                    },
                    on: function (t, i) {
                        this._events[t] || (this._events[t] = []),
                        this
                            ._events[t]
                            .push(i)
                    },
                    off: function (t, i) {
                        if (this._events[t]) {
                            var e = this
                                ._events[t]
                                .indexOf(i);
                            e > -1 && this
                                ._events[t]
                                .splice(e, 1)
                        }
                    },
                    _execEvent: function (t) {
                        if (this._events[t]) {
                            var i = 0,
                                e = this._events[t].length;
                            if (e) 
                                for (; i < e; i++) 
                                    this._events[t][i].apply(this, [].slice.call(arguments, 1))
                        }
                    },
                    scrollBy: function (t, i, e, o) {
                        t = this.x + t,
                        i = this.y + i,
                        e = e || 0,
                        this.scrollTo(t, i, e, o)
                    },
                    scrollTo: function (t, i, e, o) {
                        o = o || l.ease.circular,
                        this.isInTransition = this.options.useTransition && e > 0;
                        var s = this.options.useTransition && o.style;
                        !e || s
                            ? (s && (this._transitionTimingFunction(o.style), this._transitionTime(e)), this._translate(t, i))
                            : this._animate(t, i, e, o.fn)
                    },
                    scrollToElement: function (t, i, o, s, n) {
                        if (t = t.nodeType
                            ? t
                            : this.scroller.querySelector(t)) {
                            var r = l.offset(t);
                            r.left -= this.wrapperOffset.left,
                            r.top -= this.wrapperOffset.top,
                            o === !0 && (o = e.round(t.offsetWidth / 2 - this.wrapper.offsetWidth / 2)),
                            s === !0 && (s = e.round(t.offsetHeight / 2 - this.wrapper.offsetHeight / 2)),
                            r.left -= o || 0,
                            r.top -= s || 0,
                            r.left = r.left > 0
                                ? 0
                                : r.left < this.maxScrollX
                                    ? this.maxScrollX
                                    : r.left,
                            r.top = r.top > 0
                                ? 0
                                : r.top < this.maxScrollY
                                    ? this.maxScrollY
                                    : r.top,
                            i = void 0 === i || null === i || "auto" === i
                                ? e.max(e.abs(this.x - r.left), e.abs(this.y - r.top))
                                : i,
                            this.scrollTo(r.left, r.top, i, n)
                        }
                    },
                    _transitionTime: function (t) {
                        t = t || 0;
                        var i = l.style.transitionDuration;
                        if (this.scrollerStyle[i] = t + "ms", !t && l.isBadAndroid) {
                            this.scrollerStyle[i] = "0.0001ms";
                            var e = this;
                            a(function () {
                                "0.0001ms" === e.scrollerStyle[i] && (e.scrollerStyle[i] = "0s")
                            })
                        }
                        if (this.indicators) 
                            for (var o = this.indicators.length; o--;) 
                                this.indicators[o].transitionTime(t)
                    },
                    _transitionTimingFunction: function (t) {
                        if (this.scrollerStyle[l.style.transitionTimingFunction] = t, this.indicators) 
                            for (var i = this.indicators.length; i--;) 
                                this.indicators[i].transitionTimingFunction(t)
                    },
                    _translate: function (t, i) {
                        if (this.options.useTransform
                            ? this.scrollerStyle[l.style.transform] = "translate(" + t + "px," + i + "px)" + this.translateZ
                            : (t = e.round(t), i = e.round(i), this.scrollerStyle.left = t + "px", this.scrollerStyle.top = i + "px"), this.x = t, this.y = i, this.indicators) 
                            for (var o = this.indicators.length; o--;) 
                                this.indicators[o].updatePosition()
                    },
                    _initEvents: function (i) {
                        var e = i
                                ? l.removeEvent
                                : l.addEvent,
                            o = this.options.bindToWrapper
                                ? this.wrapper
                                : t;
                        e(t, "orientationchange", this),
                        e(t, "resize", this),
                        this.options.click && e(this.wrapper, "click", this, !0),
                        this.options.disableMouse || (e(this.wrapper, "mousedown", this), e(o, "mousemove", this), e(o, "mousecancel", this), e(o, "mouseup", this)),
                        l.hasPointer && !this.options.disablePointer && (e(this.wrapper, l.prefixPointerEvent("pointerdown"), this), e(o, l.prefixPointerEvent("pointermove"), this), e(o, l.prefixPointerEvent("pointercancel"), this), e(o, l.prefixPointerEvent("pointerup"), this)),
                        l.hasTouch && !this.options.disableTouch && (e(this.wrapper, "touchstart", this), e(o, "touchmove", this), e(o, "touchcancel", this), e(o, "touchend", this)),
                        e(this.scroller, "transitionend", this),
                        e(this.scroller, "webkitTransitionEnd", this),
                        e(this.scroller, "oTransitionEnd", this),
                        e(this.scroller, "MSTransitionEnd", this)
                    },
                    getComputedPosition: function () {
                        var i,
                            e,
                            o = t.getComputedStyle(this.scroller, null);
                        return this.options.useTransform
                            ? (o = o[l.style.transform].split(")")[0].split(", "),
                            i =+ (o[12] || o[4]),
                            e =+ (o[13] || o[5]))
                            : (i =+ o.left.replace(/[^-\d.]/g, ""), e =+ o.top.replace(/[^-\d.]/g, "")), {
                            x: i,
                            y: e
                        }
                    },
                    _initIndicators: function () {
                        function t(t) {
                            if (a.indicators) 
                                for (var i = a.indicators.length; i--;) 
                                    t.call(a.indicators[i])
                        }
                        var i,
                            e = this.options.interactiveScrollbars,
                            o = "string" != typeof this.options.scrollbars,
                            s = [],
                            a = this;
                        this.indicators = [],
                        this.options.scrollbars && (this.options.scrollY && (i = {
                            el: n("v", e, this.options.scrollbars),
                            interactive: e,
                            defaultScrollbars: !0,
                            customStyle: o,
                            resize: this.options.resizeScrollbars,
                            shrink: this.options.shrinkScrollbars,
                            fade: this.options.fadeScrollbars,
                            listenX: !1
                        }, this.wrapper.appendChild(i.el), s.push(i)), this.options.scrollX && (i = {
                            el: n("h", e, this.options.scrollbars),
                            interactive: e,
                            defaultScrollbars: !0,
                            customStyle: o,
                            resize: this.options.resizeScrollbars,
                            shrink: this.options.shrinkScrollbars,
                            fade: this.options.fadeScrollbars,
                            listenY: !1
                        }, this.wrapper.appendChild(i.el), s.push(i))),
                        this.options.indicators && (s = s.concat(this.options.indicators));
                        for (var l = s.length; l--;) 
                            this.indicators.push(new r(this, s[l]));
                        this.options.fadeScrollbars && (this.on("scrollEnd", function () {
                            t(function () {
                                this.fade()
                            })
                        }), this.on("scrollCancel", function () {
                            t(function () {
                                this.fade()
                            })
                        }), this.on("scrollStart", function () {
                            t(function () {
                                this.fade(1)
                            })
                        }), this.on("beforeScrollStart", function () {
                            t(function () {
                                this.fade(1, !0)
                            })
                        })),
                        this.on("refresh", function () {
                            t(function () {
                                this.refresh()
                            })
                        }),
                        this.on("destroy", function () {
                            t(function () {
                                this.destroy()
                            }),
                            delete this.indicators
                        })
                    },
                    _initWheel: function () {
                        l.addEvent(this.wrapper, "wheel", this),
                        l.addEvent(this.wrapper, "mousewheel", this),
                        l.addEvent(this.wrapper, "DOMMouseScroll", this),
                        this.on("destroy", function () {
                            clearTimeout(this.wheelTimeout),
                            this.wheelTimeout = null,
                            l.removeEvent(this.wrapper, "wheel", this),
                            l.removeEvent(this.wrapper, "mousewheel", this),
                            l.removeEvent(this.wrapper, "DOMMouseScroll", this)
                        })
                    },
                    _wheel: function (t) {
                        if (this.enabled) {
                            t.preventDefault();
                            var i,
                                o,
                                s,
                                n,
                                r = this;
                            if (void 0 === this.wheelTimeout && r._execEvent("scrollStart"), clearTimeout(this.wheelTimeout), this.wheelTimeout = setTimeout(function () {
                                r.options.snap || r._execEvent("scrollEnd"),
                                r.wheelTimeout = void 0
                            }, 400), "deltaX" in t) 
                                1 === t.deltaMode
                                    ? (i = -t.deltaX * this.options.mouseWheelSpeed, o = -t.deltaY * this.options.mouseWheelSpeed)
                                    : (i = -t.deltaX, o = -t.deltaY);
                            else if ("wheelDeltaX" in t) 
                                i = t.wheelDeltaX / 120 * this.options.mouseWheelSpeed,
                                o = t.wheelDeltaY / 120 * this.options.mouseWheelSpeed;
                            else if ("wheelDelta" in t) 
                                i = o = t.wheelDelta / 120 * this.options.mouseWheelSpeed;
                            else {
                                if (!("detail" in t)) 
                                    return;
                                i = o = -t.detail / 3 * this.options.mouseWheelSpeed
                            }
                            if (i *= this.options.invertWheelDirection, o *= this.options.invertWheelDirection, this.hasVerticalScroll || (i = o, o = 0), this.options.snap) 
                                return s = this.currentPage.pageX,
                                n = this.currentPage.pageY,
                                i > 0
                                    ? s--
                                    : i < 0 && s++,
                                o > 0
                                    ? n--
                                    : o < 0 && n++,
                                void this.goToPage(s, n);
                            s = this.x + e.round(this.hasHorizontalScroll
                                ? i
                                : 0),
                            n = this.y + e.round(this.hasVerticalScroll
                                ? o
                                : 0),
                            this.directionX = i > 0
                                ? -1
                                : i < 0
                                    ? 1
                                    : 0,
                            this.directionY = o > 0
                                ? -1
                                : o < 0
                                    ? 1
                                    : 0,
                            s > 0
                                ? s = 0
                                : s < this.maxScrollX && (s = this.maxScrollX),
                            n > 0
                                ? n = 0
                                : n < this.maxScrollY && (n = this.maxScrollY),
                            this.scrollTo(s, n, 0)
                        }
                    },
                    _initSnap: function () {
                        this.currentPage = {},
                        "string" == typeof this.options.snap && (this.options.snap = this.scroller.querySelectorAll(this.options.snap)),
                        this.on("refresh", function () {
                            var t,
                                i,
                                o,
                                s,
                                n,
                                r,
                                a = 0,
                                l = 0,
                                c = 0,
                                h = this.options.snapStepX || this.wrapperWidth,
                                d = this.options.snapStepY || this.wrapperHeight;
                            if (this.pages = [], this.wrapperWidth && this.wrapperHeight && this.scrollerWidth && this.scrollerHeight) {
                                if (this.options.snap === !0) 
                                    for (o = e.round(h / 2), s = e.round(d / 2); c > -this.scrollerWidth;) {
                                        for (this.pages[a] = [], t = 0, n = 0; n > -this.scrollerHeight;) 
                                            this.pages[a][t] = {
                                                x: e.max(c, this.maxScrollX),
                                                y: e.max(n, this.maxScrollY),
                                                width: h,
                                                height: d,
                                                cx: c - o,
                                                cy: n - s
                                            }
                                        ,
                                        n -= d,
                                        t++;
                                        c -= h,
                                        a++
                                    } else 
                                        for (r = this.options.snap, t = r.length, i = -1; a < t; a++) 
                                            (0 === a || r[a].offsetLeft <= r[a - 1].offsetLeft) && (l = 0, i++),
                                            this.pages[l] || (this.pages[l] = []),
                                            c = e.max(-r[a].offsetLeft, this.maxScrollX),
                                            n = e.max(-r[a].offsetTop, this.maxScrollY),
                                            o = c - e.round(r[a].offsetWidth / 2),
                                            s = n - e.round(r[a].offsetHeight / 2),
                                            this.pages[l][i] = {
                                                x: c,
                                                y: n,
                                                width: r[a].offsetWidth,
                                                height: r[a].offsetHeight,
                                                cx: o,
                                                cy: s
                                            }
                                        ,
                                c > this.maxScrollX && l++;
                                this.goToPage(this.currentPage.pageX || 0, this.currentPage.pageY || 0, 0),
                                this.options.snapThreshold % 1 === 0
                                    ? (this.snapThresholdX = this.options.snapThreshold, this.snapThresholdY = this.options.snapThreshold)
                                    : (this.snapThresholdX = e.round(this.pages[this.currentPage.pageX][this.currentPage.pageY].width * this.options.snapThreshold), this.snapThresholdY = e.round(this.pages[this.currentPage.pageX][this.currentPage.pageY].height * this.options.snapThreshold))
                            }
                        }),
                        this.on("flick", function () {
                            var t = this.options.snapSpeed || e.max(e.max(e.min(e.abs(this.x - this.startX), 1e3), e.min(e.abs(this.y - this.startY), 1e3)), 300);
                            this.goToPage(this.currentPage.pageX + this.directionX, this.currentPage.pageY + this.directionY, t)
                        })
                    },
                    _nearestSnap: function (t, i) {
                        if (!this.pages.length) 
                            return {x: 0, y: 0, pageX: 0, pageY: 0};
                        var o = 0,
                            s = this.pages.length,
                            n = 0;
                        if (e.abs(t - this.absStartX) < this.snapThresholdX && e.abs(i - this.absStartY) < this.snapThresholdY) 
                            return this.currentPage;
                        for (t > 0
                            ? t = 0
                            : t < this.maxScrollX && (t = this.maxScrollX), i > 0
                            ? i = 0
                            : i < this.maxScrollY && (i = this.maxScrollY); o < s; o++) 
                            if (t >= this.pages[o][0].cx) {
                                t = this.pages[o][0].x;
                                break
                            }
                        for (s = this.pages[o].length; n < s; n++) 
                            if (i >= this.pages[0][n].cy) {
                                i = this.pages[0][n].y;
                                break
                            }
                        return o == this.currentPage.pageX && (o += this.directionX, o < 0
                            ? o = 0
                            : o >= this.pages.length && (o = this.pages.length - 1), t = this.pages[o][0].x),
                        n == this.currentPage.pageY && (n += this.directionY, n < 0
                            ? n = 0
                            : n >= this.pages[0].length && (n = this.pages[0].length - 1), i = this.pages[0][n].y), {
                            x: t,
                            y: i,
                            pageX: o,
                            pageY: n
                        }
                    },
                    goToPage: function (t, i, o, s) {
                        s = s || this.options.bounceEasing,
                        t >= this.pages.length
                            ? t = this.pages.length - 1
                            : t < 0 && (t = 0),
                        i >= this.pages[t].length
                            ? i = this.pages[t].length - 1
                            : i < 0 && (i = 0);
                        var n = this.pages[t][i].x,
                            r = this.pages[t][i].y;
                        o = void 0 === o
                            ? this.options.snapSpeed || e.max(e.max(e.min(e.abs(n - this.x), 1e3), e.min(e.abs(r - this.y), 1e3)), 300)
                            : o,
                        this.currentPage = {
                            x: n,
                            y: r,
                            pageX: t,
                            pageY: i
                        },
                        this.scrollTo(n, r, o, s)
                    },
                    next: function (t, i) {
                        var e = this.currentPage.pageX,
                            o = this.currentPage.pageY;
                        e++,
                        e >= this.pages.length && this.hasVerticalScroll && (e = 0, o++),
                        this.goToPage(e, o, t, i)
                    },
                    prev: function (t, i) {
                        var e = this.currentPage.pageX,
                            o = this.currentPage.pageY;
                        e--,
                        e < 0 && this.hasVerticalScroll && (e = 0, o--),
                        this.goToPage(e, o, t, i)
                    },
                    _initKeys: function (i) {
                        var e,
                            s = {
                                pageUp: 33,
                                pageDown: 34,
                                end: 35,
                                home: 36,
                                left: 37,
                                up: 38,
                                right: 39,
                                down: 40
                            };
                        if ("object" == o(this.options.keyBindings)) 
                            for (e in this.options.keyBindings) 
                                "string" == typeof this.options.keyBindings[e] && (this.options.keyBindings[e] = this.options.keyBindings[e].toUpperCase().charCodeAt(0));
                    else 
                            this.options.keyBindings = {};
                        for (e in s) 
                            this.options.keyBindings[e] = this.options.keyBindings[e] || s[e];
                        l.addEvent(t, "keydown", this),
                        this.on("destroy", function () {
                            l.removeEvent(t, "keydown", this)
                        })
                    },
                    _key: function (t) {
                        if (this.enabled) {
                            var i,
                                o = this.options.snap,
                                s = o
                                    ? this.currentPage.pageX
                                    : this.x,
                                n = o
                                    ? this.currentPage.pageY
                                    : this.y,
                                r = l.getTime(),
                                a = this.keyTime || 0,
                                c = .25;
                            switch (this.options.useTransition && this.isInTransition && (i = this.getComputedPosition(), this._translate(e.round(i.x), e.round(i.y)), this.isInTransition = !1), this.keyAcceleration = r - a < 200
                                ? e.min(this.keyAcceleration + c, 50)
                                : 0, t.keyCode) {
                                case this.options.keyBindings.pageUp:
                                    this.hasHorizontalScroll && !this.hasVerticalScroll
                                        ? s += o
                                            ? 1
                                            : this.wrapperWidth
                                        : n += o
                                            ? 1
                                            : this.wrapperHeight;
                                    break;
                                case this.options.keyBindings.pageDown:
                                    this.hasHorizontalScroll && !this.hasVerticalScroll
                                        ? s -= o
                                            ? 1
                                            : this.wrapperWidth
                                        : n -= o
                                            ? 1
                                            : this.wrapperHeight;
                                    break;
                                case this.options.keyBindings.end:
                                    s = o
                                        ? this.pages.length - 1
                                        : this.maxScrollX,
                                    n = o
                                        ? this.pages[0].length - 1
                                        : this.maxScrollY;
                                    break;
                                case this.options.keyBindings.home:
                                    s = 0,
                                    n = 0;
                                    break;
                                case this.options.keyBindings.left:
                                    s += o
                                        ? -1
                                        : 5 + this.keyAcceleration >> 0;
                                    break;
                                case this.options.keyBindings.up:
                                    n += o
                                        ? 1
                                        : 5 + this.keyAcceleration >> 0;
                                    break;
                                case this.options.keyBindings.right:
                                    s -= o
                                        ? -1
                                        : 5 + this.keyAcceleration >> 0;
                                    break;
                                case this.options.keyBindings.down:
                                    n -= o
                                        ? 1
                                        : 5 + this.keyAcceleration >> 0;
                                    break;
                                default:
                                    return
                            }
                            if (o) 
                                return void this.goToPage(s, n);
                            s > 0
                                ? (s = 0, this.keyAcceleration = 0)
                                : s < this.maxScrollX && (s = this.maxScrollX, this.keyAcceleration = 0),
                            n > 0
                                ? (n = 0, this.keyAcceleration = 0)
                                : n < this.maxScrollY && (n = this.maxScrollY, this.keyAcceleration = 0),
                            this.scrollTo(s, n, 0),
                            this.keyTime = r
                        }
                    },
                    _animate: function (t, i, e, o) {
                        function s() {
                            var p,
                                u,
                                f,
                                m = l.getTime();
                            return m >= d
                                ? (n.isAnimating = !1, n._translate(t, i), void(n.resetPosition(n.options.bounceTime) || n._execEvent("scrollEnd")))
                                : (m = (m - h) / e, f = o(m), p = (t - r) * f + r, u = (i - c) * f + c, n._translate(p, u), void(n.isAnimating && a(s)))
                        }
                        var n = this,
                            r = this.x,
                            c = this.y,
                            h = l.getTime(),
                            d = h + e;
                        this.isAnimating = !0,
                        s()
                    },
                    handleEvent: function (t) {
                        switch (t.type) {
                            case "touchstart":
                            case "pointerdown":
                            case "MSPointerDown":
                            case "mousedown":
                                this._start(t);
                                break;
                            case "touchmove":
                            case "pointermove":
                            case "MSPointerMove":
                            case "mousemove":
                                this._move(t);
                                break;
                            case "touchend":
                            case "pointerup":
                            case "MSPointerUp":
                            case "mouseup":
                            case "touchcancel":
                            case "pointercancel":
                            case "MSPointerCancel":
                            case "mousecancel":
                                this._end(t);
                                break;
                            case "orientationchange":
                            case "resize":
                                this._resize();
                                break;
                            case "transitionend":
                            case "webkitTransitionEnd":
                            case "oTransitionEnd":
                            case "MSTransitionEnd":
                                this._transitionEnd(t);
                                break;
                            case "wheel":
                            case "DOMMouseScroll":
                            case "mousewheel":
                                this._wheel(t);
                                break;
                            case "keydown":
                                this._key(t);
                                break;
                            case "click":
                                this.enabled && !t._constructed && (t.preventDefault(), t.stopPropagation())
                        }
                    }
                },
                r.prototype = {
                    handleEvent: function (t) {
                        switch (t.type) {
                            case "touchstart":
                            case "pointerdown":
                            case "MSPointerDown":
                            case "mousedown":
                                this._start(t);
                                break;
                            case "touchmove":
                            case "pointermove":
                            case "MSPointerMove":
                            case "mousemove":
                                this._move(t);
                                break;
                            case "touchend":
                            case "pointerup":
                            case "MSPointerUp":
                            case "mouseup":
                            case "touchcancel":
                            case "pointercancel":
                            case "MSPointerCancel":
                            case "mousecancel":
                                this._end(t)
                        }
                    },
                    destroy: function () {
                        this.options.fadeScrollbars && (clearTimeout(this.fadeTimeout), this.fadeTimeout = null),
                        this.options.interactive && (l.removeEvent(this.indicator, "touchstart", this), l.removeEvent(this.indicator, l.prefixPointerEvent("pointerdown"), this), l.removeEvent(this.indicator, "mousedown", this), l.removeEvent(t, "touchmove", this), l.removeEvent(t, l.prefixPointerEvent("pointermove"), this), l.removeEvent(t, "mousemove", this), l.removeEvent(t, "touchend", this), l.removeEvent(t, l.prefixPointerEvent("pointerup"), this), l.removeEvent(t, "mouseup", this)),
                        this.options.defaultScrollbars && this
                            .wrapper
                            .parentNode
                            .removeChild(this.wrapper)
                    },
                    _start: function (i) {
                        var e = i.touches
                            ? i.touches[0]
                            : i;
                        i.preventDefault(),
                        i.stopPropagation(),
                        this.transitionTime(),
                        this.initiated = !0,
                        this.moved = !1,
                        this.lastPointX = e.pageX,
                        this.lastPointY = e.pageY,
                        this.startTime = l.getTime(),
                        this.options.disableTouch || l.addEvent(t, "touchmove", this),
                        this.options.disablePointer || l.addEvent(t, l.prefixPointerEvent("pointermove"), this),
                        this.options.disableMouse || l.addEvent(t, "mousemove", this),
                        this
                            .scroller
                            ._execEvent("beforeScrollStart")
                    },
                    _move: function (t) {
                        var i,
                            e,
                            o,
                            s,
                            n = t.touches
                                ? t.touches[0]
                                : t;
                        l.getTime();
                        this.moved || this
                            .scroller
                            ._execEvent("scrollStart"),
                        this.moved = !0,
                        i = n.pageX - this.lastPointX,
                        this.lastPointX = n.pageX,
                        e = n.pageY - this.lastPointY,
                        this.lastPointY = n.pageY,
                        o = this.x + i,
                        s = this.y + e,
                        this._pos(o, s),
                        t.preventDefault(),
                        t.stopPropagation()
                    },
                    _end: function (i) {
                        if (this.initiated) {
                            if (this.initiated = !1, i.preventDefault(), i.stopPropagation(), l.removeEvent(t, "touchmove", this), l.removeEvent(t, l.prefixPointerEvent("pointermove"), this), l.removeEvent(t, "mousemove", this), this.scroller.options.snap) {
                                var o = this
                                        .scroller
                                        ._nearestSnap(this.scroller.x, this.scroller.y),
                                    s = this.options.snapSpeed || e.max(e.max(e.min(e.abs(this.scroller.x - o.x), 1e3), e.min(e.abs(this.scroller.y - o.y), 1e3)), 300);
                                this.scroller.x == o.x && this.scroller.y == o.y || (this.scroller.directionX = 0, this.scroller.directionY = 0, this.scroller.currentPage = o, this.scroller.scrollTo(o.x, o.y, s, this.scroller.options.bounceEasing))
                            }
                            this.moved && this
                                .scroller
                                ._execEvent("scrollEnd")
                        }
                    },
                    transitionTime: function (t) {
                        t = t || 0;
                        var i = l.style.transitionDuration;
                        if (this.indicatorStyle[i] = t + "ms", !t && l.isBadAndroid) {
                            this.indicatorStyle[i] = "0.0001ms";
                            var e = this;
                            a(function () {
                                "0.0001ms" === e.indicatorStyle[i] && (e.indicatorStyle[i] = "0s")
                            })
                        }
                    },
                    transitionTimingFunction: function (t) {
                        this.indicatorStyle[l.style.transitionTimingFunction] = t
                    },
                    refresh: function () {
                        this.transitionTime(),
                        this.options.listenX && !this.options.listenY
                            ? this.indicatorStyle.display = this.scroller.hasHorizontalScroll
                                ? "block"
                                : "none"
                            : this.options.listenY && !this.options.listenX
                                ? this.indicatorStyle.display = this.scroller.hasVerticalScroll
                                    ? "block"
                                    : "none"
                                : this.indicatorStyle.display = this.scroller.hasHorizontalScroll || this.scroller.hasVerticalScroll
                                    ? "block"
                                    : "none",
                        this.scroller.hasHorizontalScroll && this.scroller.hasVerticalScroll
                            ? (l.addClass(this.wrapper, "iScrollBothScrollbars"), l.removeClass(this.wrapper, "iScrollLoneScrollbar"), this.options.defaultScrollbars && this.options.customStyle && (this.options.listenX
                                ? this.wrapper.style.right = "8px"
                                : this.wrapper.style.bottom = "8px"))
                            : (l.removeClass(this.wrapper, "iScrollBothScrollbars"), l.addClass(this.wrapper, "iScrollLoneScrollbar"), this.options.defaultScrollbars && this.options.customStyle && (this.options.listenX
                                ? this.wrapper.style.right = "2px"
                                : this.wrapper.style.bottom = "2px"));
                        this.wrapper.offsetHeight;
                        this.options.listenX && (this.wrapperWidth = this.wrapper.clientWidth, this.options.resize
                            ? (this.indicatorWidth = e.max(e.round(this.wrapperWidth * this.wrapperWidth / (this.scroller.scrollerWidth || this.wrapperWidth || 1)), 8), this.indicatorStyle.width = this.indicatorWidth + "px")
                            : this.indicatorWidth = this.indicator.clientWidth, this.maxPosX = this.wrapperWidth - this.indicatorWidth, "clip" == this.options.shrink
                            ? (this.minBoundaryX = -this.indicatorWidth + 8, this.maxBoundaryX = this.wrapperWidth - 8)
                            : (this.minBoundaryX = 0, this.maxBoundaryX = this.maxPosX), this.sizeRatioX = this.options.speedRatioX || this.scroller.maxScrollX && this.maxPosX / this.scroller.maxScrollX),
                        this.options.listenY && (this.wrapperHeight = this.wrapper.clientHeight, this.options.resize
                            ? (this.indicatorHeight = e.max(e.round(this.wrapperHeight * this.wrapperHeight / (this.scroller.scrollerHeight || this.wrapperHeight || 1)), 8), this.indicatorStyle.height = this.indicatorHeight + "px")
                            : this.indicatorHeight = this.indicator.clientHeight, this.maxPosY = this.wrapperHeight - this.indicatorHeight, "clip" == this.options.shrink
                            ? (this.minBoundaryY = -this.indicatorHeight + 8, this.maxBoundaryY = this.wrapperHeight - 8)
                            : (this.minBoundaryY = 0, this.maxBoundaryY = this.maxPosY), this.maxPosY = this.wrapperHeight - this.indicatorHeight, this.sizeRatioY = this.options.speedRatioY || this.scroller.maxScrollY && this.maxPosY / this.scroller.maxScrollY),
                        this.updatePosition()
                    },
                    updatePosition: function () {
                        var t = this.options.listenX && e.round(this.sizeRatioX * this.scroller.x) || 0,
                            i = this.options.listenY && e.round(this.sizeRatioY * this.scroller.y) || 0;
                        this.options.ignoreBoundaries || (t < this.minBoundaryX
                            ? ("scale" == this.options.shrink && (this.width = e.max(this.indicatorWidth + t, 8), this.indicatorStyle.width = this.width + "px"), t = this.minBoundaryX)
                            : t > this.maxBoundaryX
                                ? "scale" == this.options.shrink
                                    ? (this.width = e.max(this.indicatorWidth - (t - this.maxPosX), 8), this.indicatorStyle.width = this.width + "px", t = this.maxPosX + this.indicatorWidth - this.width)
                                    : t = this.maxBoundaryX
                                : "scale" == this.options.shrink && this.width != this.indicatorWidth && (this.width = this.indicatorWidth, this.indicatorStyle.width = this.width + "px"), i < this.minBoundaryY
                            ? ("scale" == this.options.shrink && (this.height = e.max(this.indicatorHeight + 3 * i, 8), this.indicatorStyle.height = this.height + "px"), i = this.minBoundaryY)
                            : i > this.maxBoundaryY
                                ? "scale" == this.options.shrink
                                    ? (this.height = e.max(this.indicatorHeight - 3 * (i - this.maxPosY), 8), this.indicatorStyle.height = this.height + "px", i = this.maxPosY + this.indicatorHeight - this.height)
                                    : i = this.maxBoundaryY
                                : "scale" == this.options.shrink && this.height != this.indicatorHeight && (this.height = this.indicatorHeight, this.indicatorStyle.height = this.height + "px")),
                        this.x = t,
                        this.y = i,
                        this.scroller.options.useTransform
                            ? this.indicatorStyle[l.style.transform] = "translate(" + t + "px," + i + "px)" + this.scroller.translateZ
                            : (this.indicatorStyle.left = t + "px", this.indicatorStyle.top = i + "px")
                    },
                    _pos: function (t, i) {
                        t < 0
                            ? t = 0
                            : t > this.maxPosX && (t = this.maxPosX),
                        i < 0
                            ? i = 0
                            : i > this.maxPosY && (i = this.maxPosY),
                        t = this.options.listenX
                            ? e.round(t / this.sizeRatioX)
                            : this.scroller.x,
                        i = this.options.listenY
                            ? e.round(i / this.sizeRatioY)
                            : this.scroller.y,
                        this
                            .scroller
                            .scrollTo(t, i)
                    },
                    fade: function (t, i) {
                        if (!i || this.visible) {
                            clearTimeout(this.fadeTimeout),
                            this.fadeTimeout = null;
                            var e = t
                                    ? 250
                                    : 500,
                                o = t
                                    ? 0
                                    : 300;
                            t = t
                                ? "1"
                                : "0",
                            this.wrapperStyle[l.style.transitionDuration] = e + "ms",
                            this.fadeTimeout = setTimeout(function (t) {
                                this.wrapperStyle.opacity = t,
                                this.visible =+ t
                            }.bind(this, t), o)
                        }
                    }
                },
                s.utils = l,
                t.IScroll = s
            }(window, document, Math)
        }, {}
    ],
    14: [
        function (t, i, e) {
            !function (t) {
                var i = navigator
                        .userAgent
                        .toLowerCase(),
                    e = function () {
                        window.downloadAppConfig
                            ? i.match(/iphone/gi) || i.match(/ipad/gi)
                                ? s()
                                : window.downloadAppConfig.confirm || "true" == window.downloadAppConfig.confirm
                                    ? t.modal({
                                        type: "confirm",
                                        title: "下载确认",
                                        section: "即将开始下载，是否继续",
                                        callback: {
                                            save: function () {
                                                window.downloadAppConfig.stats
                                                    ? t.ajax({
                                                        url: window.downloadAppConfig.stats,
                                                        complete: function () {
                                                            s()
                                                        }
                                                    })
                                                    : s()
                                            }
                                        }
                                    })
                                    : s()
                            : console.error("请先配置参数window.downloadAppConfig")
                    },
                    o = function (t) {
                        if (t.indexOf("dbnewopen") != -1) 
                            window.location.href = t;
                        else if (t.indexOf("?") !== -1) 
                            if (t.indexOf("#") !== -1) {
                                if (t.indexOf("#/") !== -1) 
                                    return void(window.location.href = t + "&dbnewopen");
                                window.location.href = t.split("#")[0] + "&dbnewopen#" + t.split("#")[1]
                            }
                        else {
                            if (window.ucAppId) 
                                return void(window.location.href = t + "&nowake=1&dbnewopen");
                            window.location.href = t + "&dbnewopen"
                        } else 
                            "" !== t && (window.location.href = t + "?dbnewopen")
                    },
                    s = function () {
                        var t,
                            e = window.downloadAppConfig.openUrl || "",
                            s = "",
                            n = !1;
                        void 0 !== window.TBSDK_ADA && (t = function (t) {
                            var i = function () {
                                n = !0,
                                window.isSpecialApp
                                    ? window.location.href = t
                                    : window
                                        .BC_SDK
                                        .openPage({url: t})
                            };
                            t.indexOf("taoquan.taobao.com") === -1 && t.indexOf("shop.m.taobao.com") === -1 || (window.BC_SDK = TBSDK_ADA.init({
                                appkey: "23402401",
                                openTBAPP: !0
                            }), i()),
                            t.indexOf("s.click.taobao.com") !== -1 && (window.BC_SDK = TBSDK_ADA.init({
                                appkey: "23454468",
                                appSecret: "3846ae97316a0b31321a8f493f826986",
                                openTBAPP: !0
                            }), i())
                        });
                        var r = function (i) {
                            return i && i.indexOf("weixin://") !== -1
                                ? (n = !0, void(window.location.href = i))
                                : void(e && e.indexOf("weixin://") !== -1 || void 0 !== window.TBSDK_ADA && t(i))
                        };
                        if (i.match(/iphone/gi) || i.match(/ipad/gi)) {
                            if (s = window.downloadAppConfig.iosDownloadUrl, r(s), n) 
                                return;
                            if (i.match(/MicroMessenger/gi)) 
                                o(s);
                            else if (e) 
                                window.location.href = e;
                            else if (s.indexOf("itunes.apple.com") != -1) {
                                var a = document.createElement("iframe");
                                a.src = s,
                                a.style.display = "none",
                                window.setTimeout(function () {
                                    document
                                        .body
                                        .appendChild(a)
                                }, 300)
                            } else 
                                o(s)
                        } else {
                            if (s = window.downloadAppConfig.androidDownloadUrl, r(s), n) 
                                return;
                            if (e) 
                                return void(window.location.href = e);
                            s.indexOf(".apk") != -1 || s.indexOf("dbnewopen") != -1
                                ? window.location.href = s
                                : o(s)
                        }
                    };
                window.downloadApp = e
            }(Zepto)
        }, {}
    ],
    15: [
        function (t, i, e) {
            !function (i) {
                t("../IScroll");
                var e = !1,
                    o = function (t) {
                        return t && t.url && t.data && !e
                            ? (this.options = t, "coupon" == this.options.prizeType || "physical" == this.options.prizeType || "nothing" == this.options.prizeType
                                ? (e = !0, this.init(), this)
                                : void 0)
                            : console.warn("参数异常")
                    };
                o.prototype.init = function () {
                    this.ajax(),
                    this.template(),
                    this.slideDown()
                },
                o.prototype.ajax = function () {
                    i(".prize-detail-content").hide(),
                    this.xhr = i.ajax({
                        url: this.options.url,
                        type: "post",
                        data: this.options.data,
                        dataType: "json",
                        success: function (t) {
                            t.success && (i(".prize-detail-loading").hide(), i(".prize-detail-img").attr("src", t.data.img), i(".prize-detail-info h3").html(t.data.title), i(".prize-detail-info p").html(t.data.valiDate), i(".prize-detail-description").html(t.data.description), i(".prize-detail-description a").addClass("needsclick"), i(".prize-detail-slidebox").show(), i(".prize-detail-slidebox img").each(function (t, i) {
                                i.onload = function () {
                                    new IScroll(".prize-detail-slidebox", {
                                        mouseWheel: !0,
                                        scrollbars: !0,
                                        shrinkScrollbars: "scale",
                                        click: !0
                                    })
                                }
                            }))
                        },
                        error: function (t) {
                            console.log(t)
                        }
                    })
                },
                o.prototype.template = function () {
                    var t = "";
                    t += '<div class="prize-detail-modal"><div class="prize-detail-dialog"><div class="pri' +
                            'ze-detail-slidebox"><div class="prize-detail-content"><img class="prize-detail-i' +
                            'mg"><div class="prize-detail-info"><h3></h3><p></p></div><div class="prize-detai' +
                            'l-description"></div></div></div><i class="prize-detail-slideup"></i><div class=' +
                            '"prize-detail-loading"><i></i><p>正在获取奖品信息,请稍后...</p></div></div></div>',
                    i("body").append(t)
                },
                o.prototype.slideDown = function () {
                    i("#db-content").addClass("filter-blur"),
                    i(".prize-detail-modal").show(),
                    setTimeout(function () {
                        i(".prize-detail-modal").addClass("show")
                    }, 0),
                    i(".prize-detail-loading").show();
                    var t = this;
                    i(".prize-detail-slideup").on("click", function () {
                        i(".prize-detail-modal").removeClass("show"),
                        setTimeout(function () {
                            i(".prize-detail-modal").remove(),
                            e = !1
                        }, 300),
                        i("#db-content").removeClass("filter-blur"),
                        t
                            .xhr
                            .abort()
                    })
                },
                window.GetPrizeDetail = o
            }(Zepto)
        }, {
            "../IScroll": 13
        }
    ],
    16: [
        function (t, i, e) {
            !function (t) {
                var i = {
                    show: function (i) {
                        var e = {
                            title: "",
                            tip: "",
                            type: "",
                            btnText: "",
                            link: "",
                            clickCallback: null,
                            btnCallback: null
                        };
                        i = t.extend({}, e, i),
                        this.render(i)
                    },
                    hide: function () {
                        t(".db-msg-modal").remove(),
                        t("#db-content").removeClass("filter")
                    },
                    render: function (i) {
                        var e = CFG.host,
                            o = this,
                            s = {
                                again: e + "/h5/activity/showModal/1.0/again.png",
                                noPrize: e + "/h5/activity/showModal/1.0/noPrize.png",
                                todayOver: e + "/h5/activity/showModal/1.0/todayOver.png",
                                over: e + "/h5/activity/showModal/1.0/over.png",
                                preview: e + "/h5/activity/showModal/1.0/noCredits.png",
                                systemError: e + "/h5/activity/showModal/1.0/noLogin.png",
                                networkError: e + "/h5/activity/showModal/1.0/networkError.png"
                            },
                            n = s[i.type],
                            r = '<div class="db-msg-modal"><div class="msg-modal-wrapper"><div class="msg-modal-h' +
                                    'eader"><i class="msg-modal-close"></i><h4 class="msg-title">' + i.title + '</h4><p class="msg-tip">' + i.tip + '</p></div><div class="msg-modal-section">' + (n
                                ? '<img src="' + n + '" />'
                                : "") + '</div><div class="msg-modal-footer"><a href="javascript:;" class="msg-btn">' + i.btnText + "</a></div></div></div>";
                        t("body").append(r),
                        t("#db-content").addClass("filter"),
                        t(".db-msg-modal")
                            .off("click")
                            .on("click", ".msg-modal-close", function () {
                                i.clickCallback && i.clickCallback(),
                                o.hide()
                            })
                            .on("click", ".msg-btn", function () {
                                i.link && (window.location.href = i.link),
                                i.btnCallback
                                    ? i.btnCallback()
                                    : i.clickCallback && i.clickCallback(),
                                o.hide()
                            })
                    }
                };
                window.errorMsgModal = i
            }(Zepto)
        }, {}
    ],
    17: [
        function (t, i, e) {
            !function (t) {
                var i = function (i) {
                    var e = {
                        title: "恭喜您，中奖啦",
                        desc: "也可到首页“兑换记录”领奖，24小时内有效",
                        name: "",
                        type: "object",
                        img: "",
                        leftBtnText: "继续抽奖",
                        btnText: "查看奖品",
                        onsubmit: function () {},
                        onclose: function () {}
                    };
                    i.type && ("virtual" === i.type
                        ? e.btnText = "查看奖品"
                        : e.btnText = "立即领奖"),
                    i = t.extend({}, e, i);
                    var o = "";
                    o += '<div class="prize-dialog-modal"><div class="prize-dialog-wrapper animated zoomIn' +
                            '"><span class="shine"></span>',
                    o += '<div class="prize-dialog-content"><span class="trophy"></span>';
                    for (var s = 3; s <= 11; s++) 
                        o += '<span class="color-point point' + s + '"></span>';
                    o += '<span class="btn-close"></span>',
                    o += "<h3>" + i.title + '</h3><p class="prize-name">' + i.name + '</p><img src="' + i.img + '" />',
                    o += '<p class="prize-desc">' + i.desc + "</p>",
                    o += '<div class="btns">',
                    o += '<a href="javascript:;" class="btn btn-left btn-orange btn-cancle">' + i.leftBtnText + "</a>",
                    o += '<a href="javascript:;" class="btn btn-right btn-red btn-submit">' + i.btnText + "</a>",
                    o += "</div></div></div></div>",
                    t("body").append(o),
                    t(".prize-dialog-wrapper")
                        .find(".btn-submit")
                        .on("click", i.onsubmit),
                    t(".prize-dialog-wrapper")
                        .find(".btn-close,.btn-cancle")
                        .on("click", function () {
                            t(".prize-dialog-modal").remove(),
                            i.onclose && i.onclose()
                        })
                };
                window.showObjectPrize = i
            }(Zepto)
        }, {}
    ],
    18: [
        function (t, i, e) {
            !function (t, i, e) {
                var o = {
                    initLog: function () {
                        var t = this;
                        t.showLog(),
                        t.clickLog(),
                        t.srollLog()
                    },
                    showLog: function (e, o) {
                        var s = this,
                            n = i(t).height();
                        i("body")
                            .find("[db-exposure]")
                            .not("[db-exposure-get]")
                            .each(function () {
                                var r = i(this),
                                    a = r.attr("db-exposure");
                                if (!r.offset() || 0 !== r.offset().width) {
                                    var l = !1,
                                        c = !1;
                                    if (r.offset() && (l = i(t).scrollTop() >= r.offset().top - n + (o || 0), c = i(t).scrollTop() <= r.offset().top + (o || 50)), l && c && (r.attr("db-exposure-get", !0), void 0 !== a && "undefined" !== a && "" !== i.trim(a))) {
                                        try {
                                            a = JSON.parse(a)
                                        } catch (h) {
                                            console.log("数据曝光失败:" + (h || ""))
                                        }
                                        a.domain && s.sendApi({
                                            domain: a.domain,
                                            url: "/exposure/standard",
                                            data: a
                                        }, function () {
                                            e && e(),
                                            r.attr("db-exposure-get", !0)
                                        }),
                                        a.domain4Web && s.sendApi({
                                            domain: a.domain4Web,
                                            url: a.url,
                                            data: a
                                        }, function () {
                                            e && e(),
                                            r.attr("db-exposure-get", !0)
                                        })
                                    }
                                }
                            })
                    },
                    clickLog: function (t) {
                        var e = this;
                        i("body")
                            .find("[db-click]")
                            .unbind("click.statistics")
                            .bind("click.statistics", function () {
                                var o = i(this),
                                    s = o.attr("db-click");
                                if ("none" !== o.css("display") && "disabled" !== o.attr("disabled") && !o.prop("disabled") && void 0 !== s && "undefined" !== s && "" !== i.trim(s)) {
                                    try {
                                        s = JSON.parse(s)
                                    } catch (n) {
                                        console.log("数据曝光失败:" + (n || ""))
                                    }
                                    s.domain4Web && e.sendApi({
                                        domain: s.domain4Web,
                                        url: s.url,
                                        data: s
                                    }, function () {
                                        t && t(),
                                        console.log("完成点击")
                                    })
                                }
                            })
                    },
                    srollLog: function (e) {
                        var o = this;
                        setTimeout(function () {
                            i(t)
                                .scroll(function () {
                                    o.showLog()
                                })
                        }, 200)
                    },
                    sendApi: function (t, e, o, s) {
                        try {
                            var n = JSON.stringify(t);
                            if (n.indexOf("iframe") !== -1) 
                                return
                        } catch (r) {
                            console.log("数据异常:" + (r || ""))
                        }
                        var a = t.domain || "",
                            l = t.url;
                        delete t.domain,
                        delete t.url,
                        t.data && t.data.domain && delete t.data.domain,
                        i.ajax({
                            url: a + l,
                            data: t.data,
                            dataType: "jsonp",
                            type: "get",
                            jsonpCallback: "tracks",
                            complete: function () {
                                e && e()
                            },
                            success: function (t) {
                                o && o(t)
                            },
                            error: function (t) {
                                s && s(t)
                            }
                        })
                    }
                };
                o.initLog(),
                e.exposure = o
            }(window, $, window.DB || (window.DB = {}))
        }, {}
    ],
    19: [
        function (t, i, e) {
            var o = "function" == typeof Symbol && "symbol" === _typeof2(Symbol.iterator)
                ? function (t) {
                    return "undefined" == typeof t
                        ? "undefined"
                        : _typeof2(t)
                }
                : function (t) {
                    return t && "function" == typeof Symbol && t.constructor === Symbol && t !== Symbol.prototype
                        ? "symbol"
                        : "undefined" == typeof t
                            ? "undefined"
                            : _typeof2(t)
                };
            !function () {
                function t(t) {
                    return t
                        .replace(S, "")
                        .replace(T, ",")
                        .replace(k, "")
                        .replace(_, "")
                        .replace(E, "")
                        .split(/^$|,+/)
                }
                function s(t) {
                    return "'" + t
                        .replace(/('|\\)/g, "\\$1")
                        .replace(/\r/g, "\\r")
                        .replace(/\n/g, "\\n") + "'"
                }
                function n(i, e) {
                    function o(t) {
                        return p += t
                            .split(/\n/)
                            .length - 1,
                        h && (t = t.replace(/\s+/g, " ").replace(/<!--.*?-->/g, "")),
                        t && (t = m[1] + s(t) + m[2] + "\n"),
                        t
                    }
                    function n(i) {
                        var o = p;
                        if (c
                            ? i = c(i, e)
                            : r && (i = i.replace(/\n/g, function () {
                                return p++,
                                "$line=" + p + ";"
                            })), 0 === i.indexOf("=")) {
                            var s = d && !/^=[=#]/.test(i);
                            if (i = i.replace(/^=[=#]?|[\s;]*$/g, ""), s) {
                                var n = i.replace(/\s*\([^\)]+\)/, "");
                                v[n] || /^(include|print)$/.test(n) || (i = "$escape(" + i + ")")
                            } else 
                                i = "$string(" + i + ")";
                            i = m[1] + i + m[2]
                        }
                        return r && (i = "$line=" + o + ";" + i),
                        w(t(i), function (t) {
                            if (t && !u[t]) {
                                var i;
                                i = "print" === t
                                    ? b
                                    : "include" === t
                                        ? x
                                        : v[t]
                                            ? "$utils." + t
                                            : g[t]
                                                ? "$helpers." + t
                                                : "$data." + t,
                                S += t + "=" + i + ",",
                                u[t] = !0
                            }
                        }),
                        i + "\n"
                    }
                    var r = e.debug,
                        a = e.openTag,
                        l = e.closeTag,
                        c = e.parser,
                        h = e.compress,
                        d = e.escape,
                        p = 1,
                        u = {
                            $data: 1,
                            $filename: 1,
                            $utils: 1,
                            $helpers: 1,
                            $out: 1,
                            $line: 1
                        },
                        f = "".trim,
                        m = f
                            ? ["$out='';", "$out+=", ";", "$out"]
                            : [
                                "$out=[];", "$out.push(", ");", "$out.join('')"
                            ],
                        y = f
                            ? "$out+=text;return $out;"
                            : "$out.push(text);",
                        b = "function(){var text=''.concat.apply('',arguments);" + y + "}",
                        x = "function(filename,data){data=data||$data;var text=$utils.$include(filename,data," +
                                "$filename);" + y + "}",
                        S = "'use strict';var $utils=this,$helpers=$utils.$helpers," + (r
                            ? "$line=0,"
                            : ""),
                        T = m[0],
                        k = "return new String(" + m[3] + ");";
                    w(i.split(a), function (t) {
                        t = t.split(l);
                        var i = t[0],
                            e = t[1];
                        1 === t.length
                            ? T += o(i)
                            : (T += n(i), e && (T += o(e)))
                    });
                    var _ = S + T + k;
                    r && (_ = "try{" + _ + "}catch(e){throw {filename:$filename,name:'Render Error',message:e.message,line:$" +
                            "line,source:" + s(i) + ".split(/\\n/)[$line-1].replace(/^\\s+/,'')};}");
                    try {
                        var E = new Function("$data", "$filename", _);
                        return E.prototype = v,
                        E
                    } catch (P) {
                        throw P.temp = "function anonymous($data,$filename) {" + _ + "}",
                        P
                    }
                }
                var r = function (t, i) {
                    return "string" == typeof i
                        ? b(i, {filename: t})
                        : c(t, i)
                };
                r.version = "3.0.0",
                r.config = function (t, i) {
                    a[t] = i
                };
                var a = r.defaults = {
                        openTag: "<%",
                        closeTag: "%>",
                        escape: !0,
                        cache: !0,
                        compress: !1,
                        parser: null
                    },
                    l = r.cache = {};
                r.render = function (t, i) {
                    return b(t, i)
                };
                var c = r.renderFile = function (t, i) {
                    var e = r.get(t) || y({filename: t, name: "Render Error", message: "Template not found"});
                    return i
                        ? e(i)
                        : e
                };
                r.get = function (t) {
                    var i;
                    if (l[t]) 
                        i = l[t];
                    else if ("object" == ("undefined" == typeof document
                        ? "undefined"
                        : o(document))) {
                        var e = document.getElementById(t);
                        if (e) {
                            var s = (e.value || e.innerHTML).replace(/^\s*|\s*$/g, "");
                            i = b(s, {filename: t})
                        }
                    }
                    return i
                };
                var h = function z(t, i) {
                        return "string" != typeof t && (i = "undefined" == typeof t
                            ? "undefined"
                            : o(t), "number" === i
                            ? t += ""
                            : t = "function" === i
                                ? z(t.call(t))
                                : ""),
                        t
                    },
                    d = {
                        "<": "&#60;",
                        ">": "&#62;",
                        '"': "&#34;",
                        "'": "&#39;",
                        "&": "&#38;"
                    },
                    p = function (t) {
                        return d[t]
                    },
                    u = function (t) {
                        return h(t).replace(/&(?![\w#]+;)|[<>"']/g, p)
                    },
                    f = Array.isArray || function (t) {
                        return "[object Array]" === {}.toString.call(t)
                    },
                    m = function (t, i) {
                        var e,
                            o;
                        if (f(t)) 
                            for (e = 0, o = t.length; o > e; e++) 
                                i.call(t, t[e], e, t);
                    else 
                            for (e in t) 
                                i.call(t, t[e], e)
                    },
                    v = r.utils = {
                        $helpers: {},
                        $include: c,
                        $string: h,
                        $escape: u,
                        $each: m
                    };
                r.helper = function (t, i) {
                    g[t] = i
                };
                var g = r.helpers = v.$helpers;
                r.onerror = function (t) {
                    var i = "Template Error\n\n";
                    for (var e in t) 
                        i += "<" + e + ">\n" + t[e] + "\n\n";
                    
                    "object" == ("undefined" == typeof console
                        ? "undefined"
                        : o(console)) && console.error(i)
                };
                var y = function (t) {
                        return r.onerror(t),
                        function () {
                            return "{Template Error}"
                        }
                    },
                    b = r.compile = function (t, i) {
                        function e(e) {
                            try {
                                return new r(e, s) + ""
                            } catch (o) {
                                return i.debug
                                    ? y(o)()
                                    : (i.debug = !0, b(t, i)(e))
                            }
                        }
                        i = i || {};
                        for (var o in a) 
                            void 0 === i[o] && (i[o] = a[o]);
                        var s = i.filename;
                        try {
                            var r = n(t, i)
                        } catch (c) {
                            return c.filename = s || "anonymous",
                            c.name = "Syntax Error",
                            y(c)
                        }
                        return e.prototype = r.prototype,
                        e.toString = function () {
                            return r.toString()
                        },
                        s && i.cache && (l[s] = e),
                        e
                    },
                    w = v.$each,
                    x = "break,case,catch,continue,debugger,default,delete,do,else,false,finally,for,func" +
                            "tion,if,in,instanceof,new,null,return,switch,this,throw,true,try,typeof,var,void" +
                            ",while,with,abstract,boolean,byte,char,class,const,double,enum,export,extends,fi" +
                            "nal,float,goto,implements,import,int,interface,long,native,package,private,prote" +
                            "cted,public,short,static,super,synchronized,throws,transient,volatile,arguments," +
                            "let,yield,undefined",
                    S = /\/\*[\w\W]*?\*\/|\/\/[^\n]*\n|\/\/[^\n]*$|"(?:[^"\\]|\\[\w\W])*"|'(?:[^'\\]|\\[\w\W])*'|\s*\.\s*[$\w\.]+/g,
                    T = /[^\w$]+/g,
                    k = new RegExp(["\\b" + x.replace(/,/g, "\\b|\\b") + "\\b"].join("|"), "g"),
                    _ = /^\d[^,]*|,\d[^,]*/g,
                    E = /^,+|,+$/g;
                a.openTag = "{{",
                a.closeTag = "}}";
                var P = function (t, i) {
                    var e = i.split(":"),
                        o = e.shift(),
                        s = e.join(":") || "";
                    return s && (s = ", " + s),
                    "$helpers." + o + "(" + t + s + ")"
                };
                a.parser = function (t, i) {
                    t = t.replace(/^\s/, "");
                    var e = t.split(" "),
                        o = e.shift(),
                        s = e.join(" ");
                    switch (o) {
                        case "if":
                            t = "if(" + s + "){";
                            break;
                        case "else":
                            e = "if" === e.shift()
                                ? " if(" + e.join(" ") + ")"
                                : "",
                            t = "}else" + e + "{";
                            break;
                        case "/if":
                            t = "}";
                            break;
                        case "each":
                            var n = e[0] || "$data",
                                a = e[1] || "as",
                                l = e[2] || "$value",
                                c = e[3] || "$index",
                                h = l + "," + c;
                            "as" !== a && (n = "[]"),
                            t = "$each(" + n + ",function(" + h + "){";
                            break;
                        case "/each":
                            t = "});";
                            break;
                        case "echo":
                            t = "print(" + s + ");";
                            break;
                        case "print":
                        case "include":
                            t = o + "(" + e.join(",") + ");";
                            break;
                        default:
                            if (-1 !== s.indexOf("|")) {
                                var d = i.escape;
                                0 === t.indexOf("#") && (t = t.substr(1), d = !1);
                                for (var p = 0, u = t.split("|"), f = u.length, m = d
                                    ? "$escape"
                                    : "$string", v = m + "(" + u[p++] + ")"; f > p; p++) 
                                    v = P(v, u[p]);
                                t = "=#" + v
                            } else 
                                t = r.helpers[o]
                                    ? "=#" + o + "(" + e.join(",") + ");"
                                    : "=" + t
                            }
                    return t
                },
                "function" == typeof define
                    ? define(function () {
                        return r
                    })
                    : "undefined" != typeof e
                        ? i.exports = r
                        : this.template = r
            }()
        }, {}
    ]
}, {}, [11]);