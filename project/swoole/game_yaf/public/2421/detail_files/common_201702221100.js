!function o(n, i, e) {
    function t(d, r) {
        if (!i[d]) {
            if (!n[d]) {
                var s = "function" == typeof require && require;
                if (!r && s) return s(d, !0);
                if (a) return a(d, !0);
                var c = new Error("Cannot find module '" + d + "'");
                throw c.code = "MODULE_NOT_FOUND", c
            }
            var p = i[d] = {exports: {}};
            n[d][0].call(p.exports, function (o) {
                var i = n[d][1][o];
                return t(i ? i : o)
            }, p, p.exports, o, n, i, e)
        }
        return i[d].exports
    }

    for (var a = "function" == typeof require && require, d = 0; d < e.length; d++) t(e[d]);
    return t
}({
    1: [function (o, n, i) {
        o("../../unit/common/js/downloadApp"), o("../../unit/common/js/statistics"), o("../../unit/common/js/showObjectPrize")
    }, {
        "../../unit/common/js/downloadApp": 2,
        "../../unit/common/js/showObjectPrize": 3,
        "../../unit/common/js/statistics": 4
    }], 2: [function (o, n, i) {
        !function (o) {
            var n = navigator.userAgent.toLowerCase(), i = function () {
                window.downloadAppConfig ? n.match(/iphone/gi) || n.match(/ipad/gi) ? t() : window.downloadAppConfig.confirm || "true" == window.downloadAppConfig.confirm ? o.modal({
                    type: "confirm",
                    title: "下载确认",
                    section: "即将开始下载，是否继续",
                    callback: {
                        save: function () {
                            window.downloadAppConfig.stats ? o.ajax({
                                url: window.downloadAppConfig.stats,
                                complete: function () {
                                    t()
                                }
                            }) : t()
                        }
                    }
                }) : t() : console.error("请先配置参数window.downloadAppConfig")
            }, e = function (o) {
                if (o.indexOf("dbnewopen") != -1) window.location.href = o; else if (o.indexOf("?") !== -1) if (o.indexOf("#") !== -1) {
                    if (o.indexOf("#/") !== -1) return void(window.location.href = o + "&dbnewopen");
                    window.location.href = o.split("#")[0] + "&dbnewopen#" + o.split("#")[1]
                } else {
                    if (window.ucAppId) return void(window.location.href = o + "&nowake=1&dbnewopen");
                    window.location.href = o + "&dbnewopen"
                } else "" !== o && (window.location.href = o + "?dbnewopen")
            }, t = function () {
                var o, i = window.downloadAppConfig.openUrl || "", t = "", a = !1;
                void 0 !== window.TBSDK_ADA && (o = function (o) {
                    var n = function () {
                        a = !0, window.isSpecialApp ? window.location.href = o : window.BC_SDK.openPage({url: o})
                    };
                    o.indexOf("taoquan.taobao.com") === -1 && o.indexOf("shop.m.taobao.com") === -1 || (window.BC_SDK = TBSDK_ADA.init({
                        appkey: "23402401",
                        openTBAPP: !0
                    }), n()), o.indexOf("s.click.taobao.com") !== -1 && (window.BC_SDK = TBSDK_ADA.init({
                        appkey: "23454468",
                        appSecret: "3846ae97316a0b31321a8f493f826986",
                        openTBAPP: !0
                    }), n())
                });
                var d = function (n) {
                    return n && n.indexOf("weixin://") !== -1 ? (a = !0, void(window.location.href = n)) : void(i && i.indexOf("weixin://") !== -1 || void 0 !== window.TBSDK_ADA && o(n))
                };
                if (n.match(/iphone/gi) || n.match(/ipad/gi)) {
                    if (t = window.downloadAppConfig.iosDownloadUrl, d(t), a) return;
                    if (n.match(/MicroMessenger/gi)) e(t); else if (i) window.location.href = i; else if (t.indexOf("itunes.apple.com") != -1) {
                        var r = document.createElement("iframe");
                        r.src = t, r.style.display = "none", window.setTimeout(function () {
                            document.body.appendChild(r)
                        }, 300)
                    } else e(t)
                } else {
                    if (t = window.downloadAppConfig.androidDownloadUrl, d(t), a) return;
                    if (i) return void(window.location.href = i);
                    t.indexOf(".apk") != -1 || t.indexOf("dbnewopen") != -1 ? window.location.href = t : e(t)
                }
            };
            window.downloadApp = i
        }(Zepto)
    }, {}], 3: [function (o, n, i) {
        !function (o) {
            var n = function (n) {
                var i = {
                    title: "恭喜您，中奖啦",
                    desc: "也可到首页“兑换记录”领奖，24小时内有效",
                    name: "",
                    type: "object",
                    img: "",
                    leftBtnText: "继续抽奖",
                    btnText: "查看奖品",
                    onsubmit: function () {
                    },
                    onclose: function () {
                    }
                };
                n.type && ("virtual" === n.type ? i.btnText = "查看奖品" : i.btnText = "立即领奖"), n = o.extend({}, i, n);
                var e = "";
                e += '<div class="prize-dialog-modal"><div class="prize-dialog-wrapper animated zoomIn"><span class="shine"></span>', e += '<div class="prize-dialog-content"><span class="trophy"></span>';
                for (var t = 3; t <= 11; t++) e += '<span class="color-point point' + t + '"></span>';
                e += '<span class="btn-close"></span>', e += "<h3>" + n.title + '</h3><p class="prize-name">' + n.name + '</p><img src="' + n.img + '" />', e += '<p class="prize-desc">' + n.desc + "</p>", e += '<div class="btns">', e += '<a href="javascript:;" class="btn btn-left btn-orange btn-cancle">' + n.leftBtnText + "</a>", e += '<a href="javascript:;" class="btn btn-right btn-red btn-submit">' + n.btnText + "</a>", e += "</div></div></div></div>", o("body").append(e), o(".prize-dialog-wrapper").find(".btn-submit").on("click", n.onsubmit), o(".prize-dialog-wrapper").find(".btn-close,.btn-cancle").on("click", function () {
                    o(".prize-dialog-modal").remove(), n.onclose && n.onclose()
                })
            };
            window.showObjectPrize = n
        }(Zepto)
    }, {}], 4: [function (o, n, i) {
        !function (o, n, i) {
            var e = {
                initLog: function () {
                    var o = this;
                    o.showLog(), o.srollLog()
                }, showLog: function (i, e) {
                    var t = this, a = n(o).height();
                    n("body").find("[db-exposure]").not("[db-exposure-get]").each(function () {
                        var d = n(this), r = d.attr("db-exposure"), s = d.attr("db-disabled-server");
                        if (!d.offset() || 0 !== d.offset().width) {
                            var c = !1, p = !1;
                            if (d.offset() && (c = n(o).scrollTop() >= d.offset().top - a + (e || 0), p = n(o).scrollTop() <= d.offset().top + (e || 50)), c && p && (d.attr("db-exposure-get", !0), void 0 !== r && "undefined" !== r && "" !== n.trim(r))) {
                                try {
                                    r = JSON.parse(r)
                                } catch (l) {
                                    console.log("数据曝光失败:" + (l || ""))
                                }
                                s || t.sendApi({domain: r.domain, url: "/exposure/standard", data: r}, function () {
                                    i && i(), console.log("完成埋点服务器曝光"), d.attr("db-exposure-get", !0)
                                }), t.sendApi({domain: r.domain4Web, url: r.url, data: r}, function () {
                                    i && i(), console.log("完成活动web曝光"), d.attr("db-exposure-get", !0)
                                })
                            }
                        }
                    })
                }, srollLog: function (i) {
                    var e = this;
                    setTimeout(function () {
                        n(o).scroll(function () {
                            e.showLog()
                        })
                    }, 200)
                }, sendApi: function (o, i, e, t) {
                    try {
                        var a = JSON.stringify(o);
                        if (a.indexOf("iframe") !== -1) return
                    } catch (d) {
                        console.log("数据异常:" + (d || ""))
                    }
                    var r = o.domain || "", s = o.url;
                    delete o.domain, delete o.url, o.data && o.data.domain && delete o.data.domain, n.ajax({
                        url: r + s,
                        data: o.data,
                        dataType: "jsonp",
                        type: "get",
                        jsonpCallback: "tracks",
                        complete: function () {
                            i && i()
                        },
                        success: function (o) {
                            e && e(o)
                        },
                        error: function (o) {
                            t && t(o)
                        }
                    })
                }
            };
            e.initLog(), i.exposure = e
        }(window, $, window.DB || (window.DB = {}))
    }, {}]
}, {}, [1]);