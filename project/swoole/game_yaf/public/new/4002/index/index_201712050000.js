var _typeof2 = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator
    ? function (t) {
        return typeof t
    }
    : function (t) {
        return t && "function" == typeof Symbol && t.constructor === Symbol && t !== Symbol.prototype
            ? "symbol"
            : typeof t
    };
!function t(o, n, e) {
    function a(l, d) {
        if (!n[l]) {
            if (!o[l]) {
                var c = "function" == typeof require && require;
                if (!d && c) 
                    return c(l, !0);
                if (i) 
                    return i(l, !0);
                var s = new Error("Cannot find module '" + l + "'");
                throw s.code = "MODULE_NOT_FOUND",
                s
            }
            var r = n[l] = {
                exports: {}
            };
            o[l][0].call(r.exports, function (t) {
                var n = o[l][1][t];
                return a(n
                    ? n
                    : t)
            }, r, r.exports, t, o, n, e)
        }
        return n[l].exports
    }
    for (var i = "function" == typeof require && require, l = 0; l < e.length; l++) 
        a(e[l]);
    return a
}({
    1: [
        function (t, o, n) {
            !function (t) {
                var o = function (t) {
                    return this.prize
                        ? '<div class="modal-dinge modal-container1">\n\t\t\t\t\t    <span class="modal-clo' +
                            'se" db-exposure=' + t.page1.st_info_dpm_exposure + "\n\t\t\t\t\t    db-click=" + t.page1.st_info_dpm_btn_close + '></span>\n\t\t\t\t\t    <div class="modal-dialog">\n\t\t\t\t\t      <div class="' +
                                'modal-body" db-click=' + t.page1.st_info_dpm_img_click + '>\n\t\t\t\t\t        <div class="modal-amount">' + t.amount + '</div>\n\t\t\t\t\t        <i class="modal-coin2"></i>\n\t\t\t\t\t      </div>\n' +
                                '\t\t\t\t\t      <div class="modal-btn" db-click=' + t.page1.st_info_dpm_btn_get + '></div>\n\t\t\t\t\t      <div class="modal-tip">请在24小时内领取喔，逾期作废</div>\n\t\t\t\t' +
                                '\t    </div>\n\t\t\t\t\t  </div>'
                        : ""
                };
                n.init = o
            }(Zepto)
        }, {}
    ],
    2: [
        function (t, o, n) {
            !function (t) {
                var o = function (t) {
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
                n.init = o
            }(Zepto)
        }, {}
    ],
    3: [
        function (t, o, n) {
            var e = "function" == typeof Symbol && "symbol" === _typeof2(Symbol.iterator)
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
            !function (o) {
                var n = function (t) {
                        new a(t)
                    },
                    a = function (n) {
                        if ("object" === ("undefined" == typeof n
                            ? "undefined"
                            : e(n))) {
                            var a = {},
                                i = this;
                            if (n.result && n.result.lottery) {
                                var l = n.result.lottery;
                                switch (a = {
                                    amount: l.amount,
                                    page1: l.page1,
                                    page2: l.page2,
                                    page3: l.page3,
                                    aliAccount: l.aliAccount || "",
                                    aliName: l.aliName || "",
                                    detailContactInfo: n.result.detailContactInfo || {}
                                }, l.subType) {
                                    case 1:
                                        i.tpl1 = t("./dinge/tpl1").init,
                                        i.tpl2 = t("./dinge/tpl2").init;
                                        break;
                                    case 2:
                                        i.tpl1 = t("./random/tpl1").init,
                                        i.tpl2 = t("./random/tpl2").init;
                                        break;
                                    default:
                                        i.tpl1 = t("./random/tpl1").init,
                                        i.tpl2 = t("./random/tpl2").init
                                }
                                i.tplResult = t("./result/tpl").init,
                                i.result = n.result,
                                i.callback = n.callback
                            }
                            this.prize = n.prize || {},
                            this.prize = o.extend(!0, a, this.prize),
                            o("body")
                                .append(i.tpl1(i.prize))
                                .append(i.tpl2(i.prize)),
                            document.ontouchmove = function (t) {
                                t.preventDefault()
                            },
                            n.showPage2 && (o(".modal-container1").hide(), o(".modal-container2").show()),
                            i.exposure(),
                            i.events()
                        } else 
                            console.warn("参数错误")
                    };
                a.prototype.events = function () {
                    var t = this;
                    t.hasClick = !1,
                    o(".modal-dinge, .modal-random").css("height", o(window).height());
                    var n = o(".modal-container1"),
                        e = o(".modal-container2");
                    n.on("click", ".modal-body, .modal-btn", function () {
                        n.hide(),
                        e.show(),
                        t.exposure()
                    }),
                    e.on("click", ".modal-btn", function () {
                        t.check(),
                        t.status && !t.hasClick && (t.hasClick = !0, t.accountApi(function (n) {
                            switch (t.hasClick = !1, n.data.result) {
                                case "TA-0000000":
                                case "TA-0200001":
                                case "TA-0200002":
                                case "TA-0200003":
                                    t.dbClickBtn(),
                                    e.hide(),
                                    o("body").append(t.tplResult(t.prize, n.data)),
                                    !t.prize.hideBlock && t.getRecommend(),
                                    setTimeout(function () {
                                        t.exposure()
                                    }, 500);
                                    break;
                                case "TA-0200004":
                                case "TA-0200005":
                                    t.showTip(n.data.resultMsg)
                            }
                        }))
                    }),
                    o("body")
                        .off("click.modalClose")
                        .on("click.modalClose", ".modal-close", function () {
                            n.remove(),
                            e.remove(),
                            document.ontouchmove = null,
                            o(".modal-result").remove();
                            var a = t.callback;
                            a && a.close && a.close()
                        }),
                    e.on("focus", "input", function () {
                        t.hideTip(),
                        o(".modal-container1,.modal-container2").css("position", "absolute")
                    }),
                    e.on("blur", "input", function () {
                        o(".modal-container1,.modal-container2").css("position", "fixed")
                    })
                },
                a.prototype.exposure = function () {
                    setTimeout(function () {
                        window.DB && window.DB.exposure && window
                            .DB
                            .exposure
                            .initLog()
                    }, 100)
                },
                a.prototype.showTip = function (t) {
                    t
                        ? o(".modal-container2")
                            .find(".modal-tip")
                            .text(t)
                            .show()
                        : o(".modal-container2")
                            .find(".modal-tip")
                            .show()
                },
                a.prototype.hideTip = function () {
                    o(".modal-container2")
                        .find(".modal-tip")
                        .hide()
                },
                a.prototype.check = function () {
                    var t = this,
                        n = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"),
                        e = new RegExp("^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\\d{8})$"),
                        a = new RegExp("^[一-龥]{2,4}$"),
                        i = o(".modal-account")[0],
                        l = o(".modal-name")[0];
                    return n.test(i.value) || e.test(i.value)
                        ? a.test(l.value)
                            ? void(t.status = !0)
                            : (t.showTip("请输入有效的姓名"), void(t.status = !1))
                        : (t.showTip("请输入有效的账号"), void(t.status = !1))
                },
                a.prototype.dbClickBtn = function (t) {
                    var o = JSON.parse(this.prize.page2.st_info_dpm_btn_get);
                    o.domain4Web && this.sendApi({
                        domain: o.domain4Web,
                        url: o.url,
                        data: o
                    }, function () {
                        t && t()
                    })
                },
                a.prototype.accountApi = function (t) {
                    var n = this;
                    o.ajax({
                        url: "/alipay/transferToAccount",
                        type: "post",
                        dataType: "json",
                        data: {
                            orderId: n.result.orderId,
                            account: o(".modal-account")[0].value,
                            name: o(".modal-name")[0].value,
                            amount: n.result.lottery.amount
                        },
                        success: function (o) {
                            o.success && t && t(o)
                        },
                        error: function () {
                            console.log("transferToAccount error")
                        }
                    })
                },
                a.prototype.getRecommend = function () {
                    var t = this;
                    o.ajax({
                        url: "/activity/getRecommend",
                        type: "post",
                        dataType: "json",
                        data: {
                            id: t.getparams("id") || t.result.activityId,
                            login: t.getparams("login") || "normal",
                            appKey: t.getparams("appKey") || null,
                            deviceId: t.getparams("deviceId") || null,
                            slotId: t.getparams("slotId") || null,
                            layerId: 1 === t.result.lottery.subType
                                ? window.dingeAlipay
                                : window.randomAlipay,
                            recommendType: 2,
                            id: this_id,
                            random: this_random
                        },
                        success: function (t) {
                            t.success && (t.data.block1
                                ? (o(".block1").attr("href", t.data.block1.actUrl), o(".block1").find(".recommend-img").attr("src", t.data.block1.bannerUrl), t.data.block2
                                    ? (o(".block2").attr("href", t.data.block2.actUrl), o(".block2").find(".recommend-img").attr("src", t.data.block2.bannerUrl))
                                    : o(".block2").hide())
                                : o(".block1, block2").hide())
                        },
                        error: function () {
                            console.log("get recommend queue error")
                        }
                    })
                },
                a.prototype.getparams = function (t) {
                    var o = "[\\?&]" + t + "=([^&#]*)",
                        n = new RegExp(o),
                        e = n.exec(location.href);
                    return null === e
                        ? ""
                        : e[1]
                },
                a.prototype.sendApi = function (t, n, e, a) {
                    try {
                        var i = JSON.stringify(t);
                        if (i.indexOf("iframe") !== -1) 
                            return
                    } catch (l) {
                        console.log("数据异常:" + (l || ""))
                    }
                    var d = t.domain || "",
                        c = t.url;
                    delete t.domain,
                    delete t.url,
                    t.data && t.data.domain && delete t.data.domain,
                    o.ajax({
                        url: d + c,
                        data: t.data,
                        dataType: "jsonp",
                        type: t.type || "post",
                        jsonpCallback: "tracks",
                        complete: function () {
                            n && n()
                        },
                        success: function (t) {
                            e && e(t)
                        },
                        error: function (t) {
                            a && a(t)
                        }
                    })
                },
                window.showAlipayPrize = n
            }(Zepto)
        }, {
            "./dinge/tpl1": 1,
            "./dinge/tpl2": 2,
            "./random/tpl1": 4,
            "./random/tpl2": 5,
            "./result/tpl": 6
        }
    ],
    4: [
        function (t, o, n) {
            !function (t) {
                var o = function (t) {
                    return this.prize
                        ? '<div class="modal-random modal-container1">\n\t\t\t\t\t    <span class="modal-cl' +
                            'ose" db-exposure=' + t.page1.st_info_dpm_exposure + "\n\t\t\t\t\t    db-click=" + t.page1.st_info_dpm_btn_close + '></span>\n\t\t\t\t\t    <div class="modal-dialog">\n\t\t\t\t\t      <div class="' +
                                'modal-body" db-click=' + t.page1.st_info_dpm_img_click + '></div>\n\t\t\t\t\t      <i class="modal-hand1"></i>\n\t\t\t\t\t      <i class="' +
                                'modal-hand2"></i>\n\t\t\t\t\t      <i class="modal-coin1"></i>\n\t\t\t\t\t      ' +
                                '<i class="modal-coin2"></i>\n\t\t\t\t\t    </div>\n\t\t\t\t\t  </div>'
                        : ""
                };
                n.init = o
            }(Zepto)
        }, {}
    ],
    5: [
        function (t, o, n) {
            !function (t) {
                var o = function (t) {
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
                n.init = o
            }(Zepto)
        }, {}
    ],
    6: [
        function (t, o, n) {
            !function (t) {
                var o = function (t, o) {
                    if (!this.prize) 
                        return "";
                    var n = void 0;
                    n = "TA-0000000" === o.result
                        ? '<div class="modal-desc modal-success">已经到账啦！</div>'
                        : '<div class="modal-desc">正在火速处理中，查看进度请点击<a href="/activity/indexRecord?vmName=lis' +
                            't"><span class="result-btn" db-click=' + t.page3.st_info_dpm_btn_get + ">我的奖品</span></a></div>";
                    var e = this.prize.hideBlock
                            ? ""
                            : '<div class="more">更多福利</div><a class="block1"><img src="" class="recommend-img">' +
                                '</a><a class="block2"><img src="" class="recommend-img"></a>',
                        a = this.prize.detailContactInfo.openOptionDetail
                            ? '<div class="modal-contact">客服：<i class="icon-phone"></i>' + t.detailContactInfo.optionDetailPhone + "</div>"
                            : "";
                    return '<div class="modal-result">\n              <span class="modal-close" db-exposure=' + t.page3.st_info_dpm_exposure + "\n              db-click=" + t.page3.st_info_dpm_btn_close + '></span>\n              <div class="modal-dialog">\n                <div class="' +
                            'modal-animate">\n                  <i class="modal-coin"></i>\n                 ' +
                            ' <div class="modal-head">\n                    ' + n + "\n                    " + a + "\n                  </div>\n                  " + e + "\n                </div>\n              </div>\n            </div>"
                };
                n.init = o
            }(Zepto)
        }, {}
    ]
}, {}, [3]);