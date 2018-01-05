!function n(o, t, e) {
    function i(c, r) {
        if (!t[c]) {
            if (!o[c]) {
                var u = "function" == typeof require && require;
                if (!r && u) 
                    return u(c, !0);
                if (p) 
                    return p(c, !0);
                var s = new Error("Cannot find module '" + c + "'");
                throw s.code = "MODULE_NOT_FOUND",
                s
            }
            var a = t[c] = {
                exports: {}
            };
            o[c][0].call(a.exports, function (n) {
                var t = o[c][1][n];
                return i(t
                    ? t
                    : n)
            }, a, a.exports, n, o, t, e)
        }
        return t[c].exports
    }
    for (var p = "function" == typeof require && require, c = 0; c < e.length; c++) 
        i(e[c]);
    return i
}({
    1: [
        function (n, o, t) {
            var e = n("./util"),
                i = {
                    events: {},
                    getOrder: function p() {
                        var n = this,
                            o = window.Plugin_Act_CFG,
                            p = o.getOrder,
                            t = o.activityType,
                            i = o.activityId,
                            c = o.slotId;
                        e.ajax({
                            url: p,
                            type: "post",
                            data: {
                                activityType: t,
                                activityId: i,
                                slotId: c || void 0,
                                id: this_id,
                                awid: this_awid,
                                random: this_random
                            },
                            success: function (o) {
                                o.success
                                    ? setTimeout(function () {
                                        n.getLottery(o.data.orderId)
                                    }, 500)
                                    : n.trigger("lose")
                            },
                            error: function (o, t) {
                                n.trigger("lose")
                            }
                        })
                    },
                    getLottery: function (n) {
                        var o = this,
                            t = window.Plugin_Act_CFG.skinId;
                        e.ajax({
                            url: window.Plugin_Act_CFG.getLottery,
                            type: "post",
                            data: {
                                orderId: n,
                                skinId: t,
                                id: this_id,
                                awid: this_awid,
                                random: this_random
                            },
                            success: function (t) {
                                if (t.success) {
                                    $.ajax({
                                        url: '/ts/activity/vpCount',
                                        dataType: 'json',
                                        type: 'post',
                                        data: {random: this_random, awid: this_awid, aid: this_aid, id: this_id,pos:3},
                                        success: function () {}
                                    })
                                    var e = t.data,
                                        i = e.status,
                                        p = e.lottery;
                                    if ("wait" === i) 
                                        setTimeout(function () {
                                            o.getLottery(n)
                                        }, 1e3);
                                    else if ("success" === i) {
                                        var c = p.type;
                                        "lucky" === c || "coupon" === c
                                            ? o.trigger("win", p)
                                            : o.trigger("lose")
                                    } else 
                                        o.trigger("lose")
                                } else 
                                    o.trigger("lose")
                            },
                            error: function (n, t) {
                                o.trigger("lose")
                            }
                        })
                    },
                    trigger: function (n) {
                        for (var o = this.events[n], t = 0, e = o.length; t < e; t++) 
                            o[t].apply(null, [].slice.call(arguments, 1))
                    },
                    on: function (n, o) {
                        (this.events[n] = this.events[n] || []).push(o)
                    }
                };
            o.exports = i
        }, {
            "./util": 3
        }
    ],
    2: [
        function (n, o, t) {
            var e = n("../common/flow"),
                i = {
                    init: function (n) {
                        var o = n.pluginBtn || $(".plugin-act-popup .plugin-act-btn"),
                            t = n.closeBtn || $(".plugin-act-popup .plugin-act-close"),
                            e = n.orderBox || $(".winred .order"),
                            i = n.orderName || $(".winred .decs"),
                            p = n.winredBtn || $(".winred .plugin-coupon-btn");
                        this.beforehand(o, t),
                        this.onFlowsEvents(e, t, p, i, n.winpackShow, n.nonepackShow, n.changeProcess)
                    },
                    beforehand: function (n, o) {
                        var t = window.Plugin_Act_CFG.embedData;
                        window.DB && window.DB.exposure && window
                            .DB
                            .exposure
                            .singleExp(t)
                    },
                    hideModal: function (n, o) {
                        var o = o || $("#popup .plugin-act-close"),
                            t = o.attr("db-click") || window.Plugin_Act_CFG.closeClickEmbedData;
                        t
                            ? window.DB && window.DB.exposure && window
                                .DB
                                .exposure
                                .singleClk({data: t, callback: n})
                            : n()
                    },
                    format: function (n) {
                        if (n) {
                            var o = JSON.parse(n),
                                t = [];
                            for (var e in o) 
                                t.push(encodeURIComponent(e) + "=" + encodeURIComponent(o[e]));
                            return o.domainWeb + "/exposure/plugin?" + t.join("&")
                        }
                    },
                    onFlowsEvents: function (n, o, t, i, p, c, r) {
                        e
                            .on("win", function (e) {
                                function c(n) {
                                    n.preventDefault();
                                    var o = e.st_info_dpm_img_click,
                                        t = function () {
                                            window.location.href = e.iosDownloadUrl
                                        };
                                    window.DB && window.DB.exposure && window
                                        .DB
                                        .exposure
                                        .singleClk({data: o, callback: t})
                                }
                                r(),
                                window.DB && window.DB.exposure && window
                                    .DB
                                    .exposure
                                    .singleExp(e.st_info_dpm_img),
                                n.html("<img src='" + e.imgurl + "'>"),
                                n.on("click", c),
                                t.on("click", c),
                                o.attr("db-click", e.st_info_dpm_btn_close),
                                i.html(e.title),
                                p()
                            }),
                        e.on("lose", function () {
                            r(),
                            c()
                        })
                    },
                    getOrder: function () {
                        e.getOrder()
                    }
                };
            o.exports = i
        }, {
            "../common/flow": 1
        }
    ],
    3: [
        function (n, o, t) {
            var e = {
                ajax: function (n) {
                    var o = {
                        data: {
                            timestamp: (new Date).getTime()
                        },
                        dataType: "json",
                        success: function () {},
                        error: function (n, o) {
                            "timeout" === o
                                ? (n && n.abort(), console.error("请求超时"))
                                : console.error("网络错误")
                        }
                    };
                    n = $.extend(!0, o, n),
                    $.ajax(n)
                }
            };
            o.exports = e
        }, {}
    ],
    4: [
        function (n, o, t) {
            var e = n("../common/index-2");
            FastClick(document.body);
            var i = !1,
                p = {
                    $popup: $("#popup"),
                    $shadow: $("#popup .popup-shadow"),
                    $popupMc: $("#popup .plugin-popup-mc"),
                    $rules: $("#popup .plugin-rules"),
                    $nonepack: $("#popup .nonepack"),
                    $winred: $("#popup .winred"),
                    init: function () {
                        var n = {
                            winredBtn: $("#popup .plugin-coupon-btn"),
                            winpackShow: this.winpackShow,
                            nonepackShow: this.nonepackShow,
                            changeProcess: this.changeProcess
                        };
                        e.init(n),
                        this.onPageEvents()
                    },
                    winpackShow: function () {
                        $("#popup .plugin-popup-mc .bg-top").addClass("active"),
                        $("#popup .win-content").addClass("active"),
                        $("#popup .plugin-act-btn").hide(),
                        $("#popup .plugin-coupon-btn").show(),
                        $("#popup .bg_award, #popup .bg_light").addClass("active")
                    },
                    nonepackShow: function () {
                        p
                            .$popupMc
                            .hide(),
                        p
                            .$nonepack
                            .show()
                    },
                    hideModal: function () {
                        e
                            .hideModal(function () {
                                p
                                    .$popup
                                    .hide()
                            })
                    },
                    backhome: function () {
                        $("#popup .plugin-act-btn").removeAttr("db-click")
                    },
                    getCoupon: function () {
                        i || (i = !0, setTimeout(function () {
                            e.getOrder()
                        }, 0))
                    },
                    onPageEvents: function () {
                        this
                            .$popup
                            .find(".plugin-act-close")
                            .on("click", this.hideModal.bind(this)),
                        this
                            .$popup
                            .find(".playagain")
                            .on("click", this.backhome.bind(this)),
                        this
                            .$popup
                            .find(".plugin-act-btn")
                            .on("click", this.getCoupon.bind(this))
                    },
                    changeProcess: function () {
                        console.log(i),
                        i = !i
                    }
                };
            p.init()
        }, {
            "../common/index-2": 2
        }
    ]
}, {}, [4]);