var _typeof2 = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator
    ? function (t) {
        return typeof t
    }
    : function (t) {
        return t && "function" == typeof Symbol && t.constructor === Symbol && t !== Symbol.prototype
            ? "symbol"
            : typeof t
    };
!function t(e, n, i) {
    function o(a, s) {
        if (!n[a]) {
            if (!e[a]) {
                var c = "function" == typeof require && require;
                if (!s && c) 
                    return c(a, !0);
                if (r) 
                    return r(a, !0);
                var u = new Error("Cannot find module '" + a + "'");
                throw u.code = "MODULE_NOT_FOUND",
                u
            }
            var l = n[a] = {
                exports: {}
            };
            e[a][0].call(l.exports, function (t) {
                var n = e[a][1][t];
                return o(n
                    ? n
                    : t)
            }, l, l.exports, t, e, n, i)
        }
        return n[a].exports
    }
    for (var r = "function" == typeof require && require, a = 0; a < i.length; a++) 
        o(i[a]);
    return o
}({
    1: [
        function (t, e, n) {
            (function (t) {
                !function (t) {
                    function e(t) {
                        return "[object Array]" === Object
                            .prototype
                            .toString
                            .call(t)
                    }
                    function i() {
                        for (var t = 0; t < k.length; t++) 
                            k[t][0](k[t][1]);
                        k = [],
                        g = !1
                    }
                    function o(t, e) {
                        k.push([t, e]),
                        g || (g = !0, x(i, 0))
                    }
                    function r(t, e) {
                        function n(t) {
                            c(e, t)
                        }
                        function i(t) {
                            l(e, t)
                        }
                        try {
                            t(n, i)
                        } catch (o) {
                            i(o)
                        }
                    }
                    function a(t) {
                        var e = t.owner,
                            n = e.state_,
                            i = e.data_,
                            o = t[n],
                            r = t.then;
                        if ("function" == typeof o) {
                            n = b;
                            try {
                                i = o(i)
                            } catch (a) {
                                l(r, a)
                            }
                        }
                        s(r, i) || (n === b && c(r, i), n === C && l(r, i))
                    }
                    function s(t, e) {
                        var n;
                        try {
                            if (t === e) 
                                throw new TypeError("A promises callback cannot return that same promise.");
                            if (e && ("function" == typeof e || "object" === ("undefined" == typeof e
                                ? "undefined"
                                : _typeof2(e)))) {
                                var i = e.then;
                                if ("function" == typeof i) 
                                    return i.call(e, function (i) {
                                        n || (n = !0, e !== i
                                            ? c(t, i)
                                            : u(t, i))
                                    }, function (e) {
                                        n || (n = !0, l(t, e))
                                    }),
                                    !0
                            }
                        } catch (o) {
                            return n || l(t, o),
                            !0
                        }
                        return !1
                    }
                    function c(t, e) {
                        t !== e && s(t, e) || u(t, e)
                    }
                    function u(t, e) {
                        t.state_ === y && (t.state_ = w, t.data_ = e, o(d, t))
                    }
                    function l(t, e) {
                        t.state_ === y && (t.state_ = w, t.data_ = e, o(h, t))
                    }
                    function f(t) {
                        var e = t.then_;
                        t.then_ = void 0;
                        for (var n = 0; n < e.length; n++) 
                            a(e[n])
                    }
                    function d(t) {
                        t.state_ = b,
                        f(t)
                    }
                    function h(t) {
                        t.state_ = C,
                        f(t)
                    }
                    function p(t) {
                        if ("function" != typeof t) 
                            throw new TypeError("Promise constructor takes a function argument");
                        if (this instanceof p == !1) 
                            throw new TypeError("Failed to construct 'Promise': Please use the 'new' operator, this object constr" +
                                    "uctor cannot be called as a function.");
                        this.then_ = [],
                        r(t, this)
                    }
                    var m = t.Promise,
                        v = m && "resolve" in m && "reject" in m && "all" in m && "race" in m && function () {
                            var t;
                            return new m(function (e) {
                                t = e
                            }),
                            "function" == typeof t
                        }();
                    "undefined" != typeof n && n
                        ? (n.Promise = v
                            ? m
                            : p, n.Polyfill = p)
                        : "function" == typeof define && define.amd
                            ? define(function () {
                                return v
                                    ? m
                                    : p
                            })
                            : v || (t.Promise = p);
                    var g,
                        y = "pending",
                        w = "sealed",
                        b = "fulfilled",
                        C = "rejected",
                        E = function () {},
                        x = "undefined" != typeof setImmediate
                            ? setImmediate
                            : setTimeout,
                        k = [];
                    p.prototype = {
                        constructor: p,
                        state_: y,
                        then_: null,
                        data_: void 0,
                        then: function (t, e) {
                            var n = {
                                owner: this,
                                then: new this.constructor(E),
                                fulfilled: t,
                                rejected: e
                            };
                            return this.state_ === b || this.state_ === C
                                ? o(a, n)
                                : this
                                    .then_
                                    .push(n),
                            n.then
                        },
                        "catch": function (t) {
                            return this.then(null, t)
                        }
                    },
                    p.all = function (t) {
                        var n = this;
                        if (!e(t)) 
                            throw new TypeError("You must pass an array to Promise.all().");
                        return new n(function (e, n) {
                            function i(t) {
                                return a++,
                                function (n) {
                                    r[t] = n,
                                    --a || e(r)
                                }
                            }
                            for (var o, r = [], a = 0, s = 0; s < t.length; s++) 
                                o = t[s],
                                o && "function" == typeof o.then
                                    ? o.then(i(s), n)
                                    : r[s] = o;
                            a || e(r)
                        })
                    },
                    p.race = function (t) {
                        var n = this;
                        if (!e(t)) 
                            throw new TypeError("You must pass an array to Promise.race().");
                        return new n(function (e, n) {
                            for (var i, o = 0; o < t.length; o++) 
                                i = t[o],
                                i && "function" == typeof i.then
                                    ? i.then(e, n)
                                    : e(i)
                            })
                    },
                    p.resolve = function (t) {
                        var e = this;
                        return t && "object" === ("undefined" == typeof t
                            ? "undefined"
                            : _typeof2(t)) && t.constructor === e
                            ? t
                            : new e(function (e) {
                                e(t)
                            })
                    },
                    p.reject = function (t) {
                        var e = this;
                        return new e(function (e, n) {
                            n(t)
                        })
                    }
                }("undefined" != typeof window
                    ? window
                    : "undefined" != typeof t
                        ? t
                        : "undefined" != typeof self
                            ? self
                            : this)
            }).call(this, "undefined" != typeof global
                ? global
                : "undefined" != typeof self
                    ? self
                    : "undefined" != typeof window
                        ? window
                        : {})
        }, {}
    ],
    2: [
        function (t, e, n) {
            t("../../../../unit/lib/lib-zepto/1.0.0/zepto.min"),
            t("../../../../unit/lib/lib-loader"),
            t("../../../../unit/common/js/checkoutWebp"),
            t("../../../../unit/common/js/showModal"),
            t("../components/requireStyle/requireStyle-2"),
            t("./public"),
            t("../../pluginBase/responsive/index.js"),
            t("../../pluginBase/timing/index.js"),
            t("../components/requirePlugin"),
            window.Promise = t("es6-promise-polyfill").Promise,
            window.FastClick = t("../../../../unit/lib/lib-fastclick/1.0.0/fastclick")
        }, {
            "../../../../unit/common/js/checkoutWebp": 12,
            "../../../../unit/common/js/showModal": 13,
            "../../../../unit/lib/lib-fastclick/1.0.0/fastclick": 14,
            "../../../../unit/lib/lib-loader": 15,
            "../../../../unit/lib/lib-zepto/1.0.0/zepto.min": 16,
            "../../pluginBase/responsive/index.js": 9,
            "../../pluginBase/timing/index.js": 11,
            "../components/requirePlugin": 4,
            "../components/requireStyle/requireStyle-2": 5,
            "./public": 3,
            "es6-promise-polyfill": 1
        }
    ],
    3: [
        function (t, e, n) {
            !function (t) {
                var e = {
                    Ajax: function (e) {
                        var n = {
                            url: "",
                            type: "post",
                            dataType: "json",
                            data: {},
                            success: function () {},
                            error: function () {}
                        };
                        return e = t.extend(!0, n, e),
                        t.ajax(e)
                    },
                    getActivityStyle: function (t) {
                        var e = this;
                        return window.dbStyleConfigStart =+ new Date,
                        new Promise(function (n, i) {
                            var o = {
                                url: "/ts/activity/getSkinConfig",
                                data: {
                                    activityId: CFG.activityId,
                                    templateType: CFG.activityType,
                                    timestamp :+ new Date,
                                    id: this_id, 
                                    awid: this_awid,
                                    random: this_random
                                }
                            };
                            o.success = function (o) {
                                o.success
                                    ? (n(), window.dbStyleConfigEnd =+ new Date, t.styleCb && t.styleCb(o))
                                    : (i(), e.showModal("systemError", {message: o.desc}))
                            },
                            o.error = function (t) {
                                i(),
                                e.showModal("systemError", {message: t.desc})
                            },
                            e.Ajax(o)
                        })
                    },
                    getActivityOptions: function (t) {
                        var e = this;
                        return new Promise(function (n, i) {
                            var o = {
                                url: "/ts/activity/ajaxOptions",
                                data: {
                                    activityId: CFG.activityId,
                                    slotId: CFG.slotId,
                                    timestamp :+ new Date,
                                    id:this_id,
                                    awid: this_awid,
                                    random: this_random
                                }
                            };
                            o.success = function (o) {
                                o.success
                                    ? (n(), o.data && o.data.embedData && (window.embedData = o.data.embedData), window.isOpenPrizeInfo = o.data.isOpenPrizeInfo, t.optionCb && t.optionCb(o))
                                    : (i(), e.showModal("systemError", {message: o.desc}))
                            },
                            o.error = function (t) {
                                i(),
                                e.showModal("systemError", {message: t.desc})
                            },
                            e.Ajax(o)
                        })
                    },
                    getActivityOrder: function (e) {
                        var n = this;
                        getActivityToken(function (i) {
                            var o = {
                                url: "/ts/activity/doJoin",
                                data: {
                                    activityType: CFG.activityType,
                                    activityId: CFG.activityId,
                                    slotId: CFG.slotId,
                                    timestamp :+ new Date,
                                    connection_type: n.getNetwork(),
                                    id: this_id,
                                    awid: this_awid,
                                    random: this_random
                                }
                            };
                            e = t.extend(!0, {}, o, e, i),
                            e.data.skinType = CFG.skinName,
                            window.xhr = n.Ajax(e)
                        }, n.showModal.bind(n))
                    },
                    getActivityLottery: function (e) {
                        var n = this,
                            i = {
                                url: "/ts/activity/result",
                                data: {
                                    showVersion: CFG.isShowNew || !1,
                                    skinId: CFG.couponSkinId,
                                    timestamp :+ new Date,
                                    id: this_id,
                                    awid: this_awid,
                                    random: this_random
                                }
                            };
                        e = t.extend(!0, {}, i, e),
                        e.data.skinType = CFG.skinName,
                        window.xhr = n.Ajax(e)
                    },
                    getActivityStatusText: function (t) {
                        var e = "";
                        return t && (e = t.limitTimes
                            ? 0 === t.limitType
                                ? "免费次数： " + t.limitTimes + "次"
                                : "今日免费： " + t.limitTimes + "次"
                            : "抽奖机会已用完"),
                        e
                    },
                    getActivityErrorCode: function (t) {
                        switch (t) {
                            case "0000000":
                                return "success";
                            case "0100001":
                                return "over";
                            case "9999999":
                                return "networkError";
                            case "0200004":
                                return "preview";
                            default:
                                return "failed"
                        }
                    },
                    createErrorObject: function (t, e) {
                        var n = "",
                            i = "",
                            o = "",
                            r = "";
                        switch (e
                            ? e
                            : e = {}, t) {
                            case "systemError":
                                n = e.title
                                    ? e.title
                                    : "抽奖失败",
                                i = e.message,
                                o = "再抽一次";
                                break;
                            case "networkError":
                                n = "噢哦，网络解析错误！",
                                i = "再试一遍吧~",
                                o = "再试一遍";
                                break;
                            case "gameClose":
                                n = "活动结束",
                                i = "该活动已经结束啦~",
                                o = "知道了";
                                break;
                            case "over":
                                n = "抽奖次数已全部用完",
                                i = "已经没有次数啦~",
                                o = "知道了";
                                break;
                            case "todayOver":
                                n = "今天抽奖次数已用完",
                                i = "明天再来哦~",
                                o = "知道了";
                                break;
                            case "noPrize":
                                n = "哎呀，就差那么一点点~",
                                i = "别灰心，再来一次！",
                                o = "再抽一次";
                                break;
                            case "again":
                                n = "恭喜您，中奖了",
                                i = "获得免费再抽一次",
                                o = "再抽一次";
                                break;
                            case "preview":
                                n = "预览用户无法参与活动",
                                i = "换正常用户来吧~",
                                o = "知道了"
                        }
                        return {type: t, title: n, tip: i, btnText: o, link: r}
                    },
                    performance: function (e) {
                        if (window.performance) {
                            var n = window.performance.timing,
                                i = e || 0,
                                o = this;
                            if (window.allEnd =+ new Date, n.loadEventEnd) {
                                if (!window.dbStyleConfigEnd || !window.dbStyleConfigStart || !window.allEnd) 
                                    return;
                                var r = n.domComplete - n.domInteractive,
                                    a = n.domContentLoadedEventEnd - n.navigationStart,
                                    s = n.loadEventEnd - n.navigationStart,
                                    c = window.dbStyleConfigEnd
                                        ? window.dbStyleConfigEnd - n.navigationStart
                                        : "",
                                    u = window.dbStyleConfigEnd - window.dbStyleConfigStart,
                                    l = window.allEnd - n.navigationStart,
                                    f = "/ts/activity/activityPagePerf?skinName=" + CFG.skinName + "&activityType=" + CFG.activityType + "&activityId=" + CFG.activityId + "&domComplete=" + r + "&domLoaded=" + a + "&onload=" + s + "&white=" + c + "&dbStyle=" + u + "&all=" + l + "&netWork=" + o.getNetwork(),
                                    d =+ new Date,
                                    h = {
                                        url: f,
                                        type: "post",
                                        data: {
                                            id: this_id,
                                            awid: this_awid,
                                            random: this_random
                                        },
                                        dataType: "json",
                                        success: function () {},
                                        error: function () {}
                                    };
                                h.data.timestamp = d,
                                window.xhr = t.ajax(h)
                            } else 
                                i < 10 && setTimeout(function () {
                                    i++,
                                    o.performance(i)
                                }, 1e3)
                        }
                    },
                    setModalInterval: function (t) {
                        window.intervalTime || (window.intervalTime = setInterval(function () {
                            window[t] && (window[t](), clearInterval(window.intervalTime), window.intervalTime = null)
                        }, 100))
                    },
                    showPlugin: function () {
                        var t = arguments.length > 0 && void 0 !== arguments[0] && arguments[0];
                        window.TimingPlugin({
                            show: function () {
                                window.buoy && window
                                    .buoy
                                    .show(t)
                            },
                            reset: function () {
                                window.buoy && window
                                    .buoy
                                    .hide()
                            },
                            initOtherPlugin: function () {
                                window.ResponsivePlugin({
                                    show: function () {
                                        window.buoy && window
                                            .buoy
                                            .show(t)
                                    },
                                    reset: function () {
                                        window.buoy && window
                                            .buoy
                                            .hide()
                                    }
                                })
                            }
                        })
                    },
                    getNetwork: function () {
                        var t = null,
                            e = window.navigator.userAgent,
                            n = navigator.connection || navigator.mozConnection || navigator.webkitConnection;
                        if (/MicroMessenger/.test(e)) 
                            if (/NetType/.test(e)) {
                                var i = e.match(/NetType\/(\S*)/);
                                t = i[1]
                            } else 
                                document
                                    .addEventListener("WeixinJSBridgeReady", function () {
                                        WeixinJSBridge
                                            .invoke("getNetworkType", {}, function (e) {
                                                t = e.err_msg
                                            })
                                    });
                        else if (n) {
                            var o = n.type;
                            t = o
                        }
                        var r = [
                            "bluetooth",
                            "cellular",
                            "ethernet",
                            "mixed",
                            "none",
                            "other",
                            "unknown",
                            "wifi",
                            "wimax"
                        ];
                        return isNaN(t) || (t = r[parseInt(t)]),
                        t
                    },
                    initPage: function () {
                        this.hasNoTimes
                            ? this.showModal("over")
                            : !CFG.isPriority && this.showPlugin(this.isShowBuoy)
                    },
                    transformWebp: function (t) {
                        return "function" == typeof "".ossimg && (t = t.ossimg()),
                        t
                    },
                    loadFiles: function (t) {
                        var e = this,
                            n = t.styleCb,
                            i = t.optionCb,
                            o = t.loadCb;
                        Promise.all([
                            this.getActivityStyle({styleCb: n}),
                                this.getActivityOptions({optionCb: i})
                            ])
                            .then(function () {
                                window.DB && window.DB.exposure && window
                                    .DB
                                    .exposure
                                    .initLog(),
                                e.performance(),
                                Loader.async([
                                    common_js, common_css
                                ], function () {
                                    FastClick(document.body),
                                    o && o(),
                                    e.initPage()
                                })
                            })
                    }
                };
                window.Public = e
            }(Zepto)
        }, {}
    ],
    4: [
        function (t, e, n) {
            !function () {
                $(function () {
                    CFG.isPriority && Public.showPlugin()
                })
            }(Zepto)
        }, {}
    ],
    5: [
        function (t, e, n) {
            !function (t) {
                var e,
                    n,
                    i = {
                        init: function (o, r) {
                            o && (e = o.data.skinConfig, "string" == typeof e && (e = t.parseJSON(e))),
                            n || (n = {}, e.forEach(function (t) {
                                t
                                    .childrens
                                    .forEach(function (t) {
                                        t.value && (n[t.name] = t.value)
                                    })
                            }), i.hideRuleModalInfo(o)),
                            r && i.getConfig(r)
                        },
                        getStyle: function (t) {
                            return n[t]
                        },
                        getConfig: function (e) {
                            this._style = "";
                            for (var n in e) 
                                i.setConfig(e[n][0], e[n][1], e[n][2]);
                            t("head").append("<style>" + this._style + "</style>")
                        },
                        setConfig: function (e, n, o) {
                            var r = this,
                                a = i.getStyle(o);
                            if (a) 
                                switch (n) {
                                    case "backgroundImage":
                                        "function" == typeof "".ossimg && (a = a.ossimg()),
                                        r._style += e + "{background-image:url(" + a + ") !important;}";
                                        break;
                                    case "backgroundColor":
                                        r._style += e + "{background-color:" + a + " !important;}";
                                        break;
                                    case "color":
                                        r._style += e + "{color:" + a + " !important;}";
                                        break;
                                    case "borderColor":
                                        r._style += e + "{border-color:" + a + " !important;}";
                                        break;
                                    case "html":
                                        t(e).html(a);
                                        break;
                                    case "image":
                                        "function" == typeof "".ossimg && (a = a.ossimg()),
                                        t(e).attr("src", a)
                                }
                            },
                        hideRuleModalInfo: function (t) {
                            var e = n.ruleText;
                            e.lastIndexOf("－－") > -1 && (e = e.substring(0, e.lastIndexOf("－－") + 2)),
                            t.data.contaction && (e += "</br>" + t.data.contaction),
                            n.ruleText = e
                        }
                    };
                window.requireStyle = i
            }(Zepto)
        }, {}
    ],
    6: [
        function (t, e, n) {
            var i = t("./util"),
                o = {
                    initJoinParams: function (t) {
                        var e = t.slotId,
                            n = t.embedData,
                            i = t.type,
                            o = t.id,
                            r = t.skinId,
                            a = t.closeClickEmbedData,
                            s = t.moreClickEmbedData,
                            c = t.moreEmbedData;
                        window.Plugin_Act_CFG = {
                            slotId: e,
                            embedData: n,
                            activityType: i,
                            activityId: o,
                            closeClickEmbedData: a,
                            skinId: r,
                            moreClickEmbedData: s,
                            moreEmbedData: c,
                            getOrder: "/ts/activity/doJoin",
                            getLottery: "/ts/activity/result"
                        }
                    },
                    getCount: function (t) {
                        var e = i.getCache(t);
                        return e && e.today != i.getTodayFull() && (e = null, i.setCache(t, null)),
                        e
                    },
                    setCount: function (t, e) {
                        i.setCache(t, e)
                    },
                    foundByKey: function (t, e) {
                        if (!(t instanceof Array)) 
                            return null;
                        for (var n = 0, i = t.length; n < i; n++) {
                            var o = t[n];
                            if (void 0 != o[e]) 
                                return o
                        }
                        return null
                    },
                    calCount: function (t, e) {
                        var n = "" == t
                            ? []
                            : t;
                        if (!(n instanceof Array)) 
                            return n;
                        if (this.foundByKey(n, e)) 
                            for (var i = 0, o = n.length; i < o; i++) {
                                var r = n[i],
                                    a = r[e];
                                void 0 != a && (r[e] = a + 1)
                            }
                        else {
                            var s = {};
                            s[e] = 1,
                            n.push(s)
                        }
                        return n
                    },
                    resetPlugin: function () {
                        $(".plugin-act-popup").remove(),
                        $("body")
                            .find('script[src*="pluginAct"]')
                            .remove(),
                        $("body")
                            .find('link[href*="pluginAct"]')
                            .remove()
                    }
                };
            e.exports = o
        }, {
            "./util": 7
        }
    ],
    7: [
        function (t, e, n) {
            var i = {
                ajax: function (t) {
                    var e = {
                        data: {
                            timestamp: (new Date).getTime()
                        },
                        dataType: "json",
                        success: function () {},
                        error: function (t, e) {
                            "timeout" === e
                                ? (t && t.abort(), console.error("请求超时"))
                                : console.error("网络错误")
                        }
                    };
                    t = $.extend(!0, e, t),
                    $.ajax(t)
                },
                getURLParameter: function (t) {
                    var e = decodeURIComponent((new RegExp("[?|&]" + t + "=([^&;]+?)(&|#|;|$)").exec(window.location.href) || [void 0, ""])[1].replace(/\+/g, "%20")) || null;
                    return e
                        ? e.split("/")[0]
                        : e
                },
                getToday: function () {
                    var t = new Date;
                    return t.getMonth() + 1 + "-" + t.getDate()
                },
                getTodayFull: function () {
                    var t = new Date;
                    return t.getFullYear() + "/" + (t.getMonth() + 1) + "/" + t.getDate()
                },
                getCache: function (t) {
                    return "undefined" == typeof localStorage
                        ? ""
                        : JSON.parse(localStorage.getItem(t))
                },
                setCache: function (t, e) {
                    "undefined" != typeof localStorage && localStorage.setItem(t, JSON.stringify(e))
                }
            };
            e.exports = i
        }, {}
    ],
    8: [
        function (t, e, n) {
            var i = t("../base/util"),
                o = t("../base/service"),
                r = "pa-responsive",
                a = {
                    getAll: function () {
                        var t = o.getCount(r);
                        if (t && t.countArray && 0 !== t.countArray.length) 
                            return t.countArray.map(function (t) {
                                var e = {
                                    closeOrJoin: !1
                                };
                                for (var n in t) 
                                    "cj" !== n || 1 !== t[n]
                                        ? (e.id = n, e.count = t[n])
                                        : e.closeOrJoin = !0;
                                return e
                            })
                    },
                    setAppeared: function (t) {
                        var e = o.getCount(r);
                        e || (e = {
                            today: i.getTodayFull()
                        }),
                        e.countArray = o.calCount(e.countArray || "", t),
                        o.setCount(r, e)
                    },
                    setJoined: function (t) {
                        var e = o.getCount(r),
                            n = o.foundByKey(e.countArray, t);
                        n && (n.cj = 1, o.setCount(r, e))
                    }
                };
            e.exports = a
        }, {
            "../base/service": 6,
            "../base/util": 7
        }
    ],
    9: [
        function (t, e, n) {
            function i() {
                var t = 4,
                    e = parseInt(s.getURLParameter("id") || 0);
                return {
                    joinTimes: JSON.stringify(u.getAll()),
                    mainPageId: e,
                    mainPageType: t,

                    id: this_id,
                    awid: this_awid,
                    random: this_random
                }
            }
            function o(t) {
                t.reset && t.reset(),
                t.show && t.show()
            }
            function r() {
                var t = arguments.length > 0 && void 0 !== arguments[0]
                        ? arguments[0]
                        : {},
                    e = i();
                s.ajax({
                    url: "/ts/activity/responsiveIndex",
                    type: "post",
                    data: e,
                    success: function (e) {
                        if (e.success) {
                            var n = e.data,
                                i = n.id,
                                r = n.skinConfig,
                                a = n.priority;
                            u.setAppeared(i),
                            c.resetPlugin(),
                            $("body").append(r),
                            c.initJoinParams(e.data),
                            t.reset && t.reset(),
                            1 === a && t.show && t.show(),
                            $(".plugin-act-popup .plugin-act-btn, .plugin-act-popup .close").click(function (t) {
                                u.setJoined(i)
                            })
                        } else 
                            o(t)
                    },
                    error: function () {
                        o(t)
                    }
                })
            }
            function a(t) {
                function e(t) {
                    r(t)
                }
                e(t)
            }
            var s = t("../base/util"),
                c = t("../base/service"),
                u = t("./cache");
            window.ResponsivePlugin = a
        }, {
            "../base/service": 6,
            "../base/util": 7,
            "./cache": 8
        }
    ],
    10: [
        function (t, e, n) {
            var i = t("../base/util"),
                o = t("../base/service"),
                r = "pa-timing",
                a = {
                    getAll: function () {
                        var t = o.getCount(r);
                        if (t && t.countArray && 0 !== t.countArray.length) 
                            return t.countArray.map(function (t) {
                                var e = {
                                    closeOrJoin: !1
                                };
                                for (var n in t) 
                                    "cj" !== n || 1 !== t[n]
                                        ? (e.id = n, e.count = t[n])
                                        : e.closeOrJoin = !0;
                                return e
                            })
                    },
                    setAppeared: function (t) {
                        var e = o.getCount(r);
                        e || (e = {
                            today: i.getTodayFull()
                        }),
                        e.countArray = o.calCount(e.countArray || "", t),
                        o.setCount(r, e)
                    },
                    setJoined: function (t) {
                        var e = o.getCount(r);
                        if (!e) {
                            e = {
                                today: i.getTodayFull(),
                                countArray: []
                            };
                            var n = {};
                            n[t] = 0,
                            e
                                .countArray
                                .push(n)
                        }
                        var a = o.foundByKey(e.countArray, t);
                        a && (a.cj = 1, o.setCount(r, e))
                    }
                };
            e.exports = a
        }, {
            "../base/service": 6,
            "../base/util": 7
        }
    ],
    11: [
        function (t, e, n) {
            function i() {
                var t = 5,
                    e = parseInt(s.getURLParameter("id") || 0);
                return {
                    joinTimes: JSON.stringify(u.getAll()),
                    mainPageId: e,
                    mainPageType: t,
                    id: this_id,
                    awid: this_awid,
                    random: this_random
                }
            }
            function o(t) {
                t.reset && t.reset(),
                t.initOtherPlugin && t.initOtherPlugin()
            }
            function r() {
                var t = arguments.length > 0 && void 0 !== arguments[0]
                        ? arguments[0]
                        : {},
                    e = i();
                s.ajax({
                    url: "/ts/activity/timingIndex",
                    type: "post",
                    data: e,
                    success: function (e) {
                        if (e.success) {
                            var n = e.data,
                                i = n.id,
                                a = n.skinConfig,
                                s = n.priority;
                            c.resetPlugin(),
                            $("body").append(a),
                            c.initJoinParams(e.data),
                            t.reset && t.reset(),
                            1 === s && t.show && t.show(),
                            $(".plugin-act-popup").on("click", ".plugin-act-close", function (e) {
                                $(".winred").width() || $(".nonepack").width()
                                    ? r(t)
                                    : u.setJoined(i)
                            }),
                            $(".plugin-act-popup").on("click", ".plugin-act-btn", function (t) {
                                u.setAppeared(i)
                            })
                        } else 
                            o(t)
                    },
                    error: function () {
                        o(t)
                    }
                })
            }
            function a(t) {
                function e(t) {
                    r(t)
                }
                e(t)
            }
            var s = t("../base/util"),
                c = t("../base/service"),
                u = t("./cache");
            window.TimingPlugin = a
        }, {
            "../base/service": 6,
            "../base/util": 7,
            "./cache": 10
        }
    ],
    12: [
        function (t, e, n) {
            !function () {
                function t(i) {
                    return i
                        ? n || !localStorage || "undefined" != typeof localStorage.iswebp
                            ? (e = i.split("."), e.length > 0 && "gif" === e[e.length - 1]
                                ? i
                                : i += localStorage && localStorage.iswebp
                                    ? "?x-oss-process=image/format,webp"
                                    : "?x-oss-process=image/quality,Q_80")
                            : void t(i)
                        : i
                }
                var e = [],
                    n = !1;
                if (localStorage && !localStorage.iswebp) {
                    var i = new Image;
                    i.onload = function () {
                        1 === i.width && (localStorage.iswebp = !0)
                    },
                    i.onerror = function () {
                        n = !0,
                        localStorage.iswebp = ""
                    },
                    i.src = "data:image/webp;base64,UklGRiQAAABXRUJQVlA4IBgAAAAwAQCdASoBAAEAAwA0JaQAA3AA/vuUA" +
                            "AA="
                }
                String.prototype.ossimg = function () {
                    return t(this)
                },
                Array.prototype.imgWebpArray = function (t) {
                    for (var e = [], n = this, i = 0; i < n.length; i++) 
                        n[i][t] && (n[i][t] = n[i][t].ossimg(),
                        e.push(n[i]));
                    return e
                }
            }()
        }, {}
    ],
    13: [
        function (t, e, n) {
            !function (t) {
                var e = {
                    show: function (e) {
                        var n = {
                            title: "",
                            tip: "",
                            type: "",
                            btnText: "",
                            link: "",
                            clickCallback: null,
                            btnCallback: null
                        };
                        e = t.extend({}, n, e),
                        this.render(e)
                    },
                    hide: function () {
                        t(".db-msg-modal").remove(),
                        t("#db-content").removeClass("filter")
                    },
                    render: function (e) {
                        var n = CFG.host,
                            i = this,
                            o = {
                                again: n + "/h5/activity/showModal/1.0/again.png",
                                noPrize: n + "/h5/activity/showModal/1.0/noPrize.png",
                                todayOver: n + "/h5/activity/showModal/1.0/todayOver.png",
                                over: n + "/h5/activity/showModal/1.0/over.png",
                                preview: n + "/h5/activity/showModal/1.0/noCredits.png",
                                systemError: n + "/h5/activity/showModal/1.0/noLogin.png",
                                networkError: n + "/h5/activity/showModal/1.0/networkError.png"
                            },
                            r = o[e.type],
                            a = '<div class="db-msg-modal"><div class="msg-modal-wrapper"><div class="msg-modal-h' +
                                    'eader"><i class="msg-modal-close"></i><h4 class="msg-title">' + e.title + '</h4><p class="msg-tip">' + e.tip + '</p></div><div class="msg-modal-section">' + (r
                                ? '<img src="' + r + '" />'
                                : "") + '</div><div class="msg-modal-footer"><a href="javascript:;" class="msg-btn">' + e.btnText + "</a></div></div></div>";
                        t("body").append(a),
                        t("#db-content").addClass("filter"),
                        t(".db-msg-modal")
                            .off("click")
                            .on("click", ".msg-modal-close", function () {
                                e.clickCallback && e.clickCallback(),
                                i.hide()
                            })
                            .on("click", ".msg-btn", function () {
                                e.link && (window.location.href = e.link),
                                e.btnCallback
                                    ? e.btnCallback()
                                    : e.clickCallback && e.clickCallback(),
                                i.hide()
                            })
                    }
                };
                window.errorMsgModal = e
            }(Zepto)
        }, {}
    ],
    14: [
        function (t, e, n) {
            var i = "function" == typeof Symbol && "symbol" === _typeof2(Symbol.iterator)
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
                "use strict";
                function t(e, n) {
                    function i(t, e) {
                        return function () {
                            return t.apply(e, arguments)
                        }
                    }
                    var r;
                    if (n = n || {}, this.trackingClick = !1, this.trackingClickStart = 0, this.targetElement = null, this.touchStartX = 0, this.touchStartY = 0, this.lastTouchIdentifier = 0, this.touchBoundary = n.touchBoundary || 10, this.layer = e, this.tapDelay = n.tapDelay || 200, this.tapTimeout = n.tapTimeout || 700, !t.notNeeded(e)) {
                        for (var a = [
                            "onMouse",
                            "onClick",
                            "onTouchStart",
                            "onTouchMove",
                            "onTouchEnd",
                            "onTouchCancel"
                        ], s = this, c = 0, u = a.length; c < u; c++) 
                            s[a[c]] = i(s[a[c]], s);
                        o && (e.addEventListener("mouseover", this.onMouse, !0), e.addEventListener("mousedown", this.onMouse, !0), e.addEventListener("mouseup", this.onMouse, !0)),
                        e.addEventListener("click", this.onClick, !0),
                        e.addEventListener("touchstart", this.onTouchStart, !1),
                        e.addEventListener("touchmove", this.onTouchMove, !1),
                        e.addEventListener("touchend", this.onTouchEnd, !1),
                        e.addEventListener("touchcancel", this.onTouchCancel, !1),
                        Event.prototype.stopImmediatePropagation || (e.removeEventListener = function (t, n, i) {
                            var o = Node.prototype.removeEventListener;
                            "click" === t
                                ? o.call(e, t, n.hijacked || n, i)
                                : o.call(e, t, n, i)
                        },
                        e.addEventListener = function (t, n, i) {
                            var o = Node.prototype.addEventListener;
                            "click" === t
                                ? o.call(e, t, n.hijacked || (n.hijacked = function (t) {
                                    t.propagationStopped || n(t)
                                }), i)
                                : o.call(e, t, n, i)
                        }),
                        "function" == typeof e.onclick && (r = e.onclick, e.addEventListener("click", function (t) {
                            r(t)
                        }, !1), e.onclick = null)
                    }
                }
                var n = navigator
                        .userAgent
                        .indexOf("Windows Phone") >= 0,
                    o = navigator
                        .userAgent
                        .indexOf("Android") > 0 && !n,
                    r = /iP(ad|hone|od)/.test(navigator.userAgent) && !n,
                    a = r && /OS 4_\d(_\d)?/.test(navigator.userAgent),
                    s = r && /OS [6-7]_\d/.test(navigator.userAgent),
                    c = navigator
                        .userAgent
                        .indexOf("BB10") > 0;
                t.prototype.needsClick = function (t) {
                    switch (t.nodeName.toLowerCase()) {
                        case "button":
                        case "select":
                        case "textarea":
                            if (t.disabled) 
                                return !0;
                            break;
                        case "input":
                            if (r && "file" === t.type || t.disabled) 
                                return !0;
                            break;
                        case "label":
                        case "iframe":
                        case "video":
                            return !0
                    }
                    return /\bneedsclick\b/.test(t.className)
                },
                t.prototype.needsFocus = function (t) {
                    switch (t.nodeName.toLowerCase()) {
                        case "textarea":
                            return !0;
                        case "select":
                            return !o;
                        case "input":
                            switch (t.type) {
                                case "button":
                                case "checkbox":
                                case "file":
                                case "image":
                                case "radio":
                                case "submit":
                                    return !1
                            }
                            return !t.disabled && !t.readOnly;
                        default:
                            return /\bneedsfocus\b/.test(t.className)
                    }
                },
                t.prototype.sendClick = function (t, e) {
                    var n,
                        i;
                    document.activeElement && document.activeElement !== t && document
                        .activeElement
                        .blur(),
                    i = e.changedTouches[0],
                    n = document.createEvent("MouseEvents"),
                    n.initMouseEvent(this.determineEventType(t), !0, !0, window, 1, i.screenX, i.screenY, i.clientX, i.clientY, !1, !1, !1, !1, 0, null),
                    n.forwardedTouchEvent = !0,
                    t.dispatchEvent(n)
                },
                t.prototype.determineEventType = function (t) {
                    return o && "select" === t
                        .tagName
                        .toLowerCase()
                        ? "mousedown"
                        : "click"
                },
                t.prototype.focus = function (t) {
                    var e;
                    r && t.setSelectionRange && 0 !== t
                        .type
                        .indexOf("date") && "time" !== t.type && "month" !== t.type
                        ? (e = t.value.length, t.setSelectionRange(e, e))
                        : t.focus()
                },
                t.prototype.updateScrollParent = function (t) {
                    var e,
                        n;
                    if (e = t.fastClickScrollParent, !e || !e.contains(t)) {
                        n = t;
                        do 
                            {
                                if(n.scrollHeight > n.offsetHeight) {
                                    e = n,
                                    t.fastClickScrollParent = n;
                                    break
                                }
                            n = n.parentElement
                        } while (n)
                    }
                    e && (e.fastClickLastScrollTop = e.scrollTop)
                },
                t.prototype.getTargetElementFromEventTarget = function (t) {
                    return t.nodeType === Node.TEXT_NODE
                        ? t.parentNode
                        : t
                },
                t.prototype.onTouchStart = function (t) {
                    var e,
                        n,
                        i;
                    if (t.targetTouches.length > 1) 
                        return !0;
                    if (e = this.getTargetElementFromEventTarget(t.target), n = t.targetTouches[0], r) {
                        if (i = window.getSelection(), i.rangeCount && !i.isCollapsed) 
                            return !0;
                        if (!a) {
                            if (n.identifier && n.identifier === this.lastTouchIdentifier) 
                                return t.preventDefault(),
                                !1;
                            this.lastTouchIdentifier = n.identifier,
                            this.updateScrollParent(e)
                        }
                    }
                    return this.trackingClick = !0,
                    this.trackingClickStart = t.timeStamp,
                    this.targetElement = e,
                    this.touchStartX = n.pageX,
                    this.touchStartY = n.pageY,
                    t.timeStamp - this.lastClickTime < this.tapDelay && t.preventDefault(),
                    !0
                },
                t.prototype.touchHasMoved = function (t) {
                    var e = t.changedTouches[0],
                        n = this.touchBoundary;
                    return Math.abs(e.pageX - this.touchStartX) > n || Math.abs(e.pageY - this.touchStartY) > n
                },
                t.prototype.onTouchMove = function (t) {
                    return !this.trackingClick || ((this.targetElement !== this.getTargetElementFromEventTarget(t.target) || this.touchHasMoved(t)) && (this.trackingClick = !1, this.targetElement = null), !0)
                },
                t.prototype.findControl = function (t) {
                    return void 0 !== t.control
                        ? t.control
                        : t.htmlFor
                            ? document.getElementById(t.htmlFor)
                            : t.querySelector("button, input:not([type=hidden]), keygen, meter, output, progress, select, texta" +
                                    "rea")
                },
                t.prototype.onTouchEnd = function (t) {
                    var e,
                        n,
                        i,
                        c,
                        u,
                        l = this.targetElement;
                    if (!this.trackingClick) 
                        return !0;
                    if (t.timeStamp - this.lastClickTime < this.tapDelay) 
                        return this.cancelNextClick = !0,
                        !0;
                    if (t.timeStamp - this.trackingClickStart > this.tapTimeout) 
                        return !0;
                    if (this.cancelNextClick = !1, this.lastClickTime = t.timeStamp, n = this.trackingClickStart, this.trackingClick = !1, this.trackingClickStart = 0, s && (u = t.changedTouches[0], l = document.elementFromPoint(u.pageX - window.pageXOffset, u.pageY - window.pageYOffset) || l, l.fastClickScrollParent = this.targetElement.fastClickScrollParent), i = l.tagName.toLowerCase(), "label" === i) {
                        if (e = this.findControl(l)) {
                            if (this.focus(l), o) 
                                return !1;
                            l = e
                        }
                    } else if (this.needsFocus(l)) 
                        return t.timeStamp - n > 100 || r && window.top !== window && "input" === i
                            ? (this.targetElement = null, !1)
                            : (this.focus(l), this.sendClick(l, t), r && "select" === i || (this.targetElement = null, t.preventDefault()), !1);
                    return !(!r || a || (c = l.fastClickScrollParent, !c || c.fastClickLastScrollTop === c.scrollTop)) || (this.needsClick(l) || (t.preventDefault(), this.sendClick(l, t)), !1)
                },
                t.prototype.onTouchCancel = function () {
                    this.trackingClick = !1,
                    this.targetElement = null
                },
                t.prototype.onMouse = function (t) {
                    return !this.targetElement || (!!t.forwardedTouchEvent || (!t.cancelable || (!(!this.needsClick(this.targetElement) || this.cancelNextClick) || (t.stopImmediatePropagation
                        ? t.stopImmediatePropagation()
                        : t.propagationStopped = !0, t.stopPropagation(), t.preventDefault(), !1))))
                },
                t.prototype.onClick = function (t) {
                    var e;
                    return this.trackingClick
                        ? (this.targetElement = null, this.trackingClick = !1, !0)
                        : "submit" === t.target.type && 0 === t.detail || (e = this.onMouse(t), e || (this.targetElement = null), e)
                },
                t.prototype.destroy = function () {
                    var t = this.layer;
                    o && (t.removeEventListener("mouseover", this.onMouse, !0), t.removeEventListener("mousedown", this.onMouse, !0), t.removeEventListener("mouseup", this.onMouse, !0)),
                    t.removeEventListener("click", this.onClick, !0),
                    t.removeEventListener("touchstart", this.onTouchStart, !1),
                    t.removeEventListener("touchmove", this.onTouchMove, !1),
                    t.removeEventListener("touchend", this.onTouchEnd, !1),
                    t.removeEventListener("touchcancel", this.onTouchCancel, !1)
                },
                t.notNeeded = function (t) {
                    var e,
                        n,
                        i,
                        r;
                    if ("undefined" == typeof window.ontouchstart) 
                        return !0;
                    if (n =+ (/Chrome\/([0-9]+)/.exec(navigator.userAgent) || [, 0])[1]) {
                        if (!o) 
                            return !0;
                        if (e = document.querySelector("meta[name=viewport]")) {
                            if (e.content.indexOf("user-scalable=no") !== -1) 
                                return !0;
                            if (n > 31 && document.documentElement.scrollWidth <= window.outerWidth) 
                                return !0
                        }
                    }
                    if (c && (i = navigator.userAgent.match(/Version\/([0-9]*)\.([0-9]*)/), i[1] >= 10 && i[2] >= 3 && (e = document.querySelector("meta[name=viewport]")))) {
                        if (e.content.indexOf("user-scalable=no") !== -1) 
                            return !0;
                        if (document.documentElement.scrollWidth <= window.outerWidth) 
                            return !0
                    }
                    return "none" === t.style.msTouchAction || "manipulation" === t.style.touchAction || (r =+ (/Firefox\/([0-9]+)/.exec(navigator.userAgent) || [, 0])[1],
                    !!(r >= 27 && (e = document.querySelector("meta[name=viewport]"), e && (e.content.indexOf("user-scalable=no") !== -1 || document.documentElement.scrollWidth <= window.outerWidth))) || ("none" === t.style.touchAction || "manipulation" === t.style.touchAction))
                },
                t.attach = function (e, n) {
                    return new t(e, n)
                },
                "function" == typeof define && "object" === i(define.amd) && define.amd
                    ? define(function () {
                        return t
                    })
                    : "undefined" != typeof e && e.exports
                        ? (e.exports = t.attach, e.exports.FastClick = t)
                        : window.FastClick = t
            }()
        }, {}
    ],
    15: [
        function (t, e, n) {
            !function (t, e) {
                "use strict";
                function n(t) {
                    return "complete" === t.readyState || "loaded" === t.readyState
                }
                function i(t, n, i) {
                    var o = e.createElement("link");
                    o.rel = "stylesheet",
                    a(o, i, "css"),
                    o.async = !0,
                    o.href = t,
                    f.appendChild(o)
                }
                function o(t, n, i) {
                    var o = e.createElement("script");
                    o.charset = "utf-8",
                    a(o, i, "js"),
                    o.async = !n.sync,
                    o.src = t,
                    f.appendChild(o)
                }
                function r(t, e) {
                    var n;
                    t.sheet && (n = !0),
                    setTimeout(function () {
                        n
                            ? e()
                            : r(t, e)
                    }, 20)
                }
                function a(e, i, o) {
                    function a() {
                        e.onload = e.onreadystatechange = null,
                        e = null,
                        i()
                    }
                    var s = "onload" in e,
                        c = "css" === o;
                    return !c || !d && s
                        ? void(s
                            ? (e.onload = a, e.onerror = function () {
                                e.onerror = null,
                                t._cdnFallback(e)
                            })
                            : e.onreadystatechange = function () {
                                n(e) && a()
                            })
                        : void setTimeout(function () {
                            r(e, i)
                        }, 1)
                }
                function s(t, e, n, r) {
                    function a() {
                        var n = e.indexOf(t);
                        n > -1 && e.splice(n, 1),
                        0 === e.length && r()
                    }
                    l.test(t)
                        ? i(t, n, a)
                        : o(t, n, a)
                }
                function c(t, e, n) {
                    var i = function () {
                        n && n()
                    };
                    if (t = Array.prototype.slice.call(t || []), 0 === t.length) 
                        return void i();
                    for (var o = 0, r = t.length; o < r; o++) 
                        s(t[o], t, e, i)
                }
                function u(e, i) {
                    n(e)
                        ? i()
                        : t.addEventListener("load", i)
                }
                var l = new RegExp("\\.css|.less"),
                    f = e.head || e.getElementsByTagName("head")[0],
                    d =+ navigator
                        .userAgent
                        .replace(/.*(?:AppleWebKit|AndroidWebKit)\/?(\d+).*/i, "$1") < 536,
                    h = {
                        async: function (t, n) {
                            u(e, function () {
                                c(t, {}, n)
                            })
                        },
                        sync: function (t, n) {
                            u(e, function () {
                                c(t, {
                                    sync: !0
                                }, n)
                            })
                        }
                    };
                return t.Loader = h,
                h
            }(window, document)
        }, {}
    ],
    16: [
        function (t, e, n) {
            var i = "function" == typeof Symbol && "symbol" === _typeof2(Symbol.iterator)
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
                    },
                o = function () {
                    function t(t) {
                        return null == t
                            ? t + ""
                            : X[U.call(t)] || "object"
                    }
                    function e(e) {
                        return "function" == t(e)
                    }
                    function n(t) {
                        return null != t && t == t.window
                    }
                    function o(t) {
                        return null != t && t.nodeType == t.DOCUMENT_NODE
                    }
                    function r(e) {
                        return "object" == t(e)
                    }
                    function a(t) {
                        return r(t) && !n(t) && Object.getPrototypeOf(t) == Object.prototype
                    }
                    function s(t) {
                        return "number" == typeof t.length
                    }
                    function c(t) {
                        return N.call(t, function (t) {
                            return null != t
                        })
                    }
                    function u(t) {
                        return t.length > 0
                            ? k
                                .fn
                                .concat
                                .apply([], t)
                            : t
                    }
                    function l(t) {
                        return t
                            .replace(/::/g, "/")
                            .replace(/([A-Z]+)([A-Z][a-z])/g, "$1_$2")
                            .replace(/([a-z\d])([A-Z])/g, "$1_$2")
                            .replace(/_/g, "-")
                            .toLowerCase()
                    }
                    function f(t) {
                        return t in L
                            ? L[t]
                            : L[t] = RegExp("(^|\\s)" + t + "(\\s|$)")
                    }
                    function d(t, e) {
                        return "number" != typeof e || M[l(t)]
                            ? e
                            : e + "px"
                    }
                    function h(t) {
                        var e,
                            n;
                        return _[t] || (e = O.createElement(t), O.body.appendChild(e), n = getComputedStyle(e, "").getPropertyValue("display"), e.parentNode.removeChild(e), "none" == n && (n = "block"), _[t] = n),
                        _[t]
                    }
                    function p(t) {
                        return "children" in t
                            ? P.call(t.children)
                            : k.map(t.childNodes, function (t) {
                                return 1 == t.nodeType
                                    ? t
                                    : E
                            })
                    }
                    function m(t, e, n) {
                        for (x in e) 
                            n && (a(e[x]) || K(e[x]))
                                ? (a(e[x]) && !a(t[x]) && (t[x] = {}), K(e[x]) && !K(t[x]) && (t[x] = []), m(t[x], e[x], n))
                                : e[x] !== E && (t[x] = e[x])
                        }
                    function v(t, e) {
                        return null == e
                            ? k(t)
                            : k(t).filter(e)
                    }
                    function g(t, n, i, o) {
                        return e(n)
                            ? n.call(t, i, o)
                            : n
                    }
                    function y(t, e, n) {
                        null == n
                            ? t.removeAttribute(e)
                            : t.setAttribute(e, n)
                    }
                    function w(t, e) {
                        var n = t.className || "",
                            i = n && n.baseVal !== E;
                        return e === E
                            ? i
                                ? n.baseVal
                                : n
                            : (i
                                ? n.baseVal = e
                                : t.className = e, E)
                    }
                    function b(t) {
                        var e;
                        try {
                            return t
                                ? "true" == t || "false" != t && ("null" == t
                                    ? null
                                    : /^0/.test(t) || isNaN(e = Number(t))
                                        ? /^[\[\{]/.test(t)
                                            ? k.parseJSON(t)
                                            : t
                                        : e)
                                : t
                        } catch (n) {
                            return t
                        }
                    }
                    function C(t, e) {
                        e(t);
                        for (var n = 0, i = t.childNodes.length; i > n; n++) 
                            C(t.childNodes[n], e)
                    }
                    var E,
                        x,
                        k,
                        S,
                        T,
                        A,
                        j = [],
                        P = j.slice,
                        N = j.filter,
                        O = window.document,
                        _ = {},
                        L = {},
                        M = {
                            "column-count": 1,
                            columns: 1,
                            "font-weight": 1,
                            "line-height": 1,
                            opacity: 1,
                            "z-index": 1,
                            zoom: 1
                        },
                        D = /^\s*<(\w+|!)[^>]*>/,
                        I = /^<(\w+)\s*\/?>(?:<\/\1>|)$/,
                        F = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi,
                        $ = /^(?:body|html)$/i,
                        q = /([A-Z])/g,
                        R = [
                            "val",
                            "css",
                            "html",
                            "text",
                            "data",
                            "width",
                            "height",
                            "offset"
                        ],
                        B = [
                            "after", "prepend", "before", "append"
                        ],
                        J = O.createElement("table"),
                        z = O.createElement("tr"),
                        G = {
                            tr: O.createElement("tbody"),
                            tbody: J,
                            thead: J,
                            tfoot: J,
                            td: z,
                            th: z,
                            "*": O.createElement("div")
                        },
                        W = /complete|loaded|interactive/,
                        Z = /^[\w-]*$/,
                        X = {},
                        U = X.toString,
                        H = {},
                        Y = O.createElement("div"),
                        V = {
                            tabindex: "tabIndex",
                            readonly: "readOnly",
                            "for": "htmlFor",
                            "class": "className",
                            maxlength: "maxLength",
                            cellspacing: "cellSpacing",
                            cellpadding: "cellPadding",
                            rowspan: "rowSpan",
                            colspan: "colSpan",
                            usemap: "useMap",
                            frameborder: "frameBorder",
                            contenteditable: "contentEditable"
                        },
                        K = Array.isArray || function (t) {
                            return t instanceof Array
                        };
                    return H.matches = function (t, e) {
                        if (!e || !t || 1 !== t.nodeType) 
                            return !1;
                        var n = t.webkitMatchesSelector || t.mozMatchesSelector || t.oMatchesSelector || t.matchesSelector;
                        if (n) 
                            return n.call(t, e);
                        var i,
                            o = t.parentNode,
                            r = !o;
                        return r && (o = Y).appendChild(t),
                        i =~ H
                            .qsa(o, e)
                            .indexOf(t),
                        r && Y.removeChild(t),
                        i
                    },
                    T = function (t) {
                        return t.replace(/-+(.)?/g, function (t, e) {
                            return e
                                ? e.toUpperCase()
                                : ""
                        })
                    },
                    A = function (t) {
                        return N.call(t, function (e, n) {
                            return t.indexOf(e) == n
                        })
                    },
                    H.fragment = function (t, e, n) {
                        var i,
                            o,
                            r;
                        return I.test(t) && (i = k(O.createElement(RegExp.$1))),
                        i || (t.replace && (t = t.replace(F, "<$1></$2>")), e === E && (e = D.test(t) && RegExp.$1), e in G || (e = "*"), r = G[e], r.innerHTML = "" + t, i = k.each(P.call(r.childNodes), function () {
                            r.removeChild(this)
                        })),
                        a(n) && (o = k(i), k.each(n, function (t, e) {
                            R.indexOf(t) > -1
                                ? o[t](e)
                                : o.attr(t, e)
                        })),
                        i
                    },
                    H.Z = function (t, e) {
                        return t = t || [],
                        t.__proto__ = k.fn,
                        t.selector = e || "",
                        t
                    },
                    H.isZ = function (t) {
                        return t instanceof H.Z
                    },
                    H.init = function (t, n) {
                        var i;
                        if (!t) 
                            return H.Z();
                        if ("string" == typeof t) 
                            if (t = t.trim(), "<" == t[0] && D.test(t)) 
                                i = H.fragment(t, RegExp.$1, n),
                                t = null;
                            else {
                                if (n !== E) 
                                    return k(n).find(t);
                                i = H.qsa(O, t)
                            }
                        else {
                            if (e(t)) 
                                return k(O).ready(t);
                            if (H.isZ(t)) 
                                return t;
                            if (K(t)) 
                                i = c(t);
                            else if (r(t)) 
                                i = [t],
                                t = null;
                            else if (D.test(t)) 
                                i = H.fragment(t.trim(), RegExp.$1, n),
                                t = null;
                            else {
                                if (n !== E) 
                                    return k(n).find(t);
                                i = H.qsa(O, t)
                            }
                        }
                        return H.Z(i, t)
                    },
                    k = function (t, e) {
                        return H.init(t, e)
                    },
                    k.extend = function (t) {
                        var e,
                            n = P.call(arguments, 1);
                        return "boolean" == typeof t && (e = t, t = n.shift()),
                        n.forEach(function (n) {
                            m(t, n, e)
                        }),
                        t
                    },
                    H.qsa = function (t, e) {
                        var n,
                            i = "#" == e[0],
                            r = !i && "." == e[0],
                            a = i || r
                                ? e.slice(1)
                                : e,
                            s = Z.test(a);
                        return o(t) && s && i
                            ? (n = t.getElementById(a))
                                ? [n]
                                : []
                            : 1 !== t.nodeType && 9 !== t.nodeType
                                ? []
                                : P.call(s && !i
                                    ? r
                                        ? t.getElementsByClassName(a)
                                        : t.getElementsByTagName(e)
                                    : t.querySelectorAll(e))
                    },
                    k.contains = O.documentElement.contains
                        ? function (t, e) {
                            return t !== e && t.contains(e)
                        }
                        : function (t, e) {
                            for (; e && (e = e.parentNode);) 
                                if (e === t) 
                                    return !0;
                        return !1
                        },
                    k.type = t,
                    k.isFunction = e,
                    k.isWindow = n,
                    k.isArray = K,
                    k.isPlainObject = a,
                    k.isEmptyObject = function (t) {
                        var e;
                        for (e in t) 
                            return !1;
                        return !0
                    },
                    k.inArray = function (t, e, n) {
                        return j
                            .indexOf
                            .call(e, t, n)
                    },
                    k.camelCase = T,
                    k.trim = function (t) {
                        return null == t
                            ? ""
                            : String
                                .prototype
                                .trim
                                .call(t)
                    },
                    k.uuid = 0,
                    k.support = {},
                    k.expr = {},
                    k.map = function (t, e) {
                        var n,
                            i,
                            o,
                            r = [];
                        if (s(t)) 
                            for (i = 0; t.length > i; i++) 
                                n = e(t[i], i),
                                null != n && r.push(n);
                    else 
                            for (o in t) 
                                n = e(t[o], o),
                                null != n && r.push(n);
                    return u(r)
                    },
                    k.each = function (t, e) {
                        var n,
                            i;
                        if (s(t)) {
                            for (n = 0; t.length > n; n++) 
                                if (e.call(t[n], n, t[n]) === !1) 
                                    return t
                            }
                        else 
                            for (i in t) 
                                if (e.call(t[i], i, t[i]) === !1) 
                                    return t;
                    return t
                    },
                    k.grep = function (t, e) {
                        return N.call(t, e)
                    },
                    window.JSON && (k.parseJSON = JSON.parse),
                    k.each("Boolean Number String Function Array Date RegExp Object Error".split(" "), function (t, e) {
                        X["[object " + e + "]"] = e.toLowerCase()
                    }),
                    k.fn = {
                        forEach: j.forEach,
                        reduce: j.reduce,
                        push: j.push,
                        sort: j.sort,
                        indexOf: j.indexOf,
                        concat: j.concat,
                        map: function (t) {
                            return k(k.map(this, function (e, n) {
                                return t.call(e, n, e)
                            }))
                        },
                        slice: function () {
                            return k(P.apply(this, arguments))
                        },
                        ready: function (t) {
                            return W.test(O.readyState) && O.body
                                ? t(k)
                                : O.addEventListener("DOMContentLoaded", function () {
                                    t(k)
                                }, !1),
                            this
                        },
                        get: function (t) {
                            return t === E
                                ? P.call(this)
                                : this[t >= 0
                                        ? t
                                        : t + this.length]
                        },
                        toArray: function () {
                            return this.get()
                        },
                        size: function () {
                            return this.length
                        },
                        remove: function () {
                            return this.each(function () {
                                null != this.parentNode && this
                                    .parentNode
                                    .removeChild(this)
                            })
                        },
                        each: function (t) {
                            return j
                                .every
                                .call(this, function (e, n) {
                                    return t.call(e, n, e) !== !1
                                }),
                            this
                        },
                        filter: function (t) {
                            return e(t)
                                ? this.not(this.not(t))
                                : k(N.call(this, function (e) {
                                    return H.matches(e, t)
                                }))
                        },
                        add: function (t, e) {
                            return k(A(this.concat(k(t, e))))
                        },
                        is: function (t) {
                            return this.length > 0 && H.matches(this[0], t)
                        },
                        not: function (t) {
                            var n = [];
                            if (e(t) && t.call !== E) 
                                this.each(function (e) {
                                    t.call(this, e) || n.push(this)
                                });
                            else {
                                var i = "string" == typeof t
                                    ? this.filter(t)
                                    : s(t) && e(t.item)
                                        ? P.call(t)
                                        : k(t);
                                this.forEach(function (t) {
                                    0 > i.indexOf(t) && n.push(t)
                                })
                            }
                            return k(n)
                        },
                        has: function (t) {
                            return this.filter(function () {
                                return r(t)
                                    ? k.contains(this, t)
                                    : k(this)
                                        .find(t)
                                        .size()
                            })
                        },
                        eq: function (t) {
                            return -1 === t
                                ? this.slice(t)
                                : this.slice(t, + t + 1)
                        },
                        first: function () {
                            var t = this[0];
                            return t && !r(t)
                                ? t
                                : k(t)
                        },
                        last: function () {
                            var t = this[this.length - 1];
                            return t && !r(t)
                                ? t
                                : k(t)
                        },
                        find: function (t) {
                            var e,
                                n = this;
                            return e = t
                                ? "object" == ("undefined" == typeof t
                                    ? "undefined"
                                    : i(t))
                                    ? k(t).filter(function () {
                                        var t = this;
                                        return j
                                            .some
                                            .call(n, function (e) {
                                                return k.contains(e, t)
                                            })
                                    })
                                    : 1 == this.length
                                        ? k(H.qsa(this[0], t))
                                        : this.map(function () {
                                            return H.qsa(this, t)
                                        })
                                : []
                        },
                        closest: function (t, e) {
                            var n = this[0],
                                r = !1;
                            for ("object" == ("undefined" == typeof t
                                ? "undefined"
                                : i(t)) && (r = k(t)); n && !(r
                                ? r.indexOf(n) >= 0
                                : H.matches(n, t));) 
                                n = n !== e && !o(n) && n.parentNode;
                            return k(n)
                        },
                        parents: function (t) {
                            for (var e = [], n = this; n.length > 0;) 
                                n = k.map(n, function (t) {
                                    return (t = t.parentNode) && !o(t) && 0 > e.indexOf(t)
                                        ? (e.push(t), t)
                                        : E
                                });
                            return v(e, t)
                        },
                        parent: function (t) {
                            return v(A(this.pluck("parentNode")), t)
                        },
                        children: function (t) {
                            return v(this.map(function () {
                                return p(this)
                            }), t)
                        },
                        contents: function () {
                            return this.map(function () {
                                return P.call(this.childNodes)
                            })
                        },
                        siblings: function (t) {
                            return v(this.map(function (t, e) {
                                return N.call(p(e.parentNode), function (t) {
                                    return t !== e
                                })
                            }), t)
                        },
                        empty: function () {
                            return this.each(function () {
                                this.innerHTML = ""
                            })
                        },
                        pluck: function (t) {
                            return k.map(this, function (e) {
                                return e[t]
                            })
                        },
                        show: function () {
                            return this.each(function () {
                                "none" == this.style.display && (this.style.display = ""),
                                "none" == getComputedStyle(this, "").getPropertyValue("display") && (this.style.display = h(this.nodeName))
                            })
                        },
                        replaceWith: function (t) {
                            return this
                                .before(t)
                                .remove()
                        },
                        wrap: function (t) {
                            var n = e(t);
                            if (this[0] && !n) 
                                var i = k(t).get(0),
                                    o = i.parentNode || this.length > 1;
                            return this.each(function (e) {
                                k(this).wrapAll(n
                                    ? t.call(this, e)
                                    : o
                                        ? i.cloneNode(!0)
                                        : i)
                            })
                        },
                        wrapAll: function (t) {
                            if (this[0]) {
                                k(this[0]).before(t = k(t));
                                for (var e; (e = t.children()).length;) 
                                    t = e.first();
                                k(t).append(this)
                            }
                            return this
                        },
                        wrapInner: function (t) {
                            var n = e(t);
                            return this.each(function (e) {
                                var i = k(this),
                                    o = i.contents(),
                                    r = n
                                        ? t.call(this, e)
                                        : t;
                                o.length
                                    ? o.wrapAll(r)
                                    : i.append(r)
                            })
                        },
                        unwrap: function () {
                            return this
                                .parent()
                                .each(function () {
                                    k(this).replaceWith(k(this).children())
                                }),
                            this
                        },
                        clone: function () {
                            return this.map(function () {
                                return this.cloneNode(!0)
                            })
                        },
                        hide: function () {
                            return this.css("display", "none")
                        },
                        toggle: function (t) {
                            return this.each(function () {
                                var e = k(this);
                                (t === E
                                    ? "none" == e.css("display")
                                    : t)
                                    ? e.show()
                                    : e.hide()
                            })
                        },
                        prev: function (t) {
                            return k(this.pluck("previousElementSibling")).filter(t || "*")
                        },
                        next: function (t) {
                            return k(this.pluck("nextElementSibling")).filter(t || "*")
                        },
                        html: function (t) {
                            return 0 in arguments
                                ? this.each(function (e) {
                                    var n = this.innerHTML;
                                    k(this)
                                        .empty()
                                        .append(g(this, t, e, n))
                                })
                                : 0 in this
                                    ? this[0].innerHTML
                                    : null
                        },
                        text: function (t) {
                            return 0 in arguments
                                ? this.each(function (e) {
                                    var n = g(this, t, e, this.textContent);
                                    this.textContent = null == n
                                        ? ""
                                        : "" + n
                                })
                                : 0 in this
                                    ? this[0].textContent
                                    : null
                        },
                        attr: function (t, e) {
                            var n;
                            return "string" != typeof t || 1 in arguments
                                ? this.each(function (n) {
                                    if (1 === this.nodeType) 
                                        if (r(t)) 
                                            for (x in t) 
                                                y(this, x, t[x]);
                                else 
                                        y(this, t, g(this, e, n, this.getAttribute(t)))
                                })
                                : this.length && 1 === this[0].nodeType
                                    ? !(n = this[0].getAttribute(t)) && t in this[0]
                                        ? this[0][t]
                                        : n
                                    : E
                        },
                        removeAttr: function (t) {
                            return this.each(function () {
                                1 === this.nodeType && y(this, t)
                            })
                        },
                        prop: function (t, e) {
                            return t = V[t] || t,
                            1 in arguments
                                ? this.each(function (n) {
                                    this[t] = g(this, e, n, this[t])
                                })
                                : this[0] && this[0][t]
                        },
                        data: function (t, e) {
                            var n = "data-" + t
                                    .replace(q, "-$1")
                                    .toLowerCase(),
                                i = 1 in arguments
                                    ? this.attr(n, e)
                                    : this.attr(n);
                            return null !== i
                                ? b(i)
                                : E
                        },
                        val: function (t) {
                            return 0 in arguments
                                ? this.each(function (e) {
                                    this.value = g(this, t, e, this.value)
                                })
                                : this[0] && (this[0].multiple
                                    ? k(this[0]).find("option").filter(function () {
                                        return this.selected
                                    }).pluck("value")
                                    : this[0].value)
                        },
                        offset: function (t) {
                            if (t) 
                                return this.each(function (e) {
                                    var n = k(this),
                                        i = g(this, t, e, n.offset()),
                                        o = n
                                            .offsetParent()
                                            .offset(),
                                        r = {
                                            top: i.top - o.top,
                                            left: i.left - o.left
                                        };
                                    "static" == n.css("position") && (r.position = "relative"),
                                    n.css(r)
                                });
                            if (!this.length) 
                                return null;
                            var e = this[0].getBoundingClientRect();
                            return {
                                left: e.left + window.pageXOffset,
                                top: e.top + window.pageYOffset,
                                width: Math.round(e.width),
                                height: Math.round(e.height)
                            }
                        },
                        css: function (e, n) {
                            if (2 > arguments.length) {
                                var i = this[0],
                                    o = getComputedStyle(i, "");
                                if (!i) 
                                    return;
                                if ("string" == typeof e) 
                                    return i.style[T(e)] || o.getPropertyValue(e);
                                if (K(e)) {
                                    var r = {};
                                    return k.each(e, function (t, e) {
                                        r[e] = i.style[T(e)] || o.getPropertyValue(e)
                                    }),
                                    r
                                }
                            }
                            var a = "";
                            if ("string" == t(e)) 
                                n || 0 === n
                                    ? a = l(e) + ":" + d(e, n)
                                    : this.each(function () {
                                        this
                                            .style
                                            .removeProperty(l(e))
                                    });
                            else 
                                for (x in e) 
                                    e[x] || 0 === e[x]
                                        ? a += l(x) + ":" + d(x, e[x]) + ";"
                                        : this.each(function () {
                                            this
                                                .style
                                                .removeProperty(l(x))
                                        });
                            return this.each(function () {
                                this.style.cssText += ";" + a
                            })
                        },
                        index: function (t) {
                            return t
                                ? this.indexOf(k(t)[0])
                                : this
                                    .parent()
                                    .children()
                                    .indexOf(this[0])
                        },
                        hasClass: function (t) {
                            return !!t && j
                                .some
                                .call(this, function (t) {
                                    return this.test(w(t))
                                }, f(t))
                        },
                        addClass: function (t) {
                            return t
                                ? this.each(function (e) {
                                    if ("className" in this) {
                                        S = [];
                                        var n = w(this),
                                            i = g(this, t, e, n);
                                        i
                                            .split(/\s+/g)
                                            .forEach(function (t) {
                                                k(this).hasClass(t) || S.push(t)
                                            }, this),
                                        S.length && w(this, n + (n
                                            ? " "
                                            : "") + S.join(" "))
                                    }
                                })
                                : this
                        },
                        removeClass: function (t) {
                            return this.each(function (e) {
                                if ("className" in this) {
                                    if (t === E) 
                                        return w(this, "");
                                    S = w(this),
                                    g(this, t, e, S)
                                        .split(/\s+/g)
                                        .forEach(function (t) {
                                            S = S.replace(f(t), " ")
                                        }),
                                    w(this, S.trim())
                                }
                            })
                        },
                        toggleClass: function (t, e) {
                            return t
                                ? this.each(function (n) {
                                    var i = k(this),
                                        o = g(this, t, n, w(this));
                                    o
                                        .split(/\s+/g)
                                        .forEach(function (t) {
                                            (e === E
                                                ? !i.hasClass(t)
                                                : e)
                                                ? i.addClass(t)
                                                : i.removeClass(t)
                                        })
                                })
                                : this
                        },
                        scrollTop: function (t) {
                            if (this.length) {
                                var e = "scrollTop" in this[0];
                                return t === E
                                    ? e
                                        ? this[0].scrollTop
                                        : this[0].pageYOffset
                                    : this.each(e
                                        ? function () {
                                            this.scrollTop = t
                                        }
                                        : function () {
                                            this.scrollTo(this.scrollX, t)
                                        })
                            }
                        },
                        scrollLeft: function (t) {
                            if (this.length) {
                                var e = "scrollLeft" in this[0];
                                return t === E
                                    ? e
                                        ? this[0].scrollLeft
                                        : this[0].pageXOffset
                                    : this.each(e
                                        ? function () {
                                            this.scrollLeft = t
                                        }
                                        : function () {
                                            this.scrollTo(t, this.scrollY)
                                        })
                            }
                        },
                        position: function () {
                            if (this.length) {
                                var t = this[0],
                                    e = this.offsetParent(),
                                    n = this.offset(),
                                    i = $.test(e[0].nodeName)
                                        ? {
                                            top: 0,
                                            left: 0
                                        }
                                        : e.offset();
                                return n.top -= parseFloat(k(t).css("margin-top")) || 0,
                                n.left -= parseFloat(k(t).css("margin-left")) || 0,
                                i.top += parseFloat(k(e[0]).css("border-top-width")) || 0,
                                i.left += parseFloat(k(e[0]).css("border-left-width")) || 0, {
                                    top: n.top - i.top,
                                    left: n.left - i.left
                                }
                            }
                        },
                        offsetParent: function () {
                            return this.map(function () {
                                for (var t = this.offsetParent || O.body; t && !$.test(t.nodeName) && "static" == k(t).css("position");) 
                                    t = t.offsetParent;
                                return t
                            })
                        }
                    },
                    k.fn.detach = k.fn.remove,
                    ["width", "height"].forEach(function (t) {
                        var e = t.replace(/./, function (t) {
                            return t[0].toUpperCase()
                        });
                        k.fn[t] = function (i) {
                            var r,
                                a = this[0];
                            return i === E
                                ? n(a)
                                    ? a["inner" + e]
                                    : o(a)
                                        ? a.documentElement["scroll" + e]
                                        : (r = this.offset()) && r[t]
                                : this.each(function (e) {
                                    a = k(this),
                                    a.css(t, g(this, i, e, a[t]()))
                                })
                        }
                    }),
                    B.forEach(function (e, n) {
                        var i = n % 2;
                        k.fn[e] = function () {
                            var e,
                                o,
                                r = k.map(arguments, function (n) {
                                    return e = t(n),
                                    "object" == e || "array" == e || null == n
                                        ? n
                                        : H.fragment(n)
                                }),
                                a = this.length > 1;
                            return 1 > r.length
                                ? this
                                : this.each(function (t, e) {
                                    o = i
                                        ? e
                                        : e.parentNode,
                                    e = 0 == n
                                        ? e.nextSibling
                                        : 1 == n
                                            ? e.firstChild
                                            : 2 == n
                                                ? e
                                                : null;
                                    var s = k.contains(O.documentElement, o);
                                    r.forEach(function (t) {
                                        if (a) 
                                            t = t.cloneNode(!0);
                                        else if (!o) 
                                            return k(t).remove();
                                        o.insertBefore(t, e),
                                        s && C(t, function (t) {
                                            null == t.nodeName || "SCRIPT" !== t
                                                .nodeName
                                                .toUpperCase() || t.type && "text/javascript" !== t.type || t.src || window
                                                .eval
                                                .call(window, t.innerHTML)
                                        })
                                    })
                                })
                        },
                        k.fn[i
                                ? e + "To"
                                : "insert" + (n
                                    ? "Before"
                                    : "After")] = function (t) {
                            return k(t)[e](this),
                            this
                        }
                    }),
                    H.Z.prototype = k.fn,
                    H.uniq = A,
                    H.deserializeValue = b,
                    k.zepto = H,
                    k
                }();
            window.Zepto = o,
            void 0 === window.$ && (window.$ = o),
            function (t) {
                function e(e, n, i) {
                    var o = t.Event(n);
                    return t(e).trigger(o, i),
                    !o.isDefaultPrevented()
                }
                function n(t, n, i, o) {
                    return t.global
                        ? e(n || y, i, o)
                        : void 0
                }
                function i(e) {
                    e.global && 0 === t.active ++&& n(e, null, "ajaxStart")
                }
                function o(e) {
                    e.global && !--t.active && n(e, null, "ajaxStop")
                }
                function r(t, e) {
                    var i = e.context;
                    return e
                        .beforeSend
                        .call(i, t, e) !== !1 && n(e, i, "ajaxBeforeSend", [t, e]) !== !1 && void n(e, i, "ajaxSend", [t, e])
                }
                function a(t, e, i, o) {
                    var r = i.context,
                        a = "success";
                    i
                        .success
                        .call(r, t, a, e),
                    o && o.resolveWith(r, [t, a, e]),
                    n(i, r, "ajaxSuccess", [e, i, t]),
                    c(a, e, i)
                }
                function s(t, e, i, o, r) {
                    var a = o.context;
                    o
                        .error
                        .call(a, i, e, t),
                    r && r.rejectWith(a, [i, e, t]),
                    n(o, a, "ajaxError", [
                        i, o, t || e
                    ]),
                    c(e, i, o)
                }
                function c(t, e, i) {
                    var r = i.context;
                    i
                        .complete
                        .call(r, e, t),
                    n(i, r, "ajaxComplete", [e, i]),
                    o(i)
                }
                function u() {}
                function l(t) {
                    return t && (t = t.split(";", 2)[0]),
                    t && (t == x
                        ? "html"
                        : t == E
                            ? "json"
                            : b.test(t)
                                ? "script"
                                : C.test(t) && "xml") || "text"
                }
                function f(t, e) {
                    return "" == e
                        ? t
                        : (t + "&" + e).replace(/[&?]{1,2}/, "?")
                }
                function d(e) {
                    e.processData && e.data && "string" != t.type(e.data) && (e.data = t.param(e.data, e.traditional)),
                    !e.data || e.type && "post" != e
                        .type
                        .toUpperCase() || (e.url = f(e.url, e.data), e.data = void 0)
                }
                function h(e, n, i, o) {
                    return t.isFunction(n) && (o = i, i = n, n = void 0),
                    t.isFunction(i) || (o = i, i = void 0), {
                        url: e,
                        data: n,
                        success: i,
                        dataType: o
                    }
                }
                function p(e, n, i, o) {
                    var r,
                        a = t.isArray(n),
                        s = t.isPlainObject(n);
                    t.each(n, function (n, c) {
                        r = t.type(c),
                        o && (n = i
                            ? o
                            : o + "[" + (s || "object" == r || "array" == r
                                ? n
                                : "") + "]"),
                        !o && a
                            ? e.add(c.name, c.value)
                            : "array" == r || !i && "object" == r
                                ? p(e, c, i, n)
                                : e.add(n, c)
                    })
                }
                var m,
                    v,
                    g = 0,
                    y = window.document,
                    w = /<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,
                    b = /^(?:text|application)\/javascript/i,
                    C = /^(?:text|application)\/xml/i,
                    E = "application/json",
                    x = "text/html",
                    k = /^\s*$/;
                t.active = 0,
                t.ajaxJSONP = function (e, n) {
                    if (!("type" in e)) 
                        return t.ajax(e);
                    var i,
                        o,
                        c = e.jsonpCallback,
                        u = (t.isFunction(c)
                            ? c()
                            : c) || "jsonp" + ++g,
                        l = y.createElement("script"),
                        f = window[u],
                        d = function (e) {
                            t(l).triggerHandler("error", e || "abort")
                        },
                        h = {
                            abort: d
                        };
                    return n && n.promise(h),
                    t(l).on("load error", function (r, c) {
                        clearTimeout(o),
                        t(l)
                            .off()
                            .remove(),
                        "error" != r.type && i
                            ? a(i[0], h, e, n)
                            : s(null, c || "error", h, e, n),
                        window[u] = f,
                        i && t.isFunction(f) && f(i[0]),
                        f = i = void 0
                    }),
                    r(h, e) === !1
                        ? (d("abort"), h)
                        : (window[u] = function () {
                            i = arguments
                        },
                        l.src = e.url.replace(/\?(.+)=\?/, "?$1=" + u),
                        y.head.appendChild(l),
                        e.timeout > 0 && (o = setTimeout(function () {
                            d("timeout")
                        }, e.timeout)),
                        h)
                },
                t.ajaxSettings = {
                    type: "post",
                    beforeSend: u,
                    success: u,
                    error: u,
                    complete: u,
                    context: null,
                    global: !0,
                    xhr: function () {
                        return new window.XMLHttpRequest
                    },
                    accepts: {
                        script: "text/javascript, application/javascript, application/x-javascript",
                        json: E,
                        xml: "application/xml, text/xml",
                        html: x,
                        text: "text/plain"
                    },
                    crossDomain: !1,
                    timeout: 0,
                    processData: !0,
                    cache: !0
                },
                t.ajax = function (e) {
                    var n = t.extend({}, e || {}),
                        o = t.Deferred && t.Deferred();
                    for (m in t.ajaxSettings) 
                        void 0 === n[m] && (n[m] = t.ajaxSettings[m]);
                    i(n),
                    n.crossDomain || (n.crossDomain = /^([\w-]+:)?\/\/([^\/]+)/.test(n.url) && RegExp.$2 != window.location.host),
                   
                    n.url || (n.url = "" + window.location),
                    d(n);
                    var c = n.dataType,
                        h = /\?.+=\?/.test(n.url);
                    if (h && (c = "jsonp"), n.cache !== !1 && (e && e.cache === !0 || "script" != c && "jsonp" != c) || (n.url = f(n.url, "_=" + Date.now())), "jsonp" == c) 
                        return h || (n.url = f(n.url, n.jsonp
                            ? n.jsonp + "=?"
                            : n.jsonp === !1
                                ? ""
                                : "callback=?")),
                        t.ajaxJSONP(n, o);
                    var p,
                        g = n.accepts[c],
                        y = {},
                        w = function (t, e) {
                            y[t.toLowerCase()] = [t, e]
                        },
                        b = /^([\w-]+:)\/\//.test(n.url)
                            ? RegExp.$1
                            : window.location.protocol,
                        C = n.xhr(),
                        E = C.setRequestHeader;
                    if (o && o.promise(C), n.crossDomain || w("X-Requested-With", "XMLHttpRequest"), w("Accept", g || "*/*"), (g = n.mimeType || g) && (g.indexOf(",") > -1 && (g = g.split(",", 2)[0]), C.overrideMimeType && C.overrideMimeType(g)), (n.contentType || n.contentType !== !1 && n.data && "post" != n.type.toUpperCase()) && w("Content-Type", n.contentType || "application/x-www-form-urlencoded"), n.headers) 
                        for (v in n.headers) 
                            w(v, n.headers[v]);
                if (C.setRequestHeader = w, C.onreadystatechange = function () {
                        if (4 == C.readyState) {
                            C.onreadystatechange = u,
                            clearTimeout(p);
                            var e,
                                i = !1;
                            if (C.status >= 200 && 300 > C.status || 304 == C.status || 0 == C.status && "file:" == b) {
                                c = c || l(n.mimeType || C.getResponseHeader("content-type")),
                                e = C.responseText;
                                try {
                                    "script" == c
                                        ? (0, eval)(e)
                                        : "xml" == c
                                            ? e = C.responseXML
                                            : "json" == c && (e = k.test(e)
                                                ? null
                                                : t.parseJSON(e))
                                } catch (r) {
                                    i = r
                                }
                                i
                                    ? s(i, "parsererror", C, n, o)
                                    : a(e, C, n, o)
                            } else 
                                s(C.statusText || null, C.status
                                    ? "error"
                                    : "abort", C, n, o)
                            }
                    },
                    r(C, n) === !1) 
                        return C.abort(),
                        s(null, "abort", C, n, o),
                        C;
                    if (n.xhrFields) 
                        for (v in n.xhrFields) 
                            C[v] = n.xhrFields[v];
                var x = !("async" in n) || n.async;
                    C.open(n.type, n.url, x, n.username, n.password);
                    for (v in y) 
                        E.apply(C, y[v]);
                    return n.timeout > 0 && (p = setTimeout(function () {
                        C.onreadystatechange = u,
                        C.abort(),
                        s(null, "timeout", C, n, o)
                    }, n.timeout)),
                    C.send(n.data
                        ? n.data
                        : null),
                    C
                },
                t.get = function () {
                    return t.ajax(h.apply(null, arguments))
                },
                t.post = function () {
                    var e = h.apply(null, arguments);
                    return e.type = "post",
                    t.ajax(e)
                },
                t.getJSON = function () {
                    var e = h.apply(null, arguments);
                    return e.dataType = "json",
                    t.ajax(e)
                },
                t.fn.load = function (e, n, i) {
                    if (!this.length) 
                        return this;
                    var o,
                        r = this,
                        a = e.split(/\s/),
                        s = h(e, n, i),
                        c = s.success;
                    return a.length > 1 && (s.url = a[0], o = a[1]),
                    s.success = function (e) {
                        r.html(o
                            ? t("<div>").html(e.replace(w, "")).find(o)
                            : e),
                        c && c.apply(r, arguments)
                    },
                    t.ajax(s),
                    this
                };
                var S = encodeURIComponent;
                t.param = function (t, e) {
                    var n = [];
                    return n.add = function (t, e) {
                        this.push(S(t) + "=" + S(e))
                    },
                    p(n, t, e),
                    n
                        .join("&")
                        .replace(/%20/g, "+")
                }
            }(o),
            function (t) {
                function e(t) {
                    return t._zid || (t._zid = d++)
                }
                function n(t, n, r, a) {
                    if (n = i(n), n.ns) 
                        var s = o(n.ns);
                    return (v[e(t)] || [])
                        .filter(function (t) {
                            return !(!t || n.e && t.e != n.e || n.ns && !s.test(t.ns) || r && e(t.fn) !== e(r) || a && t.sel != a)
                        })
                }
                function i(t) {
                    var e = ("" + t).split(".");
                    return {
                        e: e[0],
                        ns: e
                            .slice(1)
                            .sort()
                            .join(" ")
                    }
                }
                function o(t) {
                    return RegExp("(?:^| )" + t.replace(" ", " .* ?") + "(?: |$)")
                }
                function r(t, e) {
                    return t.del && !y && t.e in w || !!e
                }
                function a(t) {
                    return b[t] || y && w[t] || t
                }
                function s(n, o, s, c, l, d, h) {
                    var p = e(n),
                        m = v[p] || (v[p] = []);
                    o
                        .split(/\s/)
                        .forEach(function (e) {
                            if ("ready" == e) 
                                return t(document).ready(s);
                            var o = i(e);
                            o.fn = s,
                            o.sel = l,
                            o.e in b && (s = function (e) {
                                var n = e.relatedTarget;
                                return !n || n !== this && !t.contains(this, n)
                                    ? o
                                        .fn
                                        .apply(this, arguments)
                                    : f
                            }),
                            o.del = d;
                            var p = d || s;
                            o.proxy = function (t) {
                                if (t = u(t), !t.isImmediatePropagationStopped()) {
                                    t.data = c;
                                    var e = p.apply(n, t._args == f
                                        ? [t]
                                        : [t].concat(t._args));
                                    return e === !1 && (t.preventDefault(), t.stopPropagation()),
                                    e
                                }
                            },
                            o.i = m.length,
                            m.push(o),
                            "addEventListener" in n && n.addEventListener(a(o.e), o.proxy, r(o, h))
                        })
                }
                function c(t, i, o, s, c) {
                    var u = e(t);
                    (i || "")
                        .split(/\s/)
                        .forEach(function (e) {
                            n(t, e, o, s)
                                .forEach(function (e) {
                                    delete v[u][e.i],
                                    "removeEventListener" in t && t.removeEventListener(a(e.e), e.proxy, r(e, c))
                                })
                        })
                }
                function u(e, n) {
                    return (n || !e.isDefaultPrevented) && (n || (n = e), t.each(k, function (t, i) {
                        var o = n[t];
                        e[t] = function () {
                            return this[i] = C,
                            o && o.apply(n, arguments)
                        },
                        e[i] = E
                    }), (n.defaultPrevented !== f
                        ? n.defaultPrevented
                        : "returnValue" in n
                            ? n.returnValue === !1
                            : n.getPreventDefault && n.getPreventDefault()) && (e.isDefaultPrevented = C)),
                    e
                }
                function l(t) {
                    var e,
                        n = {
                            originalEvent: t
                        };
                    for (e in t) 
                        x.test(e) || t[e] === f || (n[e] = t[e]);
                    return u(n, t)
                }
                var f,
                    d = 1,
                    h = Array.prototype.slice,
                    p = t.isFunction,
                    m = function (t) {
                        return "string" == typeof t
                    },
                    v = {},
                    g = {},
                    y = "onfocusin" in window,
                    w = {
                        focus: "focusin",
                        blur: "focusout"
                    },
                    b = {
                        mouseenter: "mouseover",
                        mouseleave: "mouseout"
                    };
                g.click = g.mousedown = g.mouseup = g.mousemove = "MouseEvents",
                t.event = {
                    add: s,
                    remove: c
                },
                t.proxy = function (n, i) {
                    var o = 2 in arguments && h.call(arguments, 2);
                    if (p(n)) {
                        var r = function () {
                            return n.apply(i, o
                                ? o.concat(h.call(arguments))
                                : arguments)
                        };
                        return r._zid = e(n),
                        r
                    }
                    if (m(i)) 
                        return o
                            ? (o.unshift(n[i], n), t.proxy.apply(null, o))
                            : t.proxy(n[i], n);
                    throw new TypeError("expected function")
                },
                t.fn.bind = function (t, e, n) {
                    return this.on(t, e, n)
                },
                t.fn.unbind = function (t, e) {
                    return this.off(t, e)
                },
                t.fn.one = function (t, e, n, i) {
                    return this.on(t, e, n, i, 1)
                };
                var C = function () {
                        return !0
                    },
                    E = function () {
                        return !1
                    },
                    x = /^([A-Z]|returnValue$|layer[XY]$)/,
                    k = {
                        preventDefault: "isDefaultPrevented",
                        stopImmediatePropagation: "isImmediatePropagationStopped",
                        stopPropagation: "isPropagationStopped"
                    };
                t.fn.delegate = function (t, e, n) {
                    return this.on(e, t, n)
                },
                t.fn.undelegate = function (t, e, n) {
                    return this.off(e, t, n)
                },
                t.fn.live = function (e, n) {
                    return t(document.body).delegate(this.selector, e, n),
                    this
                },
                t.fn.die = function (e, n) {
                    return t(document.body).undelegate(this.selector, e, n),
                    this
                },
                t.fn.on = function (e, n, i, o, r) {
                    var a,
                        u,
                        d = this;
                    return e && !m(e)
                        ? (t.each(e, function (t, e) {
                            d.on(t, n, i, e, r)
                        }), d)
                        : (m(n) || p(o) || o === !1 || (o = i, i = n, n = f), (p(i) || i === !1) && (o = i, i = f), o === !1 && (o = E), d.each(function (d, p) {
                            r && (a = function (t) {
                                return c(p, t.type, o),
                                o.apply(this, arguments)
                            }),
                            n && (u = function (e) {
                                var i,
                                    r = t(e.target)
                                        .closest(n, p)
                                        .get(0);
                                return r && r !== p
                                    ? (i = t.extend(l(e), {
                                        currentTarget: r,
                                        liveFired: p
                                    }), (a || o).apply(r, [i].concat(h.call(arguments, 1))))
                                    : f
                            }),
                            s(p, e, o, i, n, u || a)
                        }))
                },
                t.fn.off = function (e, n, i) {
                    var o = this;
                    return e && !m(e)
                        ? (t.each(e, function (t, e) {
                            o.off(t, n, e)
                        }), o)
                        : (m(n) || p(i) || i === !1 || (i = n, n = f), i === !1 && (i = E), o.each(function () {
                            c(this, e, i, n)
                        }))
                },
                t.fn.trigger = function (e, n) {
                    return e = m(e) || t.isPlainObject(e)
                        ? t.Event(e)
                        : u(e),
                    e._args = n,
                    this.each(function () {
                        "dispatchEvent" in this
                            ? this.dispatchEvent(e)
                            : t(this).triggerHandler(e, n)
                    })
                },
                t.fn.triggerHandler = function (e, i) {
                    var o,
                        r;
                    return this.each(function (a, s) {
                        o = l(m(e)
                            ? t.Event(e)
                            : e),
                        o._args = i,
                        o.target = s,
                        t.each(n(s, e.type || e), function (t, e) {
                            return r = e.proxy(o),
                            !o.isImmediatePropagationStopped() && f
                        })
                    }),
                    r
                },
                ("focusin focusout load resize scroll unload click dblclick mousedown mouseup mou" +
                        "semove mouseover mouseout mouseenter mouseleave change select keydown keypress k" +
                        "eyup error")
                    .split(" ")
                    .forEach(function (e) {
                        t.fn[e] = function (t) {
                            return t
                                ? this.bind(e, t)
                                : this.trigger(e)
                        }
                    }),
                ["focus", "blur"].forEach(function (e) {
                    t.fn[e] = function (t) {
                        return t
                            ? this.bind(e, t)
                            : this.each(function () {
                                try {
                                    this[e]()
                                } catch (t) {}
                            }),
                        this
                    }
                }),
                t.Event = function (t, e) {
                    m(t) || (e = t, t = e.type);
                    var n = document.createEvent(g[t] || "Events"),
                        i = !0;
                    if (e) 
                        for (var o in e) 
                            "bubbles" == o
                                ? i = !!e[o]
                                : n[o] = e[o];
                    return n.initEvent(t, i, !0),
                    u(n)
                }
            }(o),
            function (t) {
                t.fn.serializeArray = function () {
                    var e,
                        n,
                        i = [];
                    return t([].slice.call(this.get(0).elements)).each(function () {
                        e = t(this),
                        n = e.attr("type"),
                        "fieldset" != this
                            .nodeName
                            .toLowerCase() && !this.disabled && "submit" != n && "reset" != n && "button" != n && ("radio" != n && "checkbox" != n || this.checked) && i.push({
                            name: e.attr("name"),
                            value: e.val()
                        })
                    }),
                    i
                },
                t.fn.serialize = function () {
                    var t = [];
                    return this
                        .serializeArray()
                        .forEach(function (e) {
                            t.push(encodeURIComponent(e.name) + "=" + encodeURIComponent(e.value))
                        }),
                    t.join("&")
                },
                t.fn.submit = function (e) {
                    if (e) 
                        this.bind("submit", e);
                    else if (this.length) {
                        var n = t.Event("submit");
                        this
                            .eq(0)
                            .trigger(n),
                        n.isDefaultPrevented() || this
                            .get(0)
                            .submit()
                    }
                    return this
                }
            }(o),
            function (t) {
                "__proto__" in {} || t.extend(t.zepto, {
                    Z: function (e, n) {
                        return e = e || [],
                        t.extend(e, t.fn),
                        e.selector = n || "",
                        e.__Z = !0,
                        e
                    },
                    isZ: function (e) {
                        return "array" === t.type(e) && "__Z" in e
                    }
                });
                try {
                    getComputedStyle(void 0)
                } catch (e) {
                    var n = getComputedStyle;
                    window.getComputedStyle = function (t) {
                        try {
                            return n(t)
                        } catch (e) {
                            return null
                        }
                    }
                }
            }(o),
            function (t) {
                function e(e) {
                    return e = t(e),
                    !(!e.width() && !e.height()) && "none" !== e.css("display")
                }
                function n(t, e) {
                    t = t.replace(/=#\]/g, '="#"]');
                    var n,
                        i,
                        o = s.exec(t);
                    if (o && o[2] in a && (n = a[o[2]], i = o[3], t = o[1], i)) {
                        var r = Number(i);
                        i = isNaN(r)
                            ? i.replace(/^["']|["']$/g, "")
                            : r
                    }
                    return e(t, n, i)
                }
                var i = t.zepto,
                    o = i.qsa,
                    r = i.matches,
                    a = t.expr[":"] = {
                        visible: function () {
                            return e(this)
                                ? this
                                : void 0
                        },
                        hidden: function () {
                            return e(this)
                                ? void 0
                                : this
                        },
                        selected: function () {
                            return this.selected
                                ? this
                                : void 0
                        },
                        checked: function () {
                            return this.checked
                                ? this
                                : void 0
                        },
                        parent: function () {
                            return this.parentNode
                        },
                        first: function (t) {
                            return 0 === t
                                ? this
                                : void 0
                        },
                        last: function (t, e) {
                            return t === e.length - 1
                                ? this
                                : void 0
                        },
                        eq: function (t, e, n) {
                            return t === n
                                ? this
                                : void 0
                        },
                        contains: function (e, n, i) {
                            return t(this)
                                .text()
                                .indexOf(i) > -1
                                ? this
                                : void 0
                        },
                        has: function (t, e, n) {
                            return i
                                .qsa(this, n)
                                .length
                                ? this
                                : void 0
                        }
                    },
                    s = RegExp("(.*):(\\w+)(?:\\(([^)]+)\\))?$\\s*"),
                    c = /^\s*>/,
                    u = "Zepto" + + new Date;
                i.qsa = function (e, r) {
                    return n(r, function (n, a, s) {
                        try {
                            var l;
                            !n && a
                                ? n = "*"
                                : c.test(n) && (l = t(e).addClass(u), n = "." + u + " " + n);
                            var f = o(e, n)
                        } catch (d) {
                            throw console.error("error performing selector: %o", r),
                            d
                        } finally {
                            l && l.removeClass(u)
                        }
                        return a
                            ? i.uniq(t.map(f, function (t, e) {
                                return a.call(t, e, f, s)
                            }))
                            : f
                    })
                },
                i.matches = function (t, e) {
                    return n(e, function (e, n, i) {
                        return !(e && !r(t, e) || n && n.call(t, null, i) !== t)
                    })
                }
            }(o)
        }, {}
    ]
}, {}, [2]);