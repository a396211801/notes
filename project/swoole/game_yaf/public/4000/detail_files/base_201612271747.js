!function t(e, n, i) {
    function o(a, s) {
        if (!n[a]) {
            if (!e[a]) {
                var c = "function" == typeof require && require;
                if (!s && c) return c(a, !0);
                if (r) return r(a, !0);
                var u = new Error("Cannot find module '" + a + "'");
                throw u.code = "MODULE_NOT_FOUND", u
            }
            var l = n[a] = {exports: {}};
            e[a][0].call(l.exports, function (t) {
                var n = e[a][1][t];
                return o(n ? n : t)
            }, l, l.exports, t, e, n, i)
        }
        return n[a].exports
    }

    for (var r = "function" == typeof require && require, a = 0; a < i.length; a++) o(i[a]);
    return o
}({
    1: [function (t, e, n) {
        t("../../unit/lib/lib-zepto/1.0.0/zepto.min"), t("../../unit/lib/lib-modal/1.0.0/modal"), t("../../unit/common/js/checkoutWebp"), t("../../unit/lib/lib-cookie/1.0.0/cookie"), t("../../unit/lib/lib-loader"), window.FastClick = t("../../unit/lib/lib-fastclick/1.0.0/fastclick")
    }, {
        "../../unit/common/js/checkoutWebp": 2,
        "../../unit/lib/lib-cookie/1.0.0/cookie": 3,
        "../../unit/lib/lib-fastclick/1.0.0/fastclick": 4,
        "../../unit/lib/lib-loader": 5,
        "../../unit/lib/lib-modal/1.0.0/modal": 6,
        "../../unit/lib/lib-zepto/1.0.0/zepto.min": 7
    }], 2: [function (t, e, n) {
        !function () {
            function t(i) {
                return clearTimeout(e), i ? localStorage && "undefined" == typeof localStorage.iswebp ? void(e = setTimeout(function () {
                    t(i)
                }, 100)) : (n = i.split("."), n.length > 0 && "gif" === n[n.length - 1] ? i : i += localStorage && localStorage.iswebp ? "?x-oss-process=image/format,webp" : "?x-oss-process=image/quality,Q_80") : i
            }

            var e = null, n = [];
            if (localStorage && !localStorage.iswebp) {
                var i = new Image;
                i.onload = function () {
                    1 === i.width && (localStorage.iswebp = !0)
                }, i.onerror = function () {
                    localStorage.iswebp = ""
                }, i.src = "data:image/webp;base64,UklGRiQAAABXRUJQVlA4IBgAAAAwAQCdASoBAAEAAwA0JaQAA3AA/vuUAAA="
            }
            String.prototype.ossimg = function () {
                return t(this)
            }, Array.prototype.imgWebpArray = function (t) {
                for (var e = [], n = this, i = 0; i < n.length; i++) n[i][t] && (n[i][t] = n[i][t].ossimg(), e.push(n[i]));
                return e
            }
        }()
    }, {}], 3: [function (t, e, n) {
        $.cookie = function (t, e, n) {
            if ("undefined" == typeof e) {
                var i = null;
                if (document.cookie && "" != document.cookie) for (var o = document.cookie.split(";"), r = 0; r < o.length; r++) {
                    var a = $.trim(o[r]);
                    if (a.substring(0, t.length + 1) == t + "=") {
                        i = decodeURIComponent(a.substring(t.length + 1));
                        break
                    }
                }
                return i
            }
            n = n || {}, null === e && (e = "", n = $.extend({}, n), n.expires = -1);
            var s = "";
            if (n.expires && ("number" == typeof n.expires || n.expires.toUTCString)) {
                var c;
                "number" == typeof n.expires ? (c = new Date, c.setTime(c.getTime() + 24 * n.expires * 60 * 60 * 1e3)) : c = n.expires, s = "; expires=" + c.toUTCString()
            }
            var u = n.path ? "; path=" + n.path : "", l = n.domain ? "; domain=" + n.domain : "",
                f = n.secure ? "; secure" : "";
            document.cookie = [t, "=", encodeURIComponent(e), s, u, l, f].join("")
        }
    }, {}], 4: [function (t, e, n) {
        !function () {
            "use strict";

            function t(e, n) {
                function o(t, e) {
                    return function () {
                        return t.apply(e, arguments)
                    }
                }

                var r;
                if (n = n || {}, this.trackingClick = !1, this.trackingClickStart = 0, this.targetElement = null, this.touchStartX = 0, this.touchStartY = 0, this.lastTouchIdentifier = 0, this.touchBoundary = n.touchBoundary || 10, this.layer = e, this.tapDelay = n.tapDelay || 200, this.tapTimeout = n.tapTimeout || 700, !t.notNeeded(e)) {
                    for (var a = ["onMouse", "onClick", "onTouchStart", "onTouchMove", "onTouchEnd", "onTouchCancel"], s = this, c = 0, u = a.length; c < u; c++) s[a[c]] = o(s[a[c]], s);
                    i && (e.addEventListener("mouseover", this.onMouse, !0), e.addEventListener("mousedown", this.onMouse, !0), e.addEventListener("mouseup", this.onMouse, !0)), e.addEventListener("click", this.onClick, !0), e.addEventListener("touchstart", this.onTouchStart, !1), e.addEventListener("touchmove", this.onTouchMove, !1), e.addEventListener("touchend", this.onTouchEnd, !1), e.addEventListener("touchcancel", this.onTouchCancel, !1), Event.prototype.stopImmediatePropagation || (e.removeEventListener = function (t, n, i) {
                        var o = Node.prototype.removeEventListener;
                        "click" === t ? o.call(e, t, n.hijacked || n, i) : o.call(e, t, n, i)
                    }, e.addEventListener = function (t, n, i) {
                        var o = Node.prototype.addEventListener;
                        "click" === t ? o.call(e, t, n.hijacked || (n.hijacked = function (t) {
                            t.propagationStopped || n(t)
                        }), i) : o.call(e, t, n, i)
                    }), "function" == typeof e.onclick && (r = e.onclick, e.addEventListener("click", function (t) {
                        r(t)
                    }, !1), e.onclick = null)
                }
            }

            var n = navigator.userAgent.indexOf("Windows Phone") >= 0,
                i = navigator.userAgent.indexOf("Android") > 0 && !n,
                o = /iP(ad|hone|od)/.test(navigator.userAgent) && !n,
                r = o && /OS 4_\d(_\d)?/.test(navigator.userAgent), a = o && /OS [6-7]_\d/.test(navigator.userAgent),
                s = navigator.userAgent.indexOf("BB10") > 0;
            t.prototype.needsClick = function (t) {
                switch (t.nodeName.toLowerCase()) {
                    case"button":
                    case"select":
                    case"textarea":
                        if (t.disabled) return !0;
                        break;
                    case"input":
                        if (o && "file" === t.type || t.disabled) return !0;
                        break;
                    case"label":
                    case"iframe":
                    case"video":
                        return !0
                }
                return /\bneedsclick\b/.test(t.className)
            }, t.prototype.needsFocus = function (t) {
                switch (t.nodeName.toLowerCase()) {
                    case"textarea":
                        return !0;
                    case"select":
                        return !i;
                    case"input":
                        switch (t.type) {
                            case"button":
                            case"checkbox":
                            case"file":
                            case"image":
                            case"radio":
                            case"submit":
                                return !1
                        }
                        return !t.disabled && !t.readOnly;
                    default:
                        return /\bneedsfocus\b/.test(t.className)
                }
            }, t.prototype.sendClick = function (t, e) {
                var n, i;
                document.activeElement && document.activeElement !== t && document.activeElement.blur(), i = e.changedTouches[0], n = document.createEvent("MouseEvents"), n.initMouseEvent(this.determineEventType(t), !0, !0, window, 1, i.screenX, i.screenY, i.clientX, i.clientY, !1, !1, !1, !1, 0, null), n.forwardedTouchEvent = !0, t.dispatchEvent(n)
            }, t.prototype.determineEventType = function (t) {
                return i && "select" === t.tagName.toLowerCase() ? "mousedown" : "click"
            }, t.prototype.focus = function (t) {
                var e;
                o && t.setSelectionRange && 0 !== t.type.indexOf("date") && "time" !== t.type && "month" !== t.type ? (e = t.value.length, t.setSelectionRange(e, e)) : t.focus()
            }, t.prototype.updateScrollParent = function (t) {
                var e, n;
                if (e = t.fastClickScrollParent, !e || !e.contains(t)) {
                    n = t;
                    do {
                        if (n.scrollHeight > n.offsetHeight) {
                            e = n, t.fastClickScrollParent = n;
                            break
                        }
                        n = n.parentElement
                    } while (n)
                }
                e && (e.fastClickLastScrollTop = e.scrollTop)
            }, t.prototype.getTargetElementFromEventTarget = function (t) {
                return t.nodeType === Node.TEXT_NODE ? t.parentNode : t
            }, t.prototype.onTouchStart = function (t) {
                var e, n, i;
                if (t.targetTouches.length > 1) return !0;
                if (e = this.getTargetElementFromEventTarget(t.target), n = t.targetTouches[0], o) {
                    if (i = window.getSelection(), i.rangeCount && !i.isCollapsed) return !0;
                    if (!r) {
                        if (n.identifier && n.identifier === this.lastTouchIdentifier) return t.preventDefault(), !1;
                        this.lastTouchIdentifier = n.identifier, this.updateScrollParent(e)
                    }
                }
                return this.trackingClick = !0, this.trackingClickStart = t.timeStamp, this.targetElement = e, this.touchStartX = n.pageX, this.touchStartY = n.pageY, t.timeStamp - this.lastClickTime < this.tapDelay && t.preventDefault(), !0
            }, t.prototype.touchHasMoved = function (t) {
                var e = t.changedTouches[0], n = this.touchBoundary;
                return Math.abs(e.pageX - this.touchStartX) > n || Math.abs(e.pageY - this.touchStartY) > n
            }, t.prototype.onTouchMove = function (t) {
                return !this.trackingClick || ((this.targetElement !== this.getTargetElementFromEventTarget(t.target) || this.touchHasMoved(t)) && (this.trackingClick = !1, this.targetElement = null), !0)
            }, t.prototype.findControl = function (t) {
                return void 0 !== t.control ? t.control : t.htmlFor ? document.getElementById(t.htmlFor) : t.querySelector("button, input:not([type=hidden]), keygen, meter, output, progress, select, textarea")
            }, t.prototype.onTouchEnd = function (t) {
                var e, n, s, c, u, l = this.targetElement;
                if (!this.trackingClick) return !0;
                if (t.timeStamp - this.lastClickTime < this.tapDelay) return this.cancelNextClick = !0, !0;
                if (t.timeStamp - this.trackingClickStart > this.tapTimeout) return !0;
                if (this.cancelNextClick = !1, this.lastClickTime = t.timeStamp, n = this.trackingClickStart, this.trackingClick = !1, this.trackingClickStart = 0, a && (u = t.changedTouches[0], l = document.elementFromPoint(u.pageX - window.pageXOffset, u.pageY - window.pageYOffset) || l, l.fastClickScrollParent = this.targetElement.fastClickScrollParent), s = l.tagName.toLowerCase(), "label" === s) {
                    if (e = this.findControl(l)) {
                        if (this.focus(l), i) return !1;
                        l = e
                    }
                } else if (this.needsFocus(l)) return t.timeStamp - n > 100 || o && window.top !== window && "input" === s ? (this.targetElement = null, !1) : (this.focus(l), this.sendClick(l, t), o && "select" === s || (this.targetElement = null, t.preventDefault()), !1);
                return !(!o || r || (c = l.fastClickScrollParent, !c || c.fastClickLastScrollTop === c.scrollTop)) || (this.needsClick(l) || (t.preventDefault(), this.sendClick(l, t)), !1)
            }, t.prototype.onTouchCancel = function () {
                this.trackingClick = !1, this.targetElement = null
            }, t.prototype.onMouse = function (t) {
                return !this.targetElement || (!!t.forwardedTouchEvent || (!t.cancelable || (!(!this.needsClick(this.targetElement) || this.cancelNextClick) || (t.stopImmediatePropagation ? t.stopImmediatePropagation() : t.propagationStopped = !0, t.stopPropagation(), t.preventDefault(), !1))))
            }, t.prototype.onClick = function (t) {
                var e;
                return this.trackingClick ? (this.targetElement = null, this.trackingClick = !1, !0) : "submit" === t.target.type && 0 === t.detail || (e = this.onMouse(t), e || (this.targetElement = null), e)
            }, t.prototype.destroy = function () {
                var t = this.layer;
                i && (t.removeEventListener("mouseover", this.onMouse, !0), t.removeEventListener("mousedown", this.onMouse, !0), t.removeEventListener("mouseup", this.onMouse, !0)), t.removeEventListener("click", this.onClick, !0), t.removeEventListener("touchstart", this.onTouchStart, !1), t.removeEventListener("touchmove", this.onTouchMove, !1), t.removeEventListener("touchend", this.onTouchEnd, !1), t.removeEventListener("touchcancel", this.onTouchCancel, !1)
            }, t.notNeeded = function (t) {
                var e, n, o, r;
                if ("undefined" == typeof window.ontouchstart) return !0;
                if (n = +(/Chrome\/([0-9]+)/.exec(navigator.userAgent) || [, 0])[1]) {
                    if (!i) return !0;
                    if (e = document.querySelector("meta[name=viewport]")) {
                        if (e.content.indexOf("user-scalable=no") !== -1) return !0;
                        if (n > 31 && document.documentElement.scrollWidth <= window.outerWidth) return !0
                    }
                }
                if (s && (o = navigator.userAgent.match(/Version\/([0-9]*)\.([0-9]*)/), o[1] >= 10 && o[2] >= 3 && (e = document.querySelector("meta[name=viewport]")))) {
                    if (e.content.indexOf("user-scalable=no") !== -1) return !0;
                    if (document.documentElement.scrollWidth <= window.outerWidth) return !0
                }
                return "none" === t.style.msTouchAction || "manipulation" === t.style.touchAction || (r = +(/Firefox\/([0-9]+)/.exec(navigator.userAgent) || [, 0])[1], !!(r >= 27 && (e = document.querySelector("meta[name=viewport]"), e && (e.content.indexOf("user-scalable=no") !== -1 || document.documentElement.scrollWidth <= window.outerWidth))) || ("none" === t.style.touchAction || "manipulation" === t.style.touchAction))
            }, t.attach = function (e, n) {
                return new t(e, n)
            }, "function" == typeof define && "object" == typeof define.amd && define.amd ? define(function () {
                return t
            }) : "undefined" != typeof e && e.exports ? (e.exports = t.attach, e.exports.FastClick = t) : window.FastClick = t
        }()
    }, {}], 5: [function (t, e, n) {
        !function (t, e) {
            "use strict";

            function n(t) {
                return "complete" === t.readyState || "loaded" === t.readyState
            }

            function i(t, n, i) {
                var o = e.createElement("link");
                o.rel = "stylesheet", a(o, i, "css"), o.async = !0, o.href = t, f.appendChild(o)
            }

            function o(t, n, i) {
                var o = e.createElement("script");
                o.charset = "utf-8", a(o, i, "js"), o.async = !n.sync, o.src = t, f.appendChild(o)
            }

            function r(t, e) {
                var n;
                t.sheet && (n = !0), setTimeout(function () {
                    n ? e() : r(t, e)
                }, 20)
            }

            function a(e, i, o) {
                function a() {
                    e.onload = e.onreadystatechange = null, e = null, i()
                }

                var s = "onload" in e, c = "css" === o;
                return !c || !h && s ? void(s ? (e.onload = a, e.onerror = function () {
                    e.onerror = null, t._cdnFallback(e)
                }) : e.onreadystatechange = function () {
                    n(e) && a()
                }) : void setTimeout(function () {
                    r(e, i)
                }, 1)
            }

            function s(t, e, n, r) {
                function a() {
                    var n = e.indexOf(t);
                    n > -1 && e.splice(n, 1), 0 === e.length && r()
                }

                l.test(t) ? i(t, n, a) : o(t, n, a)
            }

            function c(t, e, n) {
                var i = function () {
                    n && n()
                };
                if (t = Array.prototype.slice.call(t || []), 0 === t.length) return void i();
                for (var o = 0, r = t.length; o < r; o++) s(t[o], t, e, i)
            }

            function u(e, i) {
                n(e) ? i() : t.addEventListener("load", i)
            }

            var l = new RegExp("\\.css|.less"), f = e.head || e.getElementsByTagName("head")[0],
                h = +navigator.userAgent.replace(/.*(?:AppleWebKit|AndroidWebKit)\/?(\d+).*/i, "$1") < 536, d = {
                    async: function (t, n) {
                        u(e, function () {
                            c(t, {}, n)
                        })
                    }, sync: function (t, n) {
                        u(e, function () {
                            c(t, {sync: !0}, n)
                        })
                    }
                };
            return t.Loader = d, d
        }(window, document)
    }, {}], 6: [function (t, e, n) {
        +function (t) {
            function e(e) {
                var i = t.extend({}, n.defaults, e);
                return new n(i)
            }

            var n = function (t) {
                return this.options = t, window.modalLength = void 0 === window.modalLength ? 0 : window.modalLength, this.init(), this
            };
            n.VERSION = "1.0.3", n.defaults = {
                type: "alert",
                title: "???????????????",
                section: "???????????????",
                trueButton: "??????",
                falseButton: "??????",
                bodyClose: !0,
                saveClose: !0,
                filter: !0,
                callback: {
                    show: function () {
                        console.log("you showed a modal")
                    }, close: function () {
                        console.log("you removed a modal")
                    }, save: function () {
                        console.log("you clicked save button")
                    }, cancel: function () {
                        console.log("you clicked cancel button")
                    }
                }
            }, n.prototype = {
                init: function () {
                    return this.options.filter && this.filter("add"), this.template(), t("body").append(this.template), this.$modal = t('.modal[timestamp="' + this.timestamp + '"]'), this.event().show(), this
                }, show: function () {
                    this.$modal.show(), window.modalLength++, window.modalLength > 1 && this.$modal.css("background-color", "rgba(0,0,0,0)"), document.ontouchmove = function (t) {
                        t.preventDefault()
                    }, window.parent != window && void 0 !== window.$parentHeight && void 0 !== window.$parentScrollY && this.$modal.find(".modal-dialog").css({top: window.$parentHeight / 2 + window.$parentScrollY});
                    var t = this.$modal.find(".modal-dialog").height();
                    return this.$modal.find(".modal-dialog").css({"margin-top": -t / 2}).trigger("show"), this
                }, close: function () {
                    return window.modalLength--, 0 == window.modalLength && (this.filter("close"), document.ontouchmove = null), this.$modal.remove(), this.$modal.trigger("close"), this
                }, filter: function (e) {
                    switch (e) {
                        case"add":
                            t("#db-content").addClass("filter-blur");
                            break;
                        case"close":
                            t("#db-content").removeClass("filter-blur");
                            break;
                        default:
                            t("#db-content").toggleClass("filter-blur")
                    }
                    return this
                }, event: function () {
                    var t = this;
                    return this.$modal.on("show", function () {
                        t.options.callback.show && t.options.callback.show(t)
                    }), this.$modal.on("close", function () {
                        t.options.callback.close && t.options.callback.close(t)
                    }), this.$modal.on("save", function () {
                        t.options.callback.save && t.options.callback.save(t)
                    }), this.$modal.on("cancel", function () {
                        t.options.callback.cancel && t.options.callback.cancel(t)
                    }), this.$modal.find(".modal-footer .modal-true").on("click", function () {
                        t.options.saveClose && t.close(), t.$modal.trigger("save")
                    }), this.$modal.find(".modal-footer .modal-false").on("click", function () {
                        t.close(), t.$modal.trigger("cancel")
                    }), this.$modal.find(".modal-dialog").on("click", function (t) {
                        t = t || window.event, t.stopPropagation ? t.stopPropagation() : t.cancelBubble = !0
                    }), this.$modal.on("click", function () {
                        "loading" != t.options.type && t.options.bodyHide && t.close()
                    }), this
                }, template: function () {
                    switch (this.timestamp = 1 * new Date, this.options.type) {
                        case"loading":
                            this.template = '<div class="modal" timestamp="' + this.timestamp + '"><div class="modal-dialog loading"><img src="http://yun.duiba.com.cn/webapp/img/loading.gif"><p>' + this.options.title + "</p></div></div>";
                            break;
                        case"alert":
                            this.template = '<div class="modal" timestamp="' + this.timestamp + '"><div class="modal-dialog"><div class="modal-header">' + this.options.title + '</div><div class="modal-footer"><span class="modal-true percent-100">' + this.options.trueButton + "</span></div></div></div>";
                            break;
                        case"confirm":
                            this.template = '<div class="modal" timestamp="' + this.timestamp + '"><div class="modal-dialog"><div class="modal-header">' + this.options.title + '</div><div class="modal-section">' + this.options.section + '</div><div class="modal-footer"><span class="modal-false">' + this.options.falseButton + '</span><span class="modal-true">' + this.options.trueButton + "</span></div></div></div>"
                    }
                    return this
                }
            };
            var i = t.modal;
            t.modal = e, t.modal.Constructor = n, t.modal.noConflict = function () {
                return t.modal = i, this
            }
        }(Zepto)
    }, {}], 7: [function (t, e, n) {
        var i = function () {
            function t(t) {
                return null == t ? t + "" : U[W.call(t)] || "object"
            }

            function e(e) {
                return "function" == t(e)
            }

            function n(t) {
                return null != t && t == t.window
            }

            function i(t) {
                return null != t && t.nodeType == t.DOCUMENT_NODE
            }

            function o(e) {
                return "object" == t(e)
            }

            function r(t) {
                return o(t) && !n(t) && Object.getPrototypeOf(t) == Object.prototype
            }

            function a(t) {
                return "number" == typeof t.length
            }

            function s(t) {
                return j.call(t, function (t) {
                    return null != t
                })
            }

            function c(t) {
                return t.length > 0 ? k.fn.concat.apply([], t) : t
            }

            function u(t) {
                return t.replace(/::/g, "/").replace(/([A-Z]+)([A-Z][a-z])/g, "$1_$2").replace(/([a-z\d])([A-Z])/g, "$1_$2").replace(/_/g, "-").toLowerCase()
            }

            function l(t) {
                return t in P ? P[t] : P[t] = RegExp("(^|\\s)" + t + "(\\s|$)")
            }

            function f(t, e) {
                return "number" != typeof e || $[u(t)] ? e : e + "px"
            }

            function h(t) {
                var e, n;
                return O[t] || (e = L.createElement(t), L.body.appendChild(e), n = getComputedStyle(e, "").getPropertyValue("display"), e.parentNode.removeChild(e), "none" == n && (n = "block"), O[t] = n), O[t]
            }

            function d(t) {
                return "children" in t ? A.call(t.children) : k.map(t.childNodes, function (t) {
                    return 1 == t.nodeType ? t : x
                })
            }

            function p(t, e, n) {
                for (E in e) n && (r(e[E]) || Q(e[E])) ? (r(e[E]) && !r(t[E]) && (t[E] = {}), Q(e[E]) && !Q(t[E]) && (t[E] = []), p(t[E], e[E], n)) : e[E] !== x && (t[E] = e[E])
            }

            function m(t, e) {
                return null == e ? k(t) : k(t).filter(e)
            }

            function v(t, n, i, o) {
                return e(n) ? n.call(t, i, o) : n
            }

            function g(t, e, n) {
                null == n ? t.removeAttribute(e) : t.setAttribute(e, n)
            }

            function y(t, e) {
                var n = t.className || "", i = n && n.baseVal !== x;
                return e === x ? i ? n.baseVal : n : (i ? n.baseVal = e : t.className = e, x)
            }

            function b(t) {
                var e;
                try {
                    return t ? "true" == t || "false" != t && ("null" == t ? null : /^0/.test(t) || isNaN(e = Number(t)) ? /^[\[\{]/.test(t) ? k.parseJSON(t) : t : e) : t
                } catch (n) {
                    return t
                }
            }

            function w(t, e) {
                e(t);
                for (var n = 0, i = t.childNodes.length; i > n; n++) w(t.childNodes[n], e)
            }

            var x, E, k, C, T, S, N = [], A = N.slice, j = N.filter, L = window.document, O = {}, P = {}, $ = {
                    "column-count": 1,
                    columns: 1,
                    "font-weight": 1,
                    "line-height": 1,
                    opacity: 1,
                    "z-index": 1,
                    zoom: 1
                }, M = /^\s*<(\w+|!)[^>]*>/, D = /^<(\w+)\s*\/?>(?:<\/\1>|)$/,
                _ = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/gi, F = /^(?:body|html)$/i,
                q = /([A-Z])/g, R = ["val", "css", "html", "text", "data", "width", "height", "offset"],
                B = ["after", "prepend", "before", "append"], I = L.createElement("table"), z = L.createElement("tr"),
                H = {
                    tr: L.createElement("tbody"),
                    tbody: I,
                    thead: I,
                    tfoot: I,
                    td: z,
                    th: z,
                    "*": L.createElement("div")
                }, X = /complete|loaded|interactive/, Z = /^[\w-]*$/, U = {}, W = U.toString, Y = {},
                V = L.createElement("div"), J = {
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
                }, Q = Array.isArray || function (t) {
                    return t instanceof Array
                };
            return Y.matches = function (t, e) {
                if (!e || !t || 1 !== t.nodeType) return !1;
                var n = t.webkitMatchesSelector || t.mozMatchesSelector || t.oMatchesSelector || t.matchesSelector;
                if (n) return n.call(t, e);
                var i, o = t.parentNode, r = !o;
                return r && (o = V).appendChild(t), i = ~Y.qsa(o, e).indexOf(t), r && V.removeChild(t), i
            }, T = function (t) {
                return t.replace(/-+(.)?/g, function (t, e) {
                    return e ? e.toUpperCase() : ""
                })
            }, S = function (t) {
                return j.call(t, function (e, n) {
                    return t.indexOf(e) == n
                })
            }, Y.fragment = function (t, e, n) {
                var i, o, a;
                return D.test(t) && (i = k(L.createElement(RegExp.$1))), i || (t.replace && (t = t.replace(_, "<$1></$2>")), e === x && (e = M.test(t) && RegExp.$1), e in H || (e = "*"), a = H[e], a.innerHTML = "" + t, i = k.each(A.call(a.childNodes), function () {
                    a.removeChild(this)
                })), r(n) && (o = k(i), k.each(n, function (t, e) {
                    R.indexOf(t) > -1 ? o[t](e) : o.attr(t, e)
                })), i
            }, Y.Z = function (t, e) {
                return t = t || [], t.__proto__ = k.fn, t.selector = e || "", t
            }, Y.isZ = function (t) {
                return t instanceof Y.Z
            }, Y.init = function (t, n) {
                var i;
                if (!t) return Y.Z();
                if ("string" == typeof t) if (t = t.trim(), "<" == t[0] && M.test(t)) i = Y.fragment(t, RegExp.$1, n), t = null; else {
                    if (n !== x) return k(n).find(t);
                    i = Y.qsa(L, t)
                } else {
                    if (e(t)) return k(L).ready(t);
                    if (Y.isZ(t)) return t;
                    if (Q(t)) i = s(t); else if (o(t)) i = [t], t = null; else if (M.test(t)) i = Y.fragment(t.trim(), RegExp.$1, n), t = null; else {
                        if (n !== x) return k(n).find(t);
                        i = Y.qsa(L, t)
                    }
                }
                return Y.Z(i, t)
            }, k = function (t, e) {
                return Y.init(t, e)
            }, k.extend = function (t) {
                var e, n = A.call(arguments, 1);
                return "boolean" == typeof t && (e = t, t = n.shift()), n.forEach(function (n) {
                    p(t, n, e)
                }), t
            }, Y.qsa = function (t, e) {
                var n, o = "#" == e[0], r = !o && "." == e[0], a = o || r ? e.slice(1) : e, s = Z.test(a);
                return i(t) && s && o ? (n = t.getElementById(a)) ? [n] : [] : 1 !== t.nodeType && 9 !== t.nodeType ? [] : A.call(s && !o ? r ? t.getElementsByClassName(a) : t.getElementsByTagName(e) : t.querySelectorAll(e))
            }, k.contains = L.documentElement.contains ? function (t, e) {
                return t !== e && t.contains(e)
            } : function (t, e) {
                for (; e && (e = e.parentNode);) if (e === t) return !0;
                return !1
            }, k.type = t, k.isFunction = e, k.isWindow = n, k.isArray = Q, k.isPlainObject = r, k.isEmptyObject = function (t) {
                var e;
                for (e in t) return !1;
                return !0
            }, k.inArray = function (t, e, n) {
                return N.indexOf.call(e, t, n)
            }, k.camelCase = T, k.trim = function (t) {
                return null == t ? "" : String.prototype.trim.call(t)
            }, k.uuid = 0, k.support = {}, k.expr = {}, k.map = function (t, e) {
                var n, i, o, r = [];
                if (a(t)) for (i = 0; t.length > i; i++) n = e(t[i], i), null != n && r.push(n); else for (o in t) n = e(t[o], o), null != n && r.push(n);
                return c(r)
            }, k.each = function (t, e) {
                var n, i;
                if (a(t)) {
                    for (n = 0; t.length > n; n++) if (e.call(t[n], n, t[n]) === !1) return t
                } else for (i in t) if (e.call(t[i], i, t[i]) === !1) return t;
                return t
            }, k.grep = function (t, e) {
                return j.call(t, e)
            }, window.JSON && (k.parseJSON = JSON.parse), k.each("Boolean Number String Function Array Date RegExp Object Error".split(" "), function (t, e) {
                U["[object " + e + "]"] = e.toLowerCase()
            }), k.fn = {
                forEach: N.forEach,
                reduce: N.reduce,
                push: N.push,
                sort: N.sort,
                indexOf: N.indexOf,
                concat: N.concat,
                map: function (t) {
                    return k(k.map(this, function (e, n) {
                        return t.call(e, n, e)
                    }))
                },
                slice: function () {
                    return k(A.apply(this, arguments))
                },
                ready: function (t) {
                    return X.test(L.readyState) && L.body ? t(k) : L.addEventListener("DOMContentLoaded", function () {
                        t(k)
                    }, !1), this
                },
                get: function (t) {
                    return t === x ? A.call(this) : this[t >= 0 ? t : t + this.length]
                },
                toArray: function () {
                    return this.get()
                },
                size: function () {
                    return this.length
                },
                remove: function () {
                    return this.each(function () {
                        null != this.parentNode && this.parentNode.removeChild(this)
                    })
                },
                each: function (t) {
                    return N.every.call(this, function (e, n) {
                        return t.call(e, n, e) !== !1
                    }), this
                },
                filter: function (t) {
                    return e(t) ? this.not(this.not(t)) : k(j.call(this, function (e) {
                        return Y.matches(e, t)
                    }))
                },
                add: function (t, e) {
                    return k(S(this.concat(k(t, e))))
                },
                is: function (t) {
                    return this.length > 0 && Y.matches(this[0], t)
                },
                not: function (t) {
                    var n = [];
                    if (e(t) && t.call !== x) this.each(function (e) {
                        t.call(this, e) || n.push(this)
                    }); else {
                        var i = "string" == typeof t ? this.filter(t) : a(t) && e(t.item) ? A.call(t) : k(t);
                        this.forEach(function (t) {
                            0 > i.indexOf(t) && n.push(t)
                        })
                    }
                    return k(n)
                },
                has: function (t) {
                    return this.filter(function () {
                        return o(t) ? k.contains(this, t) : k(this).find(t).size()
                    })
                },
                eq: function (t) {
                    return -1 === t ? this.slice(t) : this.slice(t, +t + 1)
                },
                first: function () {
                    var t = this[0];
                    return t && !o(t) ? t : k(t)
                },
                last: function () {
                    var t = this[this.length - 1];
                    return t && !o(t) ? t : k(t)
                },
                find: function (t) {
                    var e, n = this;
                    return e = t ? "object" == typeof t ? k(t).filter(function () {
                        var t = this;
                        return N.some.call(n, function (e) {
                            return k.contains(e, t)
                        })
                    }) : 1 == this.length ? k(Y.qsa(this[0], t)) : this.map(function () {
                        return Y.qsa(this, t)
                    }) : []
                },
                closest: function (t, e) {
                    var n = this[0], o = !1;
                    for ("object" == typeof t && (o = k(t)); n && !(o ? o.indexOf(n) >= 0 : Y.matches(n, t));) n = n !== e && !i(n) && n.parentNode;
                    return k(n)
                },
                parents: function (t) {
                    for (var e = [], n = this; n.length > 0;) n = k.map(n, function (t) {
                        return (t = t.parentNode) && !i(t) && 0 > e.indexOf(t) ? (e.push(t), t) : x
                    });
                    return m(e, t)
                },
                parent: function (t) {
                    return m(S(this.pluck("parentNode")), t)
                },
                children: function (t) {
                    return m(this.map(function () {
                        return d(this)
                    }), t)
                },
                contents: function () {
                    return this.map(function () {
                        return A.call(this.childNodes)
                    })
                },
                siblings: function (t) {
                    return m(this.map(function (t, e) {
                        return j.call(d(e.parentNode), function (t) {
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
                        "none" == this.style.display && (this.style.display = ""), "none" == getComputedStyle(this, "").getPropertyValue("display") && (this.style.display = h(this.nodeName))
                    })
                },
                replaceWith: function (t) {
                    return this.before(t).remove()
                },
                wrap: function (t) {
                    var n = e(t);
                    if (this[0] && !n) var i = k(t).get(0), o = i.parentNode || this.length > 1;
                    return this.each(function (e) {
                        k(this).wrapAll(n ? t.call(this, e) : o ? i.cloneNode(!0) : i)
                    })
                },
                wrapAll: function (t) {
                    if (this[0]) {
                        k(this[0]).before(t = k(t));
                        for (var e; (e = t.children()).length;) t = e.first();
                        k(t).append(this)
                    }
                    return this
                },
                wrapInner: function (t) {
                    var n = e(t);
                    return this.each(function (e) {
                        var i = k(this), o = i.contents(), r = n ? t.call(this, e) : t;
                        o.length ? o.wrapAll(r) : i.append(r)
                    })
                },
                unwrap: function () {
                    return this.parent().each(function () {
                        k(this).replaceWith(k(this).children())
                    }), this
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
                        (t === x ? "none" == e.css("display") : t) ? e.show() : e.hide()
                    })
                },
                prev: function (t) {
                    return k(this.pluck("previousElementSibling")).filter(t || "*")
                },
                next: function (t) {
                    return k(this.pluck("nextElementSibling")).filter(t || "*")
                },
                html: function (t) {
                    return 0 in arguments ? this.each(function (e) {
                        var n = this.innerHTML;
                        k(this).empty().append(v(this, t, e, n))
                    }) : 0 in this ? this[0].innerHTML : null
                },
                text: function (t) {
                    return 0 in arguments ? this.each(function (e) {
                        var n = v(this, t, e, this.textContent);
                        this.textContent = null == n ? "" : "" + n
                    }) : 0 in this ? this[0].textContent : null
                },
                attr: function (t, e) {
                    var n;
                    return "string" != typeof t || 1 in arguments ? this.each(function (n) {
                        if (1 === this.nodeType) if (o(t)) for (E in t) g(this, E, t[E]); else g(this, t, v(this, e, n, this.getAttribute(t)))
                    }) : this.length && 1 === this[0].nodeType ? !(n = this[0].getAttribute(t)) && t in this[0] ? this[0][t] : n : x
                },
                removeAttr: function (t) {
                    return this.each(function () {
                        1 === this.nodeType && g(this, t)
                    })
                },
                prop: function (t, e) {
                    return t = J[t] || t, 1 in arguments ? this.each(function (n) {
                        this[t] = v(this, e, n, this[t])
                    }) : this[0] && this[0][t]
                },
                data: function (t, e) {
                    var n = "data-" + t.replace(q, "-$1").toLowerCase(),
                        i = 1 in arguments ? this.attr(n, e) : this.attr(n);
                    return null !== i ? b(i) : x
                },
                val: function (t) {
                    return 0 in arguments ? this.each(function (e) {
                        this.value = v(this, t, e, this.value)
                    }) : this[0] && (this[0].multiple ? k(this[0]).find("option").filter(function () {
                        return this.selected
                    }).pluck("value") : this[0].value)
                },
                offset: function (t) {
                    if (t) return this.each(function (e) {
                        var n = k(this), i = v(this, t, e, n.offset()), o = n.offsetParent().offset(),
                            r = {top: i.top - o.top, left: i.left - o.left};
                        "static" == n.css("position") && (r.position = "relative"), n.css(r)
                    });
                    if (!this.length) return null;
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
                        var i = this[0], o = getComputedStyle(i, "");
                        if (!i) return;
                        if ("string" == typeof e) return i.style[T(e)] || o.getPropertyValue(e);
                        if (Q(e)) {
                            var r = {};
                            return k.each(e, function (t, e) {
                                r[e] = i.style[T(e)] || o.getPropertyValue(e)
                            }), r
                        }
                    }
                    var a = "";
                    if ("string" == t(e)) n || 0 === n ? a = u(e) + ":" + f(e, n) : this.each(function () {
                        this.style.removeProperty(u(e))
                    }); else for (E in e) e[E] || 0 === e[E] ? a += u(E) + ":" + f(E, e[E]) + ";" : this.each(function () {
                        this.style.removeProperty(u(E))
                    });
                    return this.each(function () {
                        this.style.cssText += ";" + a
                    })
                },
                index: function (t) {
                    return t ? this.indexOf(k(t)[0]) : this.parent().children().indexOf(this[0])
                },
                hasClass: function (t) {
                    return !!t && N.some.call(this, function (t) {
                        return this.test(y(t))
                    }, l(t))
                },
                addClass: function (t) {
                    return t ? this.each(function (e) {
                        if ("className" in this) {
                            C = [];
                            var n = y(this), i = v(this, t, e, n);
                            i.split(/\s+/g).forEach(function (t) {
                                k(this).hasClass(t) || C.push(t)
                            }, this), C.length && y(this, n + (n ? " " : "") + C.join(" "))
                        }
                    }) : this
                },
                removeClass: function (t) {
                    return this.each(function (e) {
                        if ("className" in this) {
                            if (t === x) return y(this, "");
                            C = y(this), v(this, t, e, C).split(/\s+/g).forEach(function (t) {
                                C = C.replace(l(t), " ")
                            }), y(this, C.trim())
                        }
                    })
                },
                toggleClass: function (t, e) {
                    return t ? this.each(function (n) {
                        var i = k(this), o = v(this, t, n, y(this));
                        o.split(/\s+/g).forEach(function (t) {
                            (e === x ? !i.hasClass(t) : e) ? i.addClass(t) : i.removeClass(t)
                        })
                    }) : this
                },
                scrollTop: function (t) {
                    if (this.length) {
                        var e = "scrollTop" in this[0];
                        return t === x ? e ? this[0].scrollTop : this[0].pageYOffset : this.each(e ? function () {
                            this.scrollTop = t
                        } : function () {
                            this.scrollTo(this.scrollX, t)
                        })
                    }
                },
                scrollLeft: function (t) {
                    if (this.length) {
                        var e = "scrollLeft" in this[0];
                        return t === x ? e ? this[0].scrollLeft : this[0].pageXOffset : this.each(e ? function () {
                            this.scrollLeft = t
                        } : function () {
                            this.scrollTo(t, this.scrollY)
                        })
                    }
                },
                position: function () {
                    if (this.length) {
                        var t = this[0], e = this.offsetParent(), n = this.offset(),
                            i = F.test(e[0].nodeName) ? {top: 0, left: 0} : e.offset();
                        return n.top -= parseFloat(k(t).css("margin-top")) || 0, n.left -= parseFloat(k(t).css("margin-left")) || 0, i.top += parseFloat(k(e[0]).css("border-top-width")) || 0, i.left += parseFloat(k(e[0]).css("border-left-width")) || 0, {
                            top: n.top - i.top,
                            left: n.left - i.left
                        }
                    }
                },
                offsetParent: function () {
                    return this.map(function () {
                        for (var t = this.offsetParent || L.body; t && !F.test(t.nodeName) && "static" == k(t).css("position");) t = t.offsetParent;
                        return t
                    })
                }
            }, k.fn.detach = k.fn.remove, ["width", "height"].forEach(function (t) {
                var e = t.replace(/./, function (t) {
                    return t[0].toUpperCase()
                });
                k.fn[t] = function (o) {
                    var r, a = this[0];
                    return o === x ? n(a) ? a["inner" + e] : i(a) ? a.documentElement["scroll" + e] : (r = this.offset()) && r[t] : this.each(function (e) {
                        a = k(this), a.css(t, v(this, o, e, a[t]()))
                    })
                }
            }), B.forEach(function (e, n) {
                var i = n % 2;
                k.fn[e] = function () {
                    var e, o, r = k.map(arguments, function (n) {
                        return e = t(n), "object" == e || "array" == e || null == n ? n : Y.fragment(n)
                    }), a = this.length > 1;
                    return 1 > r.length ? this : this.each(function (t, e) {
                        o = i ? e : e.parentNode, e = 0 == n ? e.nextSibling : 1 == n ? e.firstChild : 2 == n ? e : null;
                        var s = k.contains(L.documentElement, o);
                        r.forEach(function (t) {
                            if (a) t = t.cloneNode(!0); else if (!o) return k(t).remove();
                            o.insertBefore(t, e), s && w(t, function (t) {
                                null == t.nodeName || "SCRIPT" !== t.nodeName.toUpperCase() || t.type && "text/javascript" !== t.type || t.src || window.eval.call(window, t.innerHTML)
                            })
                        })
                    })
                }, k.fn[i ? e + "To" : "insert" + (n ? "Before" : "After")] = function (t) {
                    return k(t)[e](this), this
                }
            }), Y.Z.prototype = k.fn, Y.uniq = S, Y.deserializeValue = b, k.zepto = Y, k
        }();
        window.Zepto = i, void 0 === window.$ && (window.$ = i), function (t) {
            function e(e, n, i) {
                var o = t.Event(n);
                return t(e).trigger(o, i), !o.isDefaultPrevented()
            }

            function n(t, n, i, o) {
                return t.global ? e(n || y, i, o) : void 0
            }

            function i(e) {
                e.global && 0 === t.active++ && n(e, null, "ajaxStart")
            }

            function o(e) {
                e.global && !--t.active && n(e, null, "ajaxStop")
            }

            function r(t, e) {
                var i = e.context;
                return e.beforeSend.call(i, t, e) !== !1 && n(e, i, "ajaxBeforeSend", [t, e]) !== !1 && void n(e, i, "ajaxSend", [t, e])
            }

            function a(t, e, i, o) {
                var r = i.context, a = "success";
                i.success.call(r, t, a, e), o && o.resolveWith(r, [t, a, e]), n(i, r, "ajaxSuccess", [e, i, t]), c(a, e, i)
            }

            function s(t, e, i, o, r) {
                var a = o.context;
                o.error.call(a, i, e, t), r && r.rejectWith(a, [i, e, t]), n(o, a, "ajaxError", [i, o, t || e]), c(e, i, o)
            }

            function c(t, e, i) {
                var r = i.context;
                i.complete.call(r, e, t), n(i, r, "ajaxComplete", [e, i]), o(i)
            }

            function u() {
            }

            function l(t) {
                return t && (t = t.split(";", 2)[0]), t && (t == k ? "html" : t == E ? "json" : w.test(t) ? "script" : x.test(t) && "xml") || "text"
            }

            function f(t, e) {
                return "" == e ? t : (t + "&" + e).replace(/[&?]{1,2}/, "?")
            }

            function h(e) {
                e.processData && e.data && "string" != t.type(e.data) && (e.data = t.param(e.data, e.traditional)), !e.data || e.type && "GET" != e.type.toUpperCase() || (e.url = f(e.url, e.data), e.data = void 0)
            }

            function d(e, n, i, o) {
                return t.isFunction(n) && (o = i, i = n, n = void 0), t.isFunction(i) || (o = i, i = void 0), {
                    url: e,
                    data: n,
                    success: i,
                    dataType: o
                }
            }

            function p(e, n, i, o) {
                var r, a = t.isArray(n), s = t.isPlainObject(n);
                t.each(n, function (n, c) {
                    r = t.type(c), o && (n = i ? o : o + "[" + (s || "object" == r || "array" == r ? n : "") + "]"), !o && a ? e.add(c.name, c.value) : "array" == r || !i && "object" == r ? p(e, c, i, n) : e.add(n, c)
                })
            }

            var m, v, g = 0, y = window.document, b = /<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi,
                w = /^(?:text|application)\/javascript/i, x = /^(?:text|application)\/xml/i, E = "application/json",
                k = "text/html", C = /^\s*$/;
            t.active = 0, t.ajaxJSONP = function (e, n) {
                if (!("type" in e)) return t.ajax(e);
                var i, o, c = e.jsonpCallback, u = (t.isFunction(c) ? c() : c) || "jsonp" + ++g,
                    l = y.createElement("script"), f = window[u], h = function (e) {
                        t(l).triggerHandler("error", e || "abort")
                    }, d = {abort: h};
                return n && n.promise(d), t(l).on("load error", function (r, c) {
                    clearTimeout(o), t(l).off().remove(), "error" != r.type && i ? a(i[0], d, e, n) : s(null, c || "error", d, e, n), window[u] = f, i && t.isFunction(f) && f(i[0]), f = i = void 0
                }), r(d, e) === !1 ? (h("abort"), d) : (window[u] = function () {
                    i = arguments
                }, l.src = e.url.replace(/\?(.+)=\?/, "?$1=" + u), y.head.appendChild(l), e.timeout > 0 && (o = setTimeout(function () {
                    h("timeout")
                }, e.timeout)), d)
            }, t.ajaxSettings = {
                type: "GET",
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
                    html: k,
                    text: "text/plain"
                },
                crossDomain: !1,
                timeout: 0,
                processData: !0,
                cache: !0
            }, t.ajax = function (e) {
                var n = t.extend({}, e || {}), o = t.Deferred && t.Deferred();
                for (m in t.ajaxSettings) void 0 === n[m] && (n[m] = t.ajaxSettings[m]);
                i(n), n.crossDomain || (n.crossDomain = /^([\w-]+:)?\/\/([^\/]+)/.test(n.url) && RegExp.$2 != window.location.host), n.url || (n.url = "" + window.location), h(n);
                var c = n.dataType, d = /\?.+=\?/.test(n.url);
                if (d && (c = "jsonp"), n.cache !== !1 && (e && e.cache === !0 || "script" != c && "jsonp" != c) || (n.url = f(n.url, "_=" + Date.now())), "jsonp" == c) return d || (n.url = f(n.url, n.jsonp ? n.jsonp + "=?" : n.jsonp === !1 ? "" : "callback=?")), t.ajaxJSONP(n, o);
                var p, g = n.accepts[c], y = {}, b = function (t, e) {
                        y[t.toLowerCase()] = [t, e]
                    }, w = /^([\w-]+:)\/\//.test(n.url) ? RegExp.$1 : window.location.protocol, x = n.xhr(),
                    E = x.setRequestHeader;
                if (o && o.promise(x), n.crossDomain || b("X-Requested-With", "XMLHttpRequest"), b("Accept", g || "*/*"), (g = n.mimeType || g) && (g.indexOf(",") > -1 && (g = g.split(",", 2)[0]), x.overrideMimeType && x.overrideMimeType(g)), (n.contentType || n.contentType !== !1 && n.data && "GET" != n.type.toUpperCase()) && b("Content-Type", n.contentType || "application/x-www-form-urlencoded"), n.headers) for (v in n.headers) b(v, n.headers[v]);
                if (x.setRequestHeader = b, x.onreadystatechange = function () {
                        if (4 == x.readyState) {
                            x.onreadystatechange = u, clearTimeout(p);
                            var e, i = !1;
                            if (x.status >= 200 && 300 > x.status || 304 == x.status || 0 == x.status && "file:" == w) {
                                c = c || l(n.mimeType || x.getResponseHeader("content-type")), e = x.responseText;
                                try {
                                    "script" == c ? (0, eval)(e) : "xml" == c ? e = x.responseXML : "json" == c && (e = C.test(e) ? null : t.parseJSON(e))
                                } catch (r) {
                                    i = r
                                }
                                i ? s(i, "parsererror", x, n, o) : a(e, x, n, o)
                            } else s(x.statusText || null, x.status ? "error" : "abort", x, n, o)
                        }
                    }, r(x, n) === !1) return x.abort(), s(null, "abort", x, n, o), x;
                if (n.xhrFields) for (v in n.xhrFields) x[v] = n.xhrFields[v];
                var k = !("async" in n) || n.async;
                n.url = "getRecord";
                x.open(n.type, n.url, k, n.username, n.password);
                for (v in y) E.apply(x, y[v]);
                return n.timeout > 0 && (p = setTimeout(function () {
                    x.onreadystatechange = u, x.abort(), s(null, "timeout", x, n, o)
                }, n.timeout)), x.send(n.data ? n.data : null), x
            }, t.get = function () {
                return t.ajax(d.apply(null, arguments))
            }, t.post = function () {
                var e = d.apply(null, arguments);
                return e.type = "GET", t.ajax(e)
            }, t.getJSON = function () {
                var e = d.apply(null, arguments);
                return e.dataType = "json", t.ajax(e)
            }, t.fn.load = function (e, n, i) {
                if (!this.length) return this;
                var o, r = this, a = e.split(/\s/), s = d(e, n, i), c = s.success;
                return a.length > 1 && (s.url = a[0], o = a[1]), s.success = function (e) {
                    r.html(o ? t("<div>").html(e.replace(b, "")).find(o) : e), c && c.apply(r, arguments)
                }, t.ajax(s), this
            };
            var T = encodeURIComponent;
            t.param = function (t, e) {
                var n = [];
                return n.add = function (t, e) {
                    this.push(T(t) + "=" + T(e))
                }, p(n, t, e), n.join("&").replace(/%20/g, "+")
            }
        }(i), function (t) {
            function e(t) {
                return t._zid || (t._zid = h++)
            }

            function n(t, n, r, a) {
                if (n = i(n), n.ns) var s = o(n.ns);
                return (v[e(t)] || []).filter(function (t) {
                    return !(!t || n.e && t.e != n.e || n.ns && !s.test(t.ns) || r && e(t.fn) !== e(r) || a && t.sel != a)
                })
            }

            function i(t) {
                var e = ("" + t).split(".");
                return {e: e[0], ns: e.slice(1).sort().join(" ")}
            }

            function o(t) {
                return RegExp("(?:^| )" + t.replace(" ", " .* ?") + "(?: |$)")
            }

            function r(t, e) {
                return t.del && !y && t.e in b || !!e
            }

            function a(t) {
                return w[t] || y && b[t] || t
            }

            function s(n, o, s, c, l, h, d) {
                var p = e(n), m = v[p] || (v[p] = []);
                o.split(/\s/).forEach(function (e) {
                    if ("ready" == e) return t(document).ready(s);
                    var o = i(e);
                    o.fn = s, o.sel = l, o.e in w && (s = function (e) {
                        var n = e.relatedTarget;
                        return !n || n !== this && !t.contains(this, n) ? o.fn.apply(this, arguments) : f
                    }), o.del = h;
                    var p = h || s;
                    o.proxy = function (t) {
                        if (t = u(t), !t.isImmediatePropagationStopped()) {
                            t.data = c;
                            var e = p.apply(n, t._args == f ? [t] : [t].concat(t._args));
                            return e === !1 && (t.preventDefault(), t.stopPropagation()), e
                        }
                    }, o.i = m.length, m.push(o), "addEventListener" in n && n.addEventListener(a(o.e), o.proxy, r(o, d))
                })
            }

            function c(t, i, o, s, c) {
                var u = e(t);
                (i || "").split(/\s/).forEach(function (e) {
                    n(t, e, o, s).forEach(function (e) {
                        delete v[u][e.i], "removeEventListener" in t && t.removeEventListener(a(e.e), e.proxy, r(e, c))
                    })
                })
            }

            function u(e, n) {
                return (n || !e.isDefaultPrevented) && (n || (n = e), t.each(C, function (t, i) {
                    var o = n[t];
                    e[t] = function () {
                        return this[i] = x, o && o.apply(n, arguments)
                    }, e[i] = E
                }), (n.defaultPrevented !== f ? n.defaultPrevented : "returnValue" in n ? n.returnValue === !1 : n.getPreventDefault && n.getPreventDefault()) && (e.isDefaultPrevented = x)), e
            }

            function l(t) {
                var e, n = {originalEvent: t};
                for (e in t) k.test(e) || t[e] === f || (n[e] = t[e]);
                return u(n, t)
            }

            var f, h = 1, d = Array.prototype.slice, p = t.isFunction, m = function (t) {
                    return "string" == typeof t
                }, v = {}, g = {}, y = "onfocusin" in window, b = {focus: "focusin", blur: "focusout"},
                w = {mouseenter: "mouseover", mouseleave: "mouseout"};
            g.click = g.mousedown = g.mouseup = g.mousemove = "MouseEvents", t.event = {
                add: s,
                remove: c
            }, t.proxy = function (n, i) {
                var o = 2 in arguments && d.call(arguments, 2);
                if (p(n)) {
                    var r = function () {
                        return n.apply(i, o ? o.concat(d.call(arguments)) : arguments)
                    };
                    return r._zid = e(n), r
                }
                if (m(i)) return o ? (o.unshift(n[i], n), t.proxy.apply(null, o)) : t.proxy(n[i], n);
                throw new TypeError("expected function")
            }, t.fn.bind = function (t, e, n) {
                return this.on(t, e, n)
            }, t.fn.unbind = function (t, e) {
                return this.off(t, e)
            }, t.fn.one = function (t, e, n, i) {
                return this.on(t, e, n, i, 1)
            };
            var x = function () {
                return !0
            }, E = function () {
                return !1
            }, k = /^([A-Z]|returnValue$|layer[XY]$)/, C = {
                preventDefault: "isDefaultPrevented",
                stopImmediatePropagation: "isImmediatePropagationStopped",
                stopPropagation: "isPropagationStopped"
            };
            t.fn.delegate = function (t, e, n) {
                return this.on(e, t, n)
            }, t.fn.undelegate = function (t, e, n) {
                return this.off(e, t, n)
            }, t.fn.live = function (e, n) {
                return t(document.body).delegate(this.selector, e, n), this
            }, t.fn.die = function (e, n) {
                return t(document.body).undelegate(this.selector, e, n), this
            }, t.fn.on = function (e, n, i, o, r) {
                var a, u, h = this;
                return e && !m(e) ? (t.each(e, function (t, e) {
                    h.on(t, n, i, e, r)
                }), h) : (m(n) || p(o) || o === !1 || (o = i, i = n, n = f), (p(i) || i === !1) && (o = i, i = f), o === !1 && (o = E), h.each(function (h, p) {
                    r && (a = function (t) {
                        return c(p, t.type, o), o.apply(this, arguments)
                    }), n && (u = function (e) {
                        var i, r = t(e.target).closest(n, p).get(0);
                        return r && r !== p ? (i = t.extend(l(e), {
                            currentTarget: r,
                            liveFired: p
                        }), (a || o).apply(r, [i].concat(d.call(arguments, 1)))) : f
                    }), s(p, e, o, i, n, u || a)
                }))
            }, t.fn.off = function (e, n, i) {
                var o = this;
                return e && !m(e) ? (t.each(e, function (t, e) {
                    o.off(t, n, e)
                }), o) : (m(n) || p(i) || i === !1 || (i = n, n = f), i === !1 && (i = E), o.each(function () {
                    c(this, e, i, n)
                }))
            }, t.fn.trigger = function (e, n) {
                return e = m(e) || t.isPlainObject(e) ? t.Event(e) : u(e), e._args = n, this.each(function () {
                    "dispatchEvent" in this ? this.dispatchEvent(e) : t(this).triggerHandler(e, n)
                })
            }, t.fn.triggerHandler = function (e, i) {
                var o, r;
                return this.each(function (a, s) {
                    o = l(m(e) ? t.Event(e) : e), o._args = i, o.target = s, t.each(n(s, e.type || e), function (t, e) {
                        return r = e.proxy(o), !o.isImmediatePropagationStopped() && f
                    })
                }), r
            }, "focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select keydown keypress keyup error".split(" ").forEach(function (e) {
                t.fn[e] = function (t) {
                    return t ? this.bind(e, t) : this.trigger(e)
                }
            }), ["focus", "blur"].forEach(function (e) {
                t.fn[e] = function (t) {
                    return t ? this.bind(e, t) : this.each(function () {
                        try {
                            this[e]()
                        } catch (t) {
                        }
                    }), this
                }
            }), t.Event = function (t, e) {
                m(t) || (e = t, t = e.type);
                var n = document.createEvent(g[t] || "Events"), i = !0;
                if (e) for (var o in e) "bubbles" == o ? i = !!e[o] : n[o] = e[o];
                return n.initEvent(t, i, !0), u(n)
            }
        }(i), function (t) {
            t.fn.serializeArray = function () {
                var e, n, i = [];
                return t([].slice.call(this.get(0).elements)).each(function () {
                    e = t(this), n = e.attr("type"), "fieldset" != this.nodeName.toLowerCase() && !this.disabled && "submit" != n && "reset" != n && "button" != n && ("radio" != n && "checkbox" != n || this.checked) && i.push({
                        name: e.attr("name"),
                        value: e.val()
                    })
                }), i
            }, t.fn.serialize = function () {
                var t = [];
                return this.serializeArray().forEach(function (e) {
                    t.push(encodeURIComponent(e.name) + "=" + encodeURIComponent(e.value))
                }), t.join("&")
            }, t.fn.submit = function (e) {
                if (e) this.bind("submit", e); else if (this.length) {
                    var n = t.Event("submit");
                    this.eq(0).trigger(n), n.isDefaultPrevented() || this.get(0).submit()
                }
                return this
            }
        }(i), function (t) {
            "__proto__" in {} || t.extend(t.zepto, {
                Z: function (e, n) {
                    return e = e || [], t.extend(e, t.fn), e.selector = n || "", e.__Z = !0, e
                }, isZ: function (e) {
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
        }(i), function (t) {
            function e(e) {
                return e = t(e), !(!e.width() && !e.height()) && "none" !== e.css("display")
            }

            function n(t, e) {
                t = t.replace(/=#\]/g, '="#"]');
                var n, i, o = s.exec(t);
                if (o && o[2] in a && (n = a[o[2]], i = o[3], t = o[1], i)) {
                    var r = Number(i);
                    i = isNaN(r) ? i.replace(/^["']|["']$/g, "") : r
                }
                return e(t, n, i)
            }

            var i = t.zepto, o = i.qsa, r = i.matches, a = t.expr[":"] = {
                visible: function () {
                    return e(this) ? this : void 0
                }, hidden: function () {
                    return e(this) ? void 0 : this
                }, selected: function () {
                    return this.selected ? this : void 0
                }, checked: function () {
                    return this.checked ? this : void 0
                }, parent: function () {
                    return this.parentNode
                }, first: function (t) {
                    return 0 === t ? this : void 0
                }, last: function (t, e) {
                    return t === e.length - 1 ? this : void 0
                }, eq: function (t, e, n) {
                    return t === n ? this : void 0
                }, contains: function (e, n, i) {
                    return t(this).text().indexOf(i) > -1 ? this : void 0
                }, has: function (t, e, n) {
                    return i.qsa(this, n).length ? this : void 0
                }
            }, s = RegExp("(.*):(\\w+)(?:\\(([^)]+)\\))?$\\s*"), c = /^\s*>/, u = "Zepto" + +new Date;
            i.qsa = function (e, r) {
                return n(r, function (n, a, s) {
                    try {
                        var l;
                        !n && a ? n = "*" : c.test(n) && (l = t(e).addClass(u), n = "." + u + " " + n);
                        var f = o(e, n)
                    } catch (h) {
                        throw console.error("error performing selector: %o", r), h
                    } finally {
                        l && l.removeClass(u)
                    }
                    return a ? i.uniq(t.map(f, function (t, e) {
                        return a.call(t, e, f, s)
                    })) : f
                })
            }, i.matches = function (t, e) {
                return n(e, function (e, n, i) {
                    return !(e && !r(t, e) || n && n.call(t, null, i) !== t)
                })
            }
        }(i)
    }, {}]
}, {}, [1]);