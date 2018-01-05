var _typeof2 = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator
    ? function (o) {
        return typeof o
    }
    : function (o) {
        return o && "function" == typeof Symbol && o.constructor === Symbol && o !== Symbol.prototype
            ? "symbol"
            : typeof o
    };
!function o(t, e, n) {
    function a(l, s) {
        if (!e[l]) {
            if (!t[l]) {
                var d = "function" == typeof require && require;
                if (!s && d) 
                    return d(l, !0);
                if (i) 
                    return i(l, !0);
                var r = new Error("Cannot find module '" + l + "'");
                throw r.code = "MODULE_NOT_FOUND",
                r
            }
            var c = e[l] = {
                exports: {}
            };
            t[l][0].call(c.exports, function (o) {
                var e = t[l][1][o];
                return a(e
                    ? e
                    : o)
            }, c, c.exports, o, t, e, n)
        }
        return e[l].exports
    }
    for (var i = "function" == typeof require && require, l = 0; l < n.length; l++) 
        a(n[l]);
    return a
}({
    1: [
        function (o, t, e) {
            var n = "function" == typeof Symbol && "symbol" === _typeof2(Symbol.iterator)
                ? function (o) {
                    return "undefined" == typeof o
                        ? "undefined"
                        : _typeof2(o)
                }
                : function (o) {
                    return o && "function" == typeof Symbol && o.constructor === Symbol && o !== Symbol.prototype
                        ? "symbol"
                        : "undefined" == typeof o
                            ? "undefined"
                            : _typeof2(o)
                };
            !function (t) {
                var e = function (o) {
                        new a(o)
                    },
                    a = function (e) {
                        if ("object" === ("undefined" == typeof e
                            ? "undefined"
                            : n(e))) {
                            var a = {},
                                i = this;
                            if (e.result && e.result.lottery) {
                                var l = e.result.lottery;
                                a = {
                                    layerImgUrl: l.layerImgUrl,
                                    context: l.context,
                                    page1: l.page1,
                                    page2: l.page2,
                                    title: l.title || "",
                                    code: l.code || "",
                                    password: l.password || "",
                                    subType: l.subType || "",
                                    couponInfo: l.couponInfo || "",
                                    linkUrl: l.linkUrl || "",
                                    prizeIdent: l.prizeIdent || "",
                                    awardAmount: l.awardAmount || "",
                                    valueUnit: l.valueUnit || "",
                                    detailContactInfo: e.result.detailContactInfo || {}
                                },
                                i.tpl = o("./virtual/tpl").init,
                                i.tplResult = o("./virtual/tplResult").init,
                                i.tplMethod = o("./virtual/tplMethod").init,
                                i.result = e.result,
                                i.callback = e.callback
                            }
                            this.prize = e.prize || {},
                            this.prize = t.extend(!0, a, this.prize),
                            t("body").append(i.tpl(i.prize)),
                            t("body").append(i.tplMethod(i.prize));
                            try {
                                window
                                    .DB
                                    .exposure
                                    .singleExp(i.prize.page1.st_info_exposure)
                            } catch (s) {
                                console.log("弹层曝光异常。")
                            }
                            document.ontouchmove = function (o) {
                                o.preventDefault()
                            },
                            t(".modal-virtual").show(),
                            i.events(i.prize)
                        } else 
                            console.warn("参数错误")
                    };
                a.prototype.events = function (o) {
                    var e = this;
                    e.hasClick = !1;
                    var n = t(".modal-virtual"),
                        a = t(".modal-state");
                    t(".modal-virtual").css("height", t(window).height()),
                    n.on("click", ".modal-btn", function () {
                        window.DB.exposure.singleClk && window
                            .DB
                            .exposure
                            .singleClk({data: o.page1.st_info_btn_click, callback: function () {}}),
                        e.check(),
                        e.status && !e.hasClick && (t(".modal-virtual .modal-btn").addClass("modal-btn-get"), e.hasClick = !0, e.accountApi(), setTimeout(function () {
                            e.virtualResult()
                        }, 1e3))
                    }),
                    n
                        .off("click.modalClose")
                        .on("click.modalClose", ".modal-close", function () {
                            window.DB.exposure.singleClk && window
                                .DB
                                .exposure
                                .singleClk({
                                    data: o.page1.st_info_btn_close,
                                    callback: function () {
                                        document.touchmove = null
                                    }
                                }),
                            n.remove();
                            var t = e.callback;
                            t && t.close && t.close()
                        }),
                    t(".modal-state .modal-virtual-close").on("click", function () {
                        a.remove();
                        var o = e.callback;
                        o && o.close && o.close()
                    }),
                    n.on("click", ".modal-fastbtn", function () {
                        e.prize.linkUrl
                            ? window.location.href = e.prize.linkUrl
                            : (t("body").append(e.tplResult(e.prize, {data: 2})), e.secondEvent(), e.prize.hideBlock
                                ? e.showSecond()
                                : e.getRecommend(function () {
                                    e.showSecond()
                                }))
                    }),
                    n.on("click", ".modal-usebtn", function () {
                        t(".modal-state").show(),
                        t(".modal-virtual").hide()
                    }),
                    a.on("click", ".modal-state-back", function () {
                        t(".modal-state").hide(),
                        t(".modal-virtual").show()
                    }),
                    a.on("click", ".modal-state-btn", function () {
                        t("body").append(e.tplResult(e.prize, {data: 2})),
                        e.secondEvent(),
                        e.prize.hideBlock
                            ? e.showSecond()
                            : e.getRecommend(function () {
                                e.showSecond()
                            })
                    }),
                    n.on("focus", "input, textarea", function () {
                        t(".modal-virtual .modal-btn").removeClass("modal-btn-get"),
                        e.hasClick = !1,
                        e.hideTip();
                        var o = navigator
                            .userAgent
                            .indexOf("iPhone");
                        o == -1
                            ? t(".modal-virtual").css("position", "absolute")
                            : t(".modal-virtual").css("position", "fixed")
                    }),
                    n.on("blur", "input, textarea", function () {
                        t(".modal-virtual").css("position", "fixed")
                    })
                },
                a.prototype.showTip = function (o) {
                    o
                        ? t(".modal-virtual")
                            .find(".modal-tip")
                            .text(o)
                            .show()
                        : t(".modal-virtual")
                            .find(".modal-tip")
                            .show(),
                    this.status = !1
                },
                a.prototype.hideTip = function () {
                    t(".modal-virtual")
                        .find(".modal-tip")
                        .hide()
                },
                a.prototype.showSecond = function () {
                    var o = this;
                    t(".modal-virtual").hide(),
                    t(".modal-state").hide(),
                    t(".modal-virtual-result").show(),
                    o.hasClick = !1;
                    try {
                        window
                            .DB
                            .exposure
                            .singleExp(o.prize.page2.st_info_exposure)
                    } catch (e) {
                        console.log("弹层曝光异常。")
                    }
                },
                a.prototype.check = function () {
                    var o = this,
                        e = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$"),
                        n = new RegExp("^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\\d{8})$"),
                        a = /^([\u4E00-\uFA29]){2,6}$/,
                        i = new RegExp("^.{1,30}$"),
                        l = (new RegExp("^[a-zA-Z0-9一-龥A]{1,28}$"), /^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X|x)$/);
                    o.status = !0;
                    var s = t(".modal-virtual .modal-info input");
                    s && s.each(function (s, d) {
                        "0" == t(d).attr("key")
                            ? t(d).val()
                                ? n.test(t(d).val()) || o.showTip("请输入正确的手机号")
                                : o.showTip("请输入手机号码")
                            : "1" == t(d).attr("key")
                                ? t(d).val()
                                    ? a.test(t(d).val()) || o.showTip("请输入正确的姓名")
                                    : o.showTip("请输入姓名")
                                : "2" == t(d).attr("key")
                                    ? t(d).val()
                                        ? l.test(t(d).val()) || o.showTip("请输入正确的身份证号")
                                        : o.showTip("请输入身份证号")
                                    : "3" == t(d).attr("key")
                                        ? t(d).val()
                                            ? e.test(t(d).val()) || o.showTip("请输入正确邮箱格式")
                                            : o.showTip("请输入邮箱")
                                        : "4" == t(d).attr("key") && (t(d).val()
                                            ? i.test(t(d).val()) || o.showTip("输入信息过长")
                                            : o.showTip("请输入有效内容"))
                    })
                },
                a.prototype.accountApi = function () {
                    var o = this,
                        e = {},
                        n = o.prize.context || [],
                        a = t(".modal-virtual .modal-info input"),
                        i = "";
                    n && n.forEach(function (o) {
                        a && a.each(function (e, n) {
                            o.type == t(n).attr("key") && (o.value = t(n).val())
                        })
                    }),
                    i = JSON.stringify(n),
                    e.orderId = o.result.orderId,
                    e.infoReqs = i,
                    e.subType = o.prize.subType,
                    e.appKey = o.getparams("appKey") || null,
                    10 == o.prize.subType && (e.prizeIdent = o.prize.prizeIdent),
                    t.ajax({
                        url: "/alipay/submitVirtualPrizeInfo",
                        type: "post",
                        dataType: "json",
                        data: e,
                        success: function () {},
                        error: function () {}
                    })
                },
                a.prototype.virtualResult = function () {
                    var o = this;
                    t.ajax({
                        url: "/alipay/virtualPrizeResult",
                        type: "post",
                        dataType: "json",
                        data: {
                            orderId: o.result.orderId
                        },
                        success: function (e) {
                            e.success && (3 != e.data
                                ? (t("body").append(o.tplResult(o.prize, e)), o.secondEvent(), o.prize.hideBlock
                                    ? o.showSecond()
                                    : o.getRecommend(function () {
                                        o.showSecond()
                                    }))
                                : o.showTip("账号信息错误,请充填"))
                        },
                        error: function (e) {
                            setTimeout(function () {
                                t("body").append(o.tplResult(o.prize, {data: 10})),
                                o.secondEvent(),
                                o.prize.hideBlock
                                    ? o.showSecond()
                                    : o.getRecommend(function () {
                                        o.showSecond()
                                    })
                            }, 1e3)
                        }
                    })
                },
                a.prototype.secondEvent = function () {
                    var o = this,
                        e = t(".modal-virtual-result"),
                        n = t(".modal-virtual");
                    e.on("click", ".modal-virtual-close", function () {
                        window.DB.exposure.singleClk && window
                            .DB
                            .exposure
                            .singleClk({
                                data: o.prize.page2.st_info_btn_close,
                                callback: function () {
                                    document.touchmove = null
                                }
                            }),
                        n.remove(),
                        e.remove();
                        var t = o.callback;
                        t && t.close && t.close()
                    }),
                    e.on("click", ".result-btn", function () {
                        window.DB.exposure.singleClk && window
                            .DB
                            .exposure
                            .singleClk({
                                data: o.prize.page2.st_info_btn_click,
                                callback: function () {
                                    window
                                        .location
                                        .host
                                        .indexOf("8800") > -1
                                        ? window.location.href = "../../record/list.html"
                                        : window.location.href = "/ts/activity/indexRecord?vmName=list"
                                }
                            })
                    })
                },
                a.prototype.getRecommend = function (o) {
                    var e = this;
                    t.ajax({
                        url: "/ts/activity/getRecommend",
                        type: "post",
                        dataType: "json",
                        data: {
                            id: e.getparams("id") || e.result.activityId,
                            login: e.getparams("login") || "normal",
                            appKey: e.getparams("appKey") || null,
                            deviceId: e.getparams("deviceId") || null,
                            slotId: e.getparams("slotId") || null,
                            layerId: window.virtualId,
                            recommendType: 4,
                            id: this_id,
                            awid: this_awid,
                            random: this_random
                        },
                        success: function (e) {
                            $.ajax({
                                url: '/ts/activity/vpCount',
                                dataType: 'json',
                                type: 'post',
                                data: {random: this_random, awid: this_awid, aid: this_aid, id: this_id,pos:3},
                                success: function () {}
                            })
                            e.success && (e.data.block1
                                ? (t(".block1").attr("href", e.data.block1.actUrl), t(".block1").find(".recommend-img").attr("src", e.data.block1.bannerUrl), window.DB.exposure.singleExp && window.DB.exposure.singleExp(e.data.block1.stInfoExposure), e.data.block2
                                    ? (t(".block2").attr("href", e.data.block2.actUrl), t(".block2").find(".recommend-img").attr("src", e.data.block2.bannerUrl), window.DB.exposure.singleExp && window.DB.exposure.singleExp(e.data.block2.stInfoExposure))
                                    : t(".block2").hide())
                                : t(".block1, block2").hide(), o && o())
                        },
                        error: function () {
                            console.log("get recommend queue error")
                        }
                    })
                },
                a.prototype.getparams = function (o) {
                    var t = "[\\?&]" + o + "=([^&#]*)",
                        e = new RegExp(t),
                        n = e.exec(location.href);
                    return null === n
                        ? ""
                        : n[1]
                },
                a.prototype.sendApi = function (o, e, n, a) {
                    try {
                        var i = JSON.stringify(o);
                        if (i.indexOf("iframe") !== -1) 
                            return
                    } catch (l) {
                        console.log("数据异常:" + (l || ""))
                    }
                    var s = o.domain || "",
                        d = o.url;
                    delete o.domain,
                    delete o.url,
                    o.data && o.data.domain && delete o.data.domain,
                    t.ajax({
                        url: s + d,
                        data: o.data,
                        dataType: "jsonp",
                        type: o.type || "post",
                        jsonpCallback: "tracks",
                        complete: function () {
                            e && e()
                        },
                        success: function (o) {
                            n && n(o)
                        },
                        error: function (o) {
                            a && a(o)
                        }
                    })
                },
                window.showVirtualPrize = e
            }(Zepto)
        }, {
            "./virtual/tpl": 2,
            "./virtual/tplMethod": 3,
            "./virtual/tplResult": 4
        }
    ],
    2: [
        function (o, t, e) {
            !function (o) {
                var t = function (o) {
                    if (!this.prize) 
                        return "";
                    var t = "",
                        e = "",
                        n = "",
                        a = "",
                        i = "",
                        l = "",
                        s = "",
                        d = "";
                    return s = o.awardAmount
                        ? ""
                        : o.title,
                    10 == o.subType || 17 == o.subType
                        ? (t = o.context && o.context.map(function (o, t) {
                            return '<div class="modal-info"> \n                  <div class="modal-info-text">' + (0 == o.type
                                ? "手机号"
                                : 1 == o.type
                                    ? "姓名"
                                    : 2 == o.type
                                        ? "身份证号"
                                        : 3 == o.type
                                            ? "邮箱"
                                            : 4 == o.type
                                                ? "其他"
                                                : "") + '：</div>\n                  <input type="text" class="modal-info-code" key=' + o.type + " value='" + (o.value
                                ? o.value
                                : "") + "' placeholder='" + (o.key
                                ? o.key
                                : "") + "'/>\n                </div>"
                        }), t = t
                            ? t.join("")
                            : "", a = '<div class="modal-btn"></div>', d = '<div class="modal-text">请在24小时内领取,逾期作废</div>')
                        : 13 == o.subType && (e = o.code
                            ? '<div class="modal-info"><div class="modal-info-text">券码：</div><div class="modal-' +
                                'info-code">' + o.code + "</div></div>"
                            : "", n = o.password
                            ? '<div class="modal-info"><div class="modal-info-text">密码：</div><div class="modal-' +
                                    'info-code">' + o.password + "</div></div>"
                            : "", i = o.couponInfo
                            ? '<div class="modal-usebtn"></div>'
                            : "", l = '<div class="modal-fastbtn"></div>', d = ""),
                    '<div class="modal-virtual">\n              <span class="modal-close"></span>\n  ' +
                        '            <div class="modal-dialog">\n              <div class="modal-bar"></d' +
                            'iv>\n                <div class="modal-body">      \n                  <div clas' +
                            's="modal-prize">\n                   <a href="#"><img src=' + o.layerImgUrl + '></a>\n                  </div>\n                  <div class="modal-title"><spa' +
                            'n>' + (o.awardAmount
                        ? o.awardAmount
                        : "") + "</span>" + (o.valueUnit
                        ? o.valueUnit
                        : "") + s + '</div>\n                    <div class="modal-form">\n                     ' + t + "\n                     " + e + "\n                     " + n + '\n                    </div>\n                  <div class="modal-tip"></div>\n ' +
                            '                 ' + a + "\n                  " + l + "\n                  " + i + "\n                  " + d + "\n                </div>\n              </div>\n            </div>"
                };
                e.init = t
            }(Zepto)
        }, {}
    ],
    3: [
        function (o, t, e) {
            !function (o) {
                var t = function (o) {
                    return this.prize
                        ? '<div class="modal-state">\n             <span class="modal-virtual-close"></span' +
                            '>\n              <div class="modal-dialog">\n                <div class="modal-b' +
                                'ody"> \n                 <div class="modal-jb"></div>     \n                 <di' +
                                'v class="stateWrap">\n                   <div class="top">使用方法</div>\n          ' +
                                '         <div class="body">' + o.couponInfo + '</div>\n                 </div>\n                 <div class="modal-state-btn"><' +
                                '/div>\n                 <div class="modal-state-back"></div>\n                </' +
                                'div>\n              </div>\n            </div>'
                        : ""
                };
                e.init = t
            }(Zepto)
        }, {}
    ],
    4: [
        function (o, t, e) {
            !function (o) {
                var t = function (o, t) {
                    if (!this.prize) 
                        return "";
                    var e = '<div class="modal-desc">' + (2 == t
                            ? "领取成功，订单详情请查看"
                            : "正在火速处理中，查看进度请点击") + '<a href="javascript:void(0);"><span class="result-btn">我的奖品</span></a></div>',
                        n = this.prize.hideBlock
                            ? ""
                            : '<div class="more">更多福利</div><a class="block1"><img src="" class="recommend-img">' +
                                '</a><a class="block2"><img src="" class="recommend-img"></a>',
                        a = this.prize.detailContactInfo.isOpenOptionDetail
                            ? '<div class="modal-contact">客服：<i class="icon-phone"></i>' + o.detailContactInfo.optionDetailPhone + "</div>"
                            : "";
                    return '<div class="modal-virtual-result">\n              <span class="modal-virtual-clo' +
                        'se"></span>\n              <div class="modal-dialog">\n                <div clas' +
                            's="modal-animate">\n                  <i class="modal-coin"></i>\n              ' +
                            '    <div class="modal-head">\n                    ' + e + "\n                    " + a + "\n                  </div>\n                  " + n + "\n                </div>\n              </div>\n            </div>"
                };
                e.init = t
            }(Zepto)
        }, {}
    ]
}, {}, [1]);