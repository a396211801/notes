var _typeof2 = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (t) {
        return typeof t
    } : function (t) {
        return t && "function" == typeof Symbol && t.constructor === Symbol && t !== Symbol.prototype ? "symbol" : typeof t
    };
!function t(e, n, o) {
    function i(r, s) {
        if (!n[r]) {
            if (!e[r]) {
                var l = "function" == typeof require && require;
                if (!s && l)return l(r, !0);
                if (a)return a(r, !0);
                var c = new Error("Cannot find module '" + r + "'");
                throw c.code = "MODULE_NOT_FOUND", c
            }
            var d = n[r] = {exports: {}};
            e[r][0].call(d.exports, function (t) {
                var n = e[r][1][t];
                return i(n ? n : t)
            }, d, d.exports, t, e, n, o)
        }
        return n[r].exports
    }

    for (var a = "function" == typeof require && require, r = 0; r < o.length; r++)i(o[r]);
    return i
}({
    1: [function (t, e, n) {
        !function (t) {
            var e = function (t) {
                return this.prize ? '<div class="modal-dinge modal-container1">\n\t\t\t\t\t    <span class="modal-close" db-exposure=' + t.page1.st_info_dpm_exposure + "\n\t\t\t\t\t    db-click=" + t.page1.st_info_dpm_btn_close + '></span>\n\t\t\t\t\t    <div class="modal-dialog">\n\t\t\t\t\t      <div class="modal-body" db-click=' + t.page1.st_info_dpm_img_click + '>\n\t\t\t\t\t        <div class="modal-amount">' + t.amount + '</div>\n\t\t\t\t\t        <i class="modal-coin2"></i>\n\t\t\t\t\t      </div>\n\t\t\t\t\t      <div class="modal-btn" db-click=' + t.page1.st_info_dpm_btn_get + '></div>\n\t\t\t\t\t      <div class="modal-tip">请在24小时内领取喔，逾期作废</div>\n\t\t\t\t\t    </div>\n\t\t\t\t\t  </div>' : ""
            };
            n.init = e
        }(Zepto)
    }, {}],
    2: [function (t, e, n) {
        !function (t) {
            var e = function (t) {
                return this.prize ? '<div class="modal-dinge modal-container2">\n\t\t\t\t\t    <span class="modal-close" db-exposure=' + t.page2.st_info_dpm_exposure + "\n\t\t\t\t\t    db-click=" + t.page2.st_info_dpm_btn_close + '></span>\n\t\t\t\t\t    <div class="modal-dialog">\n\t\t\t\t\t      <div class="modal-body">\n\t\t\t\t\t        <i class="modal-coin2"></i>\n\t\t\t\t\t        <input type="text" class="modal-account" placeholder="输入支付宝账号领取红包" value="' + t.aliAccount + '">\n\t\t\t\t\t\t\t\t\t<input type="text" class="modal-name" placeholder="输入真实姓名" value="' + t.aliName + '">\n\t\t\t\t\t\t\t\t\t<div class="modal-tip"></div>\n\t\t\t\t\t      </div>\n\t\t\t\t\t      <div class="modal-btn"></div>\n\t\t\t\t\t    </div>\n\t\t\t\t\t  </div>' : ""
            };
            n.init = e
        }(Zepto)
    }, {}],
    3: [function (t, e, n) {
        var o = "function" == typeof Symbol && "symbol" === _typeof2(Symbol.iterator) ? function (t) {
                return "undefined" == typeof t ? "undefined" : _typeof2(t)
            } : function (t) {
                return t && "function" == typeof Symbol && t.constructor === Symbol && t !== Symbol.prototype ? "symbol" : "undefined" == typeof t ? "undefined" : _typeof2(t)
            };
        !function (e) {
            var n = function (t) {
                new i(t)
            }, i = function (n) {
                if ("object" === ("undefined" == typeof n ? "undefined" : o(n))) {
                    var i = {}, a = this;
                    if (n.result && n.result.lottery) {
                        var r = n.result.lottery;
                        switch (i = {
                            amount: r.amount,
                            page1: r.page1,
                            page2: r.page2,
                            page3: r.page3,
                            aliAccount: r.aliAccount || "",
                            aliName: r.aliName || ""
                        }, r.subType) {
                            case 1:
                                a.tpl1 = t("./dinge/tpl1").init, a.tpl2 = t("./dinge/tpl2").init;
                                break;
                            case 2:
                                a.tpl1 = t("./random/tpl1").init, a.tpl2 = t("./random/tpl2").init;
                                break;
                            default:
                                a.tpl1 = t("./random/tpl1").init, a.tpl2 = t("./random/tpl2").init
                        }
                        a.tplResult = t("./tplResult").init, a.result = n.result, a.callback = n.callback
                    }
                    this.prize = n.prize || {}, this.prize = e.extend(!0, i, this.prize), e("body").append(a.tpl1(a.prize)).append(a.tpl2(a.prize)), document.ontouchmove = function (t) {
                        t.preventDefault()
                    }, n.showPage2 && (e(".modal-container1").hide(), e(".modal-container2").show()), a.exposure(), a.events()
                } else console.warn("参数错误")
            };
            i.prototype.events = function () {
                var t = this;
                t.hasClick = !1;
                var n = e(".modal-container1"), o = e(".modal-container2");
                n.on("click", ".modal-body, .modal-btn", function () {
                    n.hide(), o.show(), t.exposure()
                }), o.on("click", ".modal-btn", function () {
                    t.check(), t.status && !t.hasClick && (t.hasClick = !0, t.accountApi(function (n) {
                        switch (t.hasClick = !1, n.data.result) {
                            case"TA-0000000":
                            case"TA-0200001":
                            case"TA-0200002":
                            case"TA-0200003":
                                t.dbClickBtn(), o.hide(), e("body").append(t.tplResult(t.prize, n.data)), t.getRecommend(), setTimeout(function () {
                                    t.exposure()
                                }, 500);
                                break;
                            case"TA-0200004":
                            case"TA-0200005":
                                t.showTip(n.data.resultMsg)
                        }
                    }))
                }), e("body").on("click", ".modal-close", function () {
                    n.remove(), o.remove(), document.ontouchmove = null, e(".modal-result").remove();
                    var i = t.callback;
                    i && i.close && i.close()
                }), o.on("focus", "input", function () {
                    t.hideTip(), e(".modal-container1,.modal-container2").css("position", "absolute")
                }), o.on("blur", "input", function () {
                    e(".modal-container1,.modal-container2").css("position", "fixed")
                })
            }, i.prototype.exposure = function () {
                setTimeout(function () {
                    window.DB && window.DB.exposure && window.DB.exposure.initLog()
                }, 100)
            }, i.prototype.showTip = function (t) {
                t ? e(".modal-container2").find(".modal-tip").text(t).show() : e(".modal-container2").find(".modal-tip").show()
            }, i.prototype.hideTip = function () {
                e(".modal-container2").find(".modal-tip").hide()
            }, i.prototype.check = function () {
                var t = this, n = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"), o = new RegExp("^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\\d{8})$"), i = new RegExp("^[一-龥]{2,4}$"), a = e(".modal-account")[0], r = e(".modal-name")[0];
                return n.test(a.value) || o.test(a.value) ? i.test(r.value) ? void(t.status = !0) : (t.showTip("请输入有效的姓名"), void(t.status = !1)) : (t.showTip("请输入有效的账号"), void(t.status = !1))
            }, i.prototype.dbClickBtn = function (t) {
                var e = JSON.parse(this.prize.page2.st_info_dpm_btn_get);
                e.domain4Web && this.sendApi({domain: e.domain4Web, url: e.url, data: e}, function () {
                    t && t()
                })
            }, i.prototype.accountApi = function (t) {
                var n = this;
                e.ajax({
                    url: "/alipay/transferToAccount",
                    type: "post",
                    dataType: "json",
                    data: {
                        orderId: n.result.orderId,
                        account: e(".modal-account")[0].value,
                        name: e(".modal-name")[0].value,
                        amount: n.result.lottery.amount,
                        isAlipay: !0
                    },
                    success: function (e) {
                        e.success && t && t(e)
                    },
                    error: function () {
                        console.log("transferToAccount error")
                    }
                })
            }, i.prototype.getRecommend = function () {
                var t = this;
                e.ajax({
                    url: "/activity/getRecommend",
                    type: "get",
                    dataType: "json",
                    data: {
                        id: t.getparams("id") || t.result.activityId,
                        login: t.getparams("login") || "normal",
                        appKey: t.getparams("appKey") || null,
                        deviceId: t.getparams("deviceId") || null,
                        isAlipay: !0
                    },
                    success: function (t) {
                        t.success && (t.data.block1 ? (e(".block1").attr("href", t.data.block1.actUrl), e(".block1").find(".recommend-img").attr("src", t.data.block1.bannerUrl), t.data.block2 ? (e(".block2").attr("href", t.data.block2.actUrl), e(".block2").find(".recommend-img").attr("src", t.data.block2.bannerUrl)) : e(".block2").hide()) : e(".block1, block2").hide())
                    },
                    error: function () {
                        console.log("get recommend queue error")
                    }
                })
            }, i.prototype.getparams = function (t) {
                var e = "[\\?&]" + t + "=([^&#]*)", n = new RegExp(e), o = n.exec(location.href);
                return null === o ? "" : o[1]
            }, i.prototype.sendApi = function (t, n, o, i) {
                try {
                    var a = JSON.stringify(t);
                    if (a.indexOf("iframe") !== -1)return
                } catch (r) {
                    console.log("数据异常:" + (r || ""))
                }
                var s = t.domain || "", l = t.url;
                delete t.domain, delete t.url, t.data && t.data.domain && delete t.data.domain, e.ajax({
                    url: s + l,
                    data: t.data,
                    dataType: "jsonp",
                    type: t.type || "get",
                    jsonpCallback: "tracks",
                    complete: function () {
                        n && n()
                    },
                    success: function (t) {
                        o && o(t)
                    },
                    error: function (t) {
                        i && i(t)
                    }
                })
            }, window.showAlipayPrize = n
        }(Zepto)
    }, {"./dinge/tpl1": 1, "./dinge/tpl2": 2, "./random/tpl1": 4, "./random/tpl2": 5, "./tplResult": 6}],
    4: [function (t, e, n) {
        !function (t) {
            var e = function (t) {
                return this.prize ? '<div class="modal-random modal-container1">\n\t\t\t\t\t    <span class="modal-close" db-exposure=' + t.page1.st_info_dpm_exposure + "\n\t\t\t\t\t    db-click=" + t.page1.st_info_dpm_btn_close + '></span>\n\t\t\t\t\t    <div class="modal-dialog">\n\t\t\t\t\t      <div class="modal-body" db-click=' + t.page1.st_info_dpm_img_click + '></div>\n\t\t\t\t\t      <i class="modal-hand1"></i>\n\t\t\t\t\t      <i class="modal-hand2"></i>\n\t\t\t\t\t      <i class="modal-coin1"></i>\n\t\t\t\t\t      <i class="modal-coin2"></i>\n\t\t\t\t\t    </div>\n\t\t\t\t\t  </div>' : ""
            };
            n.init = e
        }(Zepto)
    }, {}],
    5: [function (t, e, n) {
        !function (t) {
            var e = function (t) {
                return this.prize ? '<div class="modal-random modal-container2">\n              <span class="modal-close" db-exposure=' + t.page2.st_info_dpm_exposure + "\n              db-click=" + t.page2.st_info_dpm_btn_close + '></span>\n              <div class="modal-dialog">\n                <div class="modal-body">\n                  <div class="modal-amount">' + t.amount + '<span>元</span></div>\n                  <input type="text" class="modal-account" placeholder="输入支付宝账号领取红包" value="' + t.aliAccount + '">\n                  <input type="text" class="modal-name" placeholder="输入真实姓名" value="' + t.aliName + '">\n                  <div class="modal-tip"></div>\n                  <div class="modal-btn"></div>\n                </div>\n              </div>\n            </div>' : ""
            };
            n.init = e
        }(Zepto)
    }, {}],
    6: [function (t, e, n) {
        !function (t) {
            var e = function (t, e) {
                if (!this.prize)return "";
                var n = void 0;
                return n = "TA-0000000" === e.result ? '<div class="modal-desc modal-success">已经到账啦！</div>' : '<div class="modal-desc">正在火速处理中，查看进度请点击<a href="/activity/indexRecord?vmName=list"><span class="result-btn" db-click=' + t.page3.st_info_dpm_btn_get + ">我的奖品</span></a></div>", '<div class="modal-result">\n              <span class="modal-close" db-exposure=' + t.page3.st_info_dpm_exposure + "\n              db-click=" + t.page3.st_info_dpm_btn_close + '></span>\n              <div class="modal-dialog">\n                <div class="modal-animate">\n                  <i class="modal-coin"></i>\n                  <div class="modal-head">\n                    ' + n + '\n                    <div class="modal-contact">客服：<i class="icon-qq"></i>4000066855 <i class="icon-phone"></i>400-090-0208</div>\n                  </div>\n                  <div class="more">更多福利</div>\n                  <a class="block1"><img src="" class="recommend-img"></a>\n                  <a class="block2"><img src="" class="recommend-img"></a>\n                </div>\n              </div>\n            </div>'
            };
            n.init = e
        }(Zepto)
    }, {}],
    7: [function (t, e, n) {
        !function () {
            var e = t("../../../unit/lib/lib-template/1.0.0/template");
            t("../../../unit/common/js/scrollload/scrollload"), t("../../../module/showAlipayPrize/index");
            var n = !0, o = 1;
            loadingStatus = !1;
            var a = [], r = "/activity/getRecordList", s = "/activity/result", l = {
                loaded: function (t) {
                    n = t, loadingStatus = !1, $(".loading-img").hide(), $(".loading-tip").html(""), this.events()
                }, loadederr: function () {
                    loadingStatus = !1, $(".loading-img").hide(), $(".loading-tip").html('加载失败，点击<span class="retry">重试</span>'), $(".loading").bind("click", function () {
                        l.getMoreItems(), $(".loading").unbind("click")
                    })
                }, loading: function () {
                    if (!loadingStatus) {
                        if (loadingStatus = !0, 0 === $(".loading").length) {
                            var t = '<div class="loading"><img class="loading-img" src="' + host + '/webapp/img/loading.gif"><span class="loading-tip">正在加载中</span></div>';
                            $("body").append(t)
                        }
                        n ? ($(".loading-img").show(), $(".loading-tip").html("正在加载中"), o++, l.getMoreItems()) : ($(".loading-img").hide(), $(".loading-tip").html('已经没有更多了！<a href="./indexRecord?vmName=overdue" class="overdue">查看已过期的奖品></a>'))
                    }
                }, events: function () {
                    var t = this;
                    $("body").on("click", ".item", function () {
                        var e = $(this).data("status"), n = $(this).data("orderid");
                        switch (e) {
                            case"pending":
                                window.location.href = "/activity/indexRecord?vmName=pending&orderId=" + n;
                                break;
                            case"error":
                                t.clickOrderId = n, $(".orderError .error-top").text("您填写的支付宝信息错误，请检查重填。"), $(".orderError .btn-fill").text("去重填"), $(".orderError").show();
                                break;
                            case"wait":
                                t.clickOrderId = n, $(".orderError .error-top").text("您有一份待领取的支付宝红包。"), $(".orderError .btn-fill").text("去领取"), $(".orderError").show();
                                break;
                            default:
                                window.location.href = "/activity/indexRecord?vmName=detail&orderId=" + n
                        }
                    }), $(".btn-cancle").on("click", function () {
                        $(".orderError").hide()
                    }), $(".btn-fill").on("click", function () {
                        t.getResult()
                    })
                }, getMoreItems: function () {
                    var t = this;
                    c({url: r}, {currentPage: o, random: this_random}, function (e) {
                        if (e.success) {
                            var r = e.data, s = [];
                            if (0 === r.list.length)return void $(".noRecord").show();
                            for (i in r.list)if (parseInt(r.list[i].remainDay) >= 0) {
                                switch (r.list[i].status) {
                                    case 1:
                                        r.list[i].resStatus = "wait";
                                        break;
                                    case 4:
                                    case 7:
                                        r.list[i].resStatus = "pending";
                                        break;
                                    case 3:
                                        r.list[i].resStatus = "error"
                                }
                                s.push(r.list[i])
                            }
                            var l = {data: {list: []}};
                            l.data.list = s, a.length = a.length + s.length;
                            for (i in s)s[i].showTooltip = null === s[i].status && parseInt(s[i].remainDay) <= 7;
                            if (n = !!r.totalCount && Math.ceil(r.totalCount / 50) != o, d(l, $("#obj-item").html(), $(".obj-list")), t.loaded(n), a.length < 7 || 0 == s.length)if (console.log(s), 0 === $(".loading").length) {
                                var c = '<div class="loading"><span class="loading-tip">已经没有更多了！<a href="./indexRecord?vmName=overdue" class="overdue">查看已过期的奖品></a></span></div>';
                                $("body").append(c)
                            } else 0 === $(".overdue").length && $(".loading-tip").html('已经没有更多了！<a href="./indexRecord?vmName=overdue" class="overdue">查看已过期的奖品></a>');
                            window.scrollLoad.scrollLoadImg.init()
                        } else $(".networkError").show()
                    }, function () {
                        t.loadederr()
                    })
                }, getResult: function () {
                    var t = this;
                    c({url: s, type: "post"}, {orderId: t.clickOrderId}, function (t) {
                        $(".orderError").hide(), t.success ? window.showAlipayPrize({
                                result: t.data,
                                callback: {
                                    close: function () {
                                        window.location.reload()
                                    }
                                }
                            }) : $(".networkError").show()
                    })
                }
            }, c = function (t, e, n, o) {
                $.ajax({
                    url: t.url, type: t.type || "get", dataType: "json", data: e, success: n, error: function (t) {
                        console.log(t.message || "数据异常，请稍后重试"), o && o()
                    }, complete: function (t) {
                    }
                })
            }, d = function (t, n, o) {
                if (t) {
                    console.log(t);
                    var i = e(n, t);
                    return void o.append(i)
                }
            };
            l.getMoreItems(), window.scrollLoad.scrollLoadPage.init({
                bottom: 10,
                getMoreItems: l.loading
            }), FastClick(document.body)
        }()
    }, {
        "../../../module/showAlipayPrize/index": 3,
        "../../../unit/common/js/scrollload/scrollload": 8,
        "../../../unit/lib/lib-template/1.0.0/template": 9
    }],
    8: [function (t, e, n) {
        !function (t) {
            var e = {attr: "data-url", timeout: null}, n = t(window), o = {
                init: function () {
                    this.getNode(), this.loading()
                }, _init: function () {
                    this.events()
                }, events: function () {
                    var t = this;
                    n.bind("scroll", function () {
                        clearTimeout(e.timeout), e.timeout = setTimeout(function () {
                            t.getNode(), t.loading()
                        }, 200)
                    })
                }, getNode: function () {
                    e.cache = [], t("[" + e.attr + "]").not("[is-load]").each(function () {
                        if (t(this).attr(e.attr)) {
                            var n = this.nodeName.toLowerCase(), o = t(this).attr(e.attr), i = {
                                obj: t(this),
                                tag: n,
                                url: o
                            };
                            e.cache.push(i)
                        }
                    })
                }, loading: function () {
                    var o = n.height(), i = n.width();
                    if (n.get(0) === window)var a = t(window).scrollTop(), r = t(window).scrollLeft(); else var a = n.offset().top, r = n.offset().left;
                    t.each(e.cache, function (t, e) {
                        var n, s, l, c, d = e.obj, p = e.tag, u = e.url;
                        d && (n = d.offset().top - (a + o), s = d.offset().top + d.height() - a, l = d.offset().left - (r + i), c = d.offset().left + d.width() - r, d.is(":visible") && n < 0 && s > 0 && l < 0 && c > 0 && (u ? ("img" === p ? d.attr("src", u) : d.css("background-image", "url(" + u + ")"), d.attr("is-load", !0)) : console.log("无地址，直接触发回调"), e.obj = null))
                    })
                }
            };
            o._init();
            var i = {
                bottom: 50, getMoreItems: function () {
                }
            }, a = {
                init: function (e) {
                    i = t.extend({}, i, e), this.scrollPage()
                }, scrollPage: function () {
                    var e = null;
                    n.bind("scroll", function () {
                        clearTimeout(e), e = setTimeout(function () {
                            var e = t(window).scrollTop(), n = t(window).height(), o = t(document).height(), a = i.bottom;
                            a + e >= o - n && i.getMoreItems()
                        }, 200)
                    })
                }
            };
            window.scrollLoad = {scrollLoadImg: o, scrollLoadPage: a}
        }($)
    }, {}],
    9: [function (t, e, n) {
        (function (t) {
            !function () {
                var n = function s() {
                    var t = [].slice.call(arguments);
                    return t.push(s.options), t[0].match(/^\s*#([\w:\-\.]+)\s*$/gim) && t[0].replace(/^\s*#([\w:\-\.]+)\s*$/gim, function (e, n) {
                        var o = document, i = o && o.getElementById(n);
                        t[0] = i ? i.value || i.innerHTML : e
                    }), s.documentHTML && (s.compile.call(s, s.documentHTML), s.documentHTML = ""), 1 == arguments.length ? s.compile.apply(s, t) : arguments.length >= 2 ? s.to_html.apply(s, t) : void 0
                }, o = {
                    escapehash: {
                        "<": "&lt;",
                        ">": "&gt;",
                        "&": "&amp;",
                        '"': "&quot;",
                        "'": "&#x27;",
                        "/": "&#x2f;"
                    }, escapereplace: function (t) {
                        return o.escapehash[t]
                    }, escaping: function (t) {
                        return "string" != typeof t ? t : t.replace(/[&<>"']/gim, this.escapereplace)
                    }, detection: function (t) {
                        return "undefined" == typeof t ? "" : t
                    }
                }, i = function (t) {
                    if ("undefined" != typeof console) {
                        if (console.warn)return void console.warn(t);
                        if (console.log)return void console.log(t)
                    }
                    throw t
                }, a = function (t, e) {
                    if (t = t !== Object(t) ? {} : t, t.__proto__)return t.__proto__ = e, t;
                    var n = function () {
                    }, o = Object.create ? Object.create(e) : new (n.prototype = e, n);
                    for (var i in t)t.hasOwnProperty(i) && (o[i] = t[i]);
                    return o
                }, r = function (t) {
                    var e, n, o, i = /^function\s*[^\(]*\(\s*([^\)]*)\)/m, a = /,/, r = /^\s*(_?)(\S+?)\1\s*$/, s = /^function[^{]+{([\s\S]*)}/m, l = [];
                    "function" == typeof t ? t.length && (e = t.toString()) : "string" == typeof t && (e = t), e = e.trim(), o = e.match(i), n = e.match(s)[1].trim();
                    for (var c = 0; c < o[1].split(a).length; c++) {
                        var d = o[1].split(a)[c];
                        d.replace(r, function (t, e, n) {
                            l.push(n)
                        })
                    }
                    return [l, n]
                };
                n.__cache = {}, n.version = "0.6.14", n.settings = {}, n.documentHTML = "", n.tags = {
                    operationOpen: "{@",
                    operationClose: "}",
                    interpolateOpen: "\\${",
                    interpolateClose: "}",
                    noneencodeOpen: "\\$\\${",
                    noneencodeClose: "}",
                    commentOpen: "\\{#",
                    commentClose: "\\}"
                }, n.options = {
                    cache: !0,
                    strip: !0,
                    errorhandling: !0,
                    detection: !0,
                    _method: a({__escapehtml: o, __throw: i, __juicer: n}, {})
                }, n.tagInit = function () {
                    var t = n.tags.operationOpen + "each\\s*([^}]*?)\\s*as\\s*(\\w*?)\\s*(,\\s*\\w*?)?" + n.tags.operationClose, e = n.tags.operationOpen + "\\/each" + n.tags.operationClose, o = n.tags.operationOpen + "if\\s*([^}]*?)" + n.tags.operationClose, i = n.tags.operationOpen + "\\/if" + n.tags.operationClose, a = n.tags.operationOpen + "else" + n.tags.operationClose, r = n.tags.operationOpen + "else if\\s*([^}]*?)" + n.tags.operationClose, s = n.tags.interpolateOpen + "([\\s\\S]+?)" + n.tags.interpolateClose, l = n.tags.noneencodeOpen + "([\\s\\S]+?)" + n.tags.noneencodeClose, c = n.tags.commentOpen + "[^}]*?" + n.tags.commentClose, d = n.tags.operationOpen + "each\\s*(\\w*?)\\s*in\\s*range\\(([^}]+?)\\s*,\\s*([^}]+?)\\)" + n.tags.operationClose, p = n.tags.operationOpen + "include\\s*([^}]*?)\\s*,\\s*([^}]*?)" + n.tags.operationClose, u = n.tags.operationOpen + "helper\\s*([^}]*?)\\s*" + n.tags.operationClose, f = "([\\s\\S]*?)", m = n.tags.operationOpen + "\\/helper" + n.tags.operationClose;
                    n.settings.forstart = new RegExp(t, "igm"), n.settings.forend = new RegExp(e, "igm"), n.settings.ifstart = new RegExp(o, "igm"), n.settings.ifend = new RegExp(i, "igm"), n.settings.elsestart = new RegExp(a, "igm"), n.settings.elseifstart = new RegExp(r, "igm"), n.settings.interpolate = new RegExp(s, "igm"), n.settings.noneencode = new RegExp(l, "igm"), n.settings.inlinecomment = new RegExp(c, "igm"), n.settings.rangestart = new RegExp(d, "igm"), n.settings.include = new RegExp(p, "igm"), n.settings.helperRegister = new RegExp(u + f + m, "igm")
                }, n.tagInit(), n.set = function (t, e) {
                    var n = this, o = function (t) {
                        return t.replace(/[\$\(\)\[\]\+\^\{\}\?\*\|\.]/gim, function (t) {
                            return "\\" + t
                        })
                    }, i = function (t, e) {
                        var i = t.match(/^tag::(.*)$/i);
                        return i ? (n.tags[i[1]] = o(e), void n.tagInit()) : void(n.options[t] = e)
                    };
                    if (2 === arguments.length)return void i(t, e);
                    if (t === Object(t))for (var a in t)t.hasOwnProperty(a) && i(a, t[a])
                }, n.register = function (t, e) {
                    var n = this.options._method;
                    return !n.hasOwnProperty(t) && (n[t] = e)
                }, n.unregister = function (t) {
                    var e = this.options._method;
                    if (e.hasOwnProperty(t))return delete e[t]
                }, n.template = function (e) {
                    var o = this;
                    this.options = e, this.__interpolate = function (t, e, n) {
                        var o, i = t.split("|"), a = i[0] || "";
                        return i.length > 1 && (t = i.shift(), o = i.shift().split(","), a = "_method." + o.shift() + ".call({}, " + [t].concat(o) + ")"), "<%= " + (e ? "_method.__escapehtml.escaping" : "") + "(" + (n && n.detection === !1 ? "" : "_method.__escapehtml.detection") + "(" + a + ")) %>"
                    }, this.__removeShell = function (t, e) {
                        var i = 0;
                        return t = t.replace(n.settings.helperRegister, function (t, e, o) {
                            var i = r(o), a = i[0], s = i[1], l = new Function(a.join(","), s);
                            return n.register(e, l), t
                        }).replace(n.settings.forstart, function (t, e, n, o) {
                            var n = n || "value", o = o && o.substr(1), a = "i" + i++;
                            return "<% ~function() {for(var " + a + " in " + e + ") {if(" + e + ".hasOwnProperty(" + a + ")) {var " + n + "=" + e + "[" + a + "];" + (o ? "var " + o + "=" + a + ";" : "") + " %>"
                        }).replace(n.settings.forend, "<% }}}(); %>").replace(n.settings.ifstart, function (t, e) {
                            return "<% if(" + e + ") { %>"
                        }).replace(n.settings.ifend, "<% } %>").replace(n.settings.elsestart, function (t) {
                            return "<% } else { %>"
                        }).replace(n.settings.elseifstart, function (t, e) {
                            return "<% } else if(" + e + ") { %>"
                        }).replace(n.settings.noneencode, function (t, n) {
                            return o.__interpolate(n, !1, e)
                        }).replace(n.settings.interpolate, function (t, n) {
                            return o.__interpolate(n, !0, e)
                        }).replace(n.settings.inlinecomment, "").replace(n.settings.rangestart, function (t, e, n, o) {
                            var a = "j" + i++;
                            return "<% ~function() {for(var " + a + "=" + n + ";" + a + "<" + o + ";" + a + "++) {{var " + e + "=" + a + "; %>"
                        }).replace(n.settings.include, function (t, e, n) {
                            return e.match(/^file\:\/\//gim) ? t : "<%= _method.__juicer(" + e + ", " + n + "); %>"
                        }), e && e.errorhandling === !1 || (t = "<% try { %>" + t, t += '<% } catch(e) {_method.__throw("Juicer Render Exception: "+e.message);} %>'), t
                    }, this.__toNative = function (t, e) {
                        return this.__convert(t, !e || e.strip)
                    }, this.__lexicalAnalyze = function (e) {
                        var o = [], i = [], a = "", r = ["if", "each", "_", "_method", "console", "break", "case", "catch", "continue", "debugger", "default", "delete", "do", "finally", "for", "function", "in", "instanceof", "new", "return", "switch", "this", "throw", "try", "typeof", "var", "void", "while", "with", "null", "typeof", "class", "enum", "export", "extends", "import", "super", "implements", "interface", "let", "package", "private", "protected", "public", "static", "yield", "const", "arguments", "true", "false", "undefined", "NaN"], s = function (t, e) {
                            if (Array.prototype.indexOf && t.indexOf === Array.prototype.indexOf)return t.indexOf(e);
                            for (var n = 0; n < t.length; n++)if (t[n] === e)return n;
                            return -1
                        }, l = function (e, a) {
                            if (a = a.match(/\w+/gim)[0], s(o, a) === -1 && s(r, a) === -1 && s(i, a) === -1) {
                                if ("undefined" != typeof window && "function" == typeof window[a] && window[a].toString().match(/^\s*?function \w+\(\) \{\s*?\[native code\]\s*?\}\s*?$/i))return e;
                                if ("undefined" != typeof t && "function" == typeof t[a] && t[a].toString().match(/^\s*?function \w+\(\) \{\s*?\[native code\]\s*?\}\s*?$/i))return e;
                                if ("function" == typeof n.options._method[a] || n.options._method.hasOwnProperty(a))return i.push(a), e;
                                if (a.match(/^\d+/gim))return e;
                                o.push(a)
                            }
                            return e
                        };
                        e.replace(n.settings.forstart, l).replace(n.settings.interpolate, l).replace(n.settings.ifstart, l).replace(n.settings.elseifstart, l).replace(n.settings.include, l).replace(/[\+\-\*\/%!\?\|\^&~<>=,\(\)\[\]]\s*([A-Za-z_0-9]+)/gim, l);
                        for (var c = 0; c < o.length; c++)a += "var " + o[c] + "=_." + o[c] + ";";
                        for (var c = 0; c < i.length; c++)a += "var " + i[c] + "=_method." + i[c] + ";";
                        return "<% " + a + " %>"
                    }, this.__convert = function (t, e) {
                        var n = [].join("");
                        return n += "'use strict';", n += "var _=_||{};", n += "var _out='';_out+='", n += e !== !1 ? t.replace(/\\/g, "\\\\").replace(/[\r\t\n]/g, " ").replace(/'(?=[^%]*%>)/g, "\t").split("'").join("\\'").split("\t").join("'").replace(/<%=(.+?)%>/g, "';_out+=$1;_out+='").split("<%").join("';").split("%>").join("_out+='") + "';return _out;" : t.replace(/\\/g, "\\\\").replace(/[\r]/g, "\\r").replace(/[\t]/g, "\\t").replace(/[\n]/g, "\\n").replace(/'(?=[^%]*%>)/g, "\t").split("'").join("\\'").split("\t").join("'").replace(/<%=(.+?)%>/g, "';_out+=$1;_out+='").split("<%").join("';").split("%>").join("_out+='") + "';return _out.replace(/[\\r\\n]\\s+[\\r\\n]/g, '\\r\\n');"
                    }, this.parse = function (t, e) {
                        var n = this;
                        return e && e.loose === !1 || (t = this.__lexicalAnalyze(t) + t), t = this.__removeShell(t, e), t = this.__toNative(t, e), this._render = new Function("_, _method", t), this.render = function (t, e) {
                            return e && e === o.options._method || (e = a(e, o.options._method)), n._render.call(this, t, e)
                        }, this
                    }
                }, n.compile = function (t, e) {
                    e && e === this.options || (e = a(e, this.options));
                    var n = this, o = {
                        get: function (t) {
                            return e.cachestore ? e.cachestore.get(t) : n.__cache[t]
                        }, set: function (t, o) {
                            return e.cachestore ? e.cachestore.set(t, o) : n.__cache[t] = o
                        }
                    };
                    try {
                        var r = o.get(t) ? o.get(t) : new this.template(this.options).parse(t, e);
                        return e && e.cache === !1 || o.set(t, r), r
                    } catch (s) {
                        return i("Juicer Compile Exception: " + s.message), {
                            render: function () {
                            }
                        }
                    }
                }, n.to_html = function (t, e, n) {
                    return n && n === this.options || (n = a(n, this.options)), this.compile(t, n).render(e, n._method)
                }, "undefined" != typeof t && "undefined" == typeof window && n.set("cache", !1), "undefined" != typeof document && document.body && (n.documentHTML = document.body.innerHTML), "undefined" != typeof e && e.exports ? e.exports = n : this.juicer = n
            }()
        }).call(this, "undefined" != typeof global ? global : "undefined" != typeof self ? self : "undefined" != typeof window ? window : {})
    }, {}]
}, {}, [7]);