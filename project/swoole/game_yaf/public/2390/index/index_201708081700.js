var _typeof2 = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (t) {
        return typeof t
    } : function (t) {
        return t && "function" == typeof Symbol && t.constructor === Symbol && t !== Symbol.prototype ? "symbol" : typeof t
    };
!function t(e, o, a) {
    function i(n, s) {
        if (!o[n]) {
            if (!e[n]) {
                var l = "function" == typeof require && require;
                if (!s && l)return l(n, !0);
                if (r)return r(n, !0);
                var d = new Error("Cannot find module '" + n + "'");
                throw d.code = "MODULE_NOT_FOUND", d
            }
            var u = o[n] = {exports: {}};
            e[n][0].call(u.exports, function (t) {
                var o = e[n][1][t];
                return i(o ? o : t)
            }, u, u.exports, t, e, o, a)
        }
        return o[n].exports
    }

    for (var r = "function" == typeof require && require, n = 0; n < a.length; n++)i(a[n]);
    return i
}({
    1: [function (t, e, o) {
        !function (e) {
            t("../../../../../unit/lib/lib-animate/1.0.0/animate"), FastClick(document.body);
            var o = {
                _UA: navigator.userAgent.toLowerCase(),
                leadInterval: null,
                hasNoTimes: !1,
                againOrderId: null,
                lastResult: null,
                startX: null,
                waggling: !0,
                degsIndex: 0,
                readyCoupon: !1,
                readyStatus: !0,
                init: function () {
                    this._UA.match(/iphone|ipad/gi) ? e(".apple").show() : e(".apple").hide(), this.getStyle(), this.getOption(), this.events()
                },
                getStyle: function () {
                    var t = this;
                    window.dbStyleConfigStart = +new Date, t.getTuiaStyle({
                        success: function (o) {
                            if (o.success) {
                                var a = [[".banner", "backgroundImage", "bannerImage"], [".boxImg i", "backgroundImage", "box"], ["body", "backgroundColor", "bgColor"], [".main", "backgroundImage", "bgImage"], [".record", "backgroundImage", "record"], [".apple", "color", "apple"], [".apple", "backgroundColor", "appleBg"], [".rule", "backgroundImage", "ruleImage"], [".rule-modal .rule-modal-dialog", "backgroundColor", "ruleBgColor"], [".rule-modal .rule-modal-dialog section .probability", "backgroundColor", "ruleBgColor"], [".rule-modal .rule-modal-dialog header span,.rule-modal .rule-modal-dialog section .description", "color", "ruleTextColor"], [".rule-modal .rule-modal-dialog header i", "backgroundColor", "ruleTextColor"], [".rule-modal .rule-modal-dialog .close", "color", "ruleTextColor"], [".rule-modal .rule-modal-dialog section .probability .nav", "backgroundColor", "probabilityBg"], [".rule-modal .rule-modal-dialog section .probability .nav span", "color", "probabilityColor"], [".rule-modal .rule-modal-dialog section .probability.active .text", "color", "ruleTextColor"], [".description-scroller", "html", "ruleText"]];
                                requireStyle.init(o, a), e("head").append("<style>.rule-modal .rule-modal-dialog section .probability .nav i{border-top-color: " + requireStyle.getStyle("probabilityColor") + " !important;border-left-color: " + requireStyle.getStyle("probabilityColor") + " !important;}</style>"), requireStyle.getStyle("probabilityText") && (requireStyle.setConfig(".probability-scroller", "html", "probabilityText"), e(".probability").show()), e("#db-content").show();
                                var i = document.getElementById("box");
                                i.addEventListener("touchstart", t.startHandler, !1), i.addEventListener("touchmove", t.moveHandler, !1), window.dbStyleConfigEnd = +new Date, e(document).height() >= e(window).height() && e(".apple").removeClass("fixed")
                            } else t.showModal("systemError", {message: o.desc})
                        }, error: function (e) {
                            t.showModal("networkError")
                        }
                    })
                },
                getOption: function () {
                    var t = this;
                    t.getTuiaOptions({
                        success: function (o) {
                            if (o.success) {
                                var a = o.data;
                                t.renderElement(a);
                                for (var i = 0, r = 0; i < o.data.options.length; i++) {
                                    var n = o.data.options[i];
                                    n && n.image && !n.hidden && (e(e(".prize-list .prize-img")[r]).attr({
                                        src: n.image,
                                        "data-id": n.id,
                                        "data-type": n.prizeType
                                    }), r++)
                                }
                                t.waggleLoop(), t.leadStartLoop(!0), loader(function () {
                                    t.hasNoTimes && t.showModal("over"), t.performance()
                                })
                            }
                        }
                    })
                },
                events: function () {
                    var t = this;
                    e(".prize-list").on("click", ".prize-img", function () {
                        new GetPrizeDetail({
                            url: "/activity/getPrizeDetail",
                            prizeType: e(this).data("type"),
                            data: {optionId: e(this).data("id")}
                        })
                    }), e(".main").on("click", ".boxImg, .leadStart", function () {
                        setPosition(1), t.start()
                    }), e("body").on("click", ".recommend-modal .close", function () {
                        t.reInit()
                    }), e("#box, .leadStart").on("touchstart", function () {
                        t.startX = event.targetTouches[0].clientX
                    }), e("#box, .leadStart").on("touchmove", function (e) {
                        e.preventDefault();
                        var o = event.targetTouches[0].clientX;
                        (o - 180) * (t.startX - 180) < 0 && t.start()
                    })
                },
                start: function () {
                    var t = this;
                    t.readyStatus && (this.getOrder(), this.leadStartLoop(!1), this.lastResult = null, this.readyCoupon = !1, this.readyStatus = !1, setTimeout(function () {
                        t.lastResult ? t.showResult() : t.readyCoupon = !0
                    }, 800))
                },
                reInit: function () {
                    this.readyStatus = !0, this.waggling || (e(".rope i,.box2 i").addClass("hide"), e(".box2 i").css({
                        transform: "translateY(0)",
                        opacity: "1"
                    }), e(".box i").removeClass("hide"), this.waggling = !0, this.degsIndex = 0, this.waggleLoop()), buoyInit && buoyInit(this.isShowBuoy)
                },
                reset: function () {
                    this.reInit(), this.hasNoTimes && this.showModal("over")
                },
                waggleLoop: function () {
                    var t = this, o = [20, -16, 13, -10, 8, -5], a = 300;
                    o[t.degsIndex] ? e(".box i").animate({rotate: o[t.degsIndex] + "deg"}, a, "ease-out", function () {
                            t.degsIndex++, e(".box i").animate({rotate: "0deg"}, a, "ease-in", function () {
                                t.waggling && t.waggleLoop()
                            })
                        }) : t.waggling = !1
                },
                waggleReset: function () {
                    e(".box i").hasClass("hide") || (this.waggling = !1, e(".leadStart").hide(), e(".box i").animate({rotate: "0deg"}, 0, function () {
                        e(".box i").addClass("hide"), e(".rope i,.box2 i").removeClass("hide"), e(".box2 i").animate({
                            translateY: "2rem",
                            opacity: "0"
                        }, 500, "ease-in", function () {
                            e(this).addClass("hide")
                        })
                    }))
                },
                leadStartLoop: function (t) {
                    var o = 200;
                    t ? leadInterval = setInterval(function () {
                            var t = e(".leadStart .lead.active");
                            t.length ? (t.next(".lead").length ? t.next(".lead").addClass("active") : e(".leadStart .lead").first().addClass("active"), t.removeClass("active")) : e(".leadStart .lead").first().addClass("active"), t.hasClass("two") && e(".leadStart .pointer").show().animate({translateX: "0.8rem"}, 2 * o, function () {
                                e(".leadStart .pointer").hide().css({transform: "translateX(0)"})
                            })
                        }, o) : (e(".leadStart .lead").removeClass("active"), clearInterval(leadInterval))
                },
                showResult: function () {
                    var t = o;
                    if ("networkError" == t.lastResult.status) t.showModal("networkError"); else if (t.againOrderId = t.lastResult.data.againTag ? t.lastResult.data.againTag : null, "success" == t.lastResult.status && 0 != t.lastResult.data.result)if (2 == t.lastResult.data.result) {
                        var a = t.lastResult.data.lottery;
                        if ("coupon" == a.type || "lucky" == a.type) {
                            var i = function (o) {
                                window.showCouponPrize({
                                    hasLuckyDom: o,
                                    result: t.lastResult.data,
                                    callback: {
                                        close: function () {
                                            t.reset()
                                        }, use: function () {
                                            e(".J_modalShowPrize").remove(), t.reset()
                                        }
                                    }
                                })
                            };
                            i()
                        } else if ("alipay" === a.type) {
                            var r = function () {
                                window.showAlipayPrize({
                                    result: t.lastResult.data, callback: {
                                        close: function () {
                                            t.reset()
                                        }
                                    }
                                })
                            };
                            r()
                        } else window.showObjectPrize({
                            name: a.title, type: a.type, img: a.imgurl, onsubmit: function () {
                                window.location.href = a.link
                            }, onclose: function () {
                                t.reset()
                            }
                        })
                    } else 1 == t.lastResult.data.result && t.showModal("again"); else t.showModal("noPrize")
                },
                getOrder: function () {
                    var t = this, e = {};
                    t.againOrderId && (e.againOrderId = t.againOrderId), this.getTuiaOrder({
                        data: e, success: function (e) {
                            var o = t.getTuiaErrorCode(e.code);
                            "success" == o ? (t.againOrderId = null, t.renderElement(e.data), t.isShowBuoy = e.data.isShowBuoy, t.waggleReset(), setTimeout(function () {
                                    t.getLottery(e.data.orderId)
                                }, 500)) : "networkError" == o ? t.showModal("networkError") : "over" == o ? t.showModal("over") : "preview" == o && t.showModal("preview")
                        }, error: function (e, o) {
                            "timeout" == o ? (window.xhr && window.xhr.abort(), t.showModal("systemError", {message: "请求超时"})) : t.showModal("networkError")
                        }
                    })
                },
                getLottery: function (t) {
                    var e = this;
                    this.getTuiaLottery({
                        data: {orderId: t}, success: function (o) {
                            o.status = e.getTuiaErrorCode(o.code), "success" == o.status && "wait" == o.data.status ? setTimeout(function () {
                                    e.getLottery(t)
                                }, 500) : (e.lastResult = o, e.readyCoupon && e.showResult())
                        }, error: function (t, o) {
                            "timeout" == o ? (window.xhr && window.xhr.abort(), e.showModal("systemError", {message: "请求超时"})) : e.showModal("networkError")
                        }
                    })
                },
                showModal: function (t, e) {
                    var o = this, a = this.createErrorObject(t, e);
                    "over" === a.type ? window.recommendModal.show() : (a.clickCallback = function () {
                            o.reset()
                        }, window.errorMsgModal.show(a))
                },
                renderElement: function (t) {
                    e(".needCredits p").html(this.getTuiaStatusText(t)).show(), t.limitTimes || CFG.preview ? this.hasNoTimes = !1 : this.hasNoTimes = !0
                }
            };
            o = e.extend({}, o, window.Public), o.init()
        }(Zepto)
    }, {"../../../../../unit/lib/lib-animate/1.0.0/animate": 2}], 2: [function (t, e, o) {
        var a = "function" == typeof Symbol && "symbol" === _typeof2(Symbol.iterator) ? function (t) {
                return "undefined" == typeof t ? "undefined" : _typeof2(t)
            } : function (t) {
                return t && "function" == typeof Symbol && t.constructor === Symbol && t !== Symbol.prototype ? "symbol" : "undefined" == typeof t ? "undefined" : _typeof2(t)
            };
        !function (t) {
            function e(t) {
                return t.replace(/([a-z])([A-Z])/, "$1-$2").toLowerCase()
            }

            function o(t) {
                return i ? i + t : t.toLowerCase()
            }

            var i, r, n, s, l, d, u, c, f, g, m = "", p = {
                Webkit: "webkit",
                Moz: "",
                O: "o"
            }, h = document.createElement("div"), y = /^((translate|rotate|scale)(X|Y|Z|3d)?|matrix(3d)?|perspective|skew(X|Y)?)$/i, b = {};
            t.each(p, function (t, e) {
                if (void 0 !== h.style[t + "TransitionProperty"])return m = "-" + t.toLowerCase() + "-", i = e, !1
            }), r = m + "transform", b[n = m + "transition-property"] = b[s = m + "transition-duration"] = b[d = m + "transition-delay"] = b[l = m + "transition-timing-function"] = b[u = m + "animation-name"] = b[c = m + "animation-duration"] = b[g = m + "animation-delay"] = b[f = m + "animation-timing-function"] = "", t.fx = {
                off: void 0 === i && void 0 === h.style.transitionProperty,
                speeds: {_default: 400, fast: 200, slow: 600},
                cssPrefix: m,
                transitionEnd: o("TransitionEnd"),
                animationEnd: o("AnimationEnd")
            }, t.fn.animate = function (e, o, a, i, r) {
                return t.isFunction(o) && (i = o, a = void 0, o = void 0), t.isFunction(a) && (i = a, a = void 0), t.isPlainObject(o) && (a = o.easing, i = o.complete, r = o.delay, o = o.duration), o && (o = ("number" == typeof o ? o : t.fx.speeds[o] || t.fx.speeds._default) / 1e3), r && (r = parseFloat(r) / 1e3), this.anim(e, o, a, i, r)
            }, t.fn.anim = function (o, i, m, p, h) {
                var w, v, x, C = {}, S = "", I = this, T = t.fx.transitionEnd, k = !1;
                if (void 0 === i && (i = t.fx.speeds._default / 1e3), void 0 === h && (h = 0), t.fx.off && (i = 0), "string" == typeof o) C[u] = o, C[c] = i + "s", C[g] = h + "s", C[f] = m || "linear", T = t.fx.animationEnd; else {
                    v = [];
                    for (w in o)y.test(w) ? S += w + "(" + o[w] + ") " : (C[w] = o[w], v.push(e(w)));
                    S && (C[r] = S, v.push(r)), i > 0 && "object" === ("undefined" == typeof o ? "undefined" : a(o)) && (C[n] = v.join(", "), C[s] = i + "s", C[d] = h + "s", C[l] = m || "linear")
                }
                return x = function (e) {
                    if ("undefined" != typeof e) {
                        if (e.target !== e.currentTarget)return;
                        t(e.target).unbind(T, x)
                    } else t(this).unbind(T, x);
                    k = !0, !t(this).attr("stop") && t(this).css(b), p && p.call(this)
                }, i > 0 && (this.bind(T, x), setTimeout(function () {
                    k || x.call(I)
                }, 1e3 * (i + h) + 25)), this.size() && this.get(0).clientLeft, this.css(C), i <= 0 && setTimeout(function () {
                    I.each(function () {
                        x.call(this)
                    })
                }, 0), this
            }, h = null
        }(Zepto)
    }, {}]
}, {}, [1]);