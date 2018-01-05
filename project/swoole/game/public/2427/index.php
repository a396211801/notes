<!DOCTYPE html>

<html data-dpr="1" style="font-size: 120.938px;">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <script id="_1502873523036_5875" src="/2427/index/detect.json"></script>
    <link rel="shortcut icon" type="image/x-icon" href="http://yun.yuyiya.com/tuia/tuia.ico">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no">
    <title>钱包入账花不完（福利中心）</title>
    <script type="text/javascript" async="" src="/2427/index/fm.js"></script>
    <script src="/2427/index/nr-1044.min.js"></script>
    <script>     
</script>
    <script type="text/javascript">
    ;(function(window) {
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

    function GetQueryString(name){
         var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
         var r = window.location.search.substr(1).match(reg);
         if(r!=null)return  unescape(r[2]); return null;
    }

    if(!_cookie.get('random')) {
        _cookie.set('random', Math.floor(Math.random() * 100000000000))
    }

    var this_random = _cookie.get('random')
    var this_id = GetQueryString('id')
 function setPosition(type, url) {        
     $.ajax({            
          url: '/clickCount',             
          dataType: 'json',
 type: 'post',
           data: {id: this_id, random: this_random, position: type},            
            success: function() {                 
                if(url) {                     
                    window.location.href = url                 
                }             
            }         
        })     
    } 
    </script>
    <script>
        !function (e, i) {
            var t = e.documentElement, n = navigator.userAgent.match(/iphone|ipod|ipad/gi),
                a = n ? Math.min(i.devicePixelRatio, 3) : 1, m = "orientationchange" in window ? "orientationchange" : "resize";
            t.dataset.dpr = a;
            for (var d, l, c = !1, o = e.getElementsByTagName("meta"), r = 0; r < o.length; r++) l = o[r], "viewport" == l.name && (c = !0, d = l);
            if (c) d.content = "width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no"; else {
                var o = e.createElement("meta");
                o.name = "viewport", o.content = "width=device-width,initial-scale=1.0,maximum-scale=1.0, minimum-scale=1.0,user-scalable=no", t.firstElementChild.appendChild(o)
            }
            var s = function () {
                var e = t.clientWidth;
                e / a > 640 && (e = 640 * a), window.remScale = e / 640, t.style.fontSize = 200 * (e / 640) + "px"
            };
            s(), e.addEventListener && i.addEventListener(m, s, !1)
        }(document, window);</script>
    <script type="text/javascript">
        window.NREUM || (NREUM = {}), __nr_require = function (t, n, e) {
            function r(e) {
                if (!n[e]) {
                    var o = n[e] = {exports: {}};
                    t[e][0].call(o.exports, function (n) {
                        var o = t[e][1][n];
                        return r(o || n)
                    }, o, o.exports)
                }
                return n[e].exports
            }

            if ("function" == typeof __nr_require) return __nr_require;
            for (var o = 0; o < e.length; o++) r(e[o]);
            return r
        }({
            1: [function (t, n, e) {
                function r(t) {
                    try {
                        s.console && console.log(t)
                    } catch (n) {
                    }
                }

                var o, i = t("ee"), a = t(15), s = {};
                try {
                    o = localStorage.getItem("__nr_flags").split(","), console && "function" == typeof console.log && (s.console = !0, o.indexOf("dev") !== -1 && (s.dev = !0), o.indexOf("nr_dev") !== -1 && (s.nrDev = !0))
                } catch (c) {
                }
                s.nrDev && i.on("internal-error", function (t) {
                    r(t.stack)
                }), s.dev && i.on("fn-err", function (t, n, e) {
                    r(e.stack)
                }), s.dev && (r("NR AGENT IN DEVELOPMENT MODE"), r("flags: " + a(s, function (t, n) {
                        return t
                    }).join(", ")))
            }, {}], 2: [function (t, n, e) {
                function r(t, n, e, r, o) {
                    try {
                        d ? d -= 1 : i("err", [o || new UncaughtException(t, n, e)])
                    } catch (s) {
                        try {
                            i("ierr", [s, c.now(), !0])
                        } catch (u) {
                        }
                    }
                    return "function" == typeof f && f.apply(this, a(arguments))
                }

                function UncaughtException(t, n, e) {
                    this.message = t || "Uncaught error with no additional information", this.sourceURL = n, this.line = e
                }

                function o(t) {
                    i("err", [t, c.now()])
                }

                var i = t("handle"), a = t(16), s = t("ee"), c = t("loader"), f = window.onerror, u = !1, d = 0;
                c.features.err = !0, t(1), window.onerror = r;
                try {
                    throw new Error
                } catch (l) {
                    "stack" in l && (t(8), t(7), "addEventListener" in window && t(5), c.xhrWrappable && t(9), u = !0)
                }
                s.on("fn-start", function (t, n, e) {
                    u && (d += 1)
                }), s.on("fn-err", function (t, n, e) {
                    u && (this.thrown = !0, o(e))
                }), s.on("fn-end", function () {
                    u && !this.thrown && d > 0 && (d -= 1)
                }), s.on("internal-error", function (t) {
                    i("ierr", [t, c.now(), !0])
                })
            }, {}], 3: [function (t, n, e) {
                t("loader").features.ins = !0
            }, {}], 4: [function (t, n, e) {
                function r(t) {
                }

                if (window.performance && window.performance.timing && window.performance.getEntriesByType) {
                    var o = t("ee"), i = t("handle"), a = t(8), s = t(7), c = "learResourceTimings", f = "addEventListener",
                        u = "resourcetimingbufferfull", d = "bstResource", l = "resource", p = "-start", h = "-end", m = "fn" + p,
                        w = "fn" + h, v = "bstTimer", y = "pushState", g = t("loader");
                    g.features.stn = !0, t(6);
                    var b = NREUM.o.EV;
                    o.on(m, function (t, n) {
                        var e = t[0];
                        e instanceof b && (this.bstStart = g.now())
                    }), o.on(w, function (t, n) {
                        var e = t[0];
                        e instanceof b && i("bst", [e, n, this.bstStart, g.now()])
                    }), a.on(m, function (t, n, e) {
                        this.bstStart = g.now(), this.bstType = e
                    }), a.on(w, function (t, n) {
                        i(v, [n, this.bstStart, g.now(), this.bstType])
                    }), s.on(m, function () {
                        this.bstStart = g.now()
                    }), s.on(w, function (t, n) {
                        i(v, [n, this.bstStart, g.now(), "requestAnimationFrame"])
                    }), o.on(y + p, function (t) {
                        this.time = g.now(), this.startPath = location.pathname + location.hash
                    }), o.on(y + h, function (t) {
                        i("bstHist", [location.pathname + location.hash, this.startPath, this.time])
                    }), f in window.performance && (window.performance["c" + c] ? window.performance[f](u, function (t) {
                            i(d, [window.performance.getEntriesByType(l)]), window.performance["c" + c]()
                        }, !1) : window.performance[f]("webkit" + u, function (t) {
                            i(d, [window.performance.getEntriesByType(l)]), window.performance["webkitC" + c]()
                        }, !1)), document[f]("scroll", r, {passive: !0}), document[f]("keypress", r, !1), document[f]("click", r, !1)
                }
            }, {}], 5: [function (t, n, e) {
                function r(t) {
                    for (var n = t; n && !n.hasOwnProperty(u);) n = Object.getPrototypeOf(n);
                    n && o(n)
                }

                function o(t) {
                    s.inPlace(t, [u, d], "-", i)
                }

                function i(t, n) {
                    return t[1]
                }

                var a = t("ee").get("events"), s = t(18)(a, !0), c = t("gos"), f = XMLHttpRequest, u = "addEventListener",
                    d = "removeEventListener";
                n.exports = a, "getPrototypeOf" in Object ? (r(document), r(window), r(f.prototype)) : f.prototype.hasOwnProperty(u) && (o(window), o(f.prototype)), a.on(u + "-start", function (t, n) {
                    var e = t[1], r = c(e, "nr@wrapped", function () {
                        function t() {
                            if ("function" == typeof e.handleEvent) return e.handleEvent.apply(e, arguments)
                        }

                        var n = {object: t, "function": e}[typeof e];
                        return n ? s(n, "fn-", null, n.name || "anonymous") : e
                    });
                    this.wrapped = t[1] = r
                }), a.on(d + "-start", function (t) {
                    t[1] = this.wrapped || t[1]
                })
            }, {}], 6: [function (t, n, e) {
                var r = t("ee").get("history"), o = t(18)(r);
                n.exports = r, o.inPlace(window.history, ["pushState", "replaceState"], "-")
            }, {}], 7: [function (t, n, e) {
                var r = t("ee").get("raf"), o = t(18)(r), i = "equestAnimationFrame";
                n.exports = r, o.inPlace(window, ["r" + i, "mozR" + i, "webkitR" + i, "msR" + i], "raf-"), r.on("raf-start", function (t) {
                    t[0] = o(t[0], "fn-")
                })
            }, {}], 8: [function (t, n, e) {
                function r(t, n, e) {
                    t[0] = a(t[0], "fn-", null, e)
                }

                function o(t, n, e) {
                    this.method = e, this.timerDuration = isNaN(t[1]) ? 0 : +t[1], t[0] = a(t[0], "fn-", this, e)
                }

                var i = t("ee").get("timer"), a = t(18)(i), s = "setTimeout", c = "setInterval", f = "clearTimeout",
                    u = "-start", d = "-";
                n.exports = i, a.inPlace(window, [s, "setImmediate"], s + d), a.inPlace(window, [c], c + d), a.inPlace(window, [f, "clearImmediate"], f + d), i.on(c + u, r), i.on(s + u, o)
            }, {}], 9: [function (t, n, e) {
                function r(t, n) {
                    d.inPlace(n, ["onreadystatechange"], "fn-", s)
                }

                function o() {
                    var t = this, n = u.context(t);
                    t.readyState > 3 && !n.resolved && (n.resolved = !0, u.emit("xhr-resolved", [], t)), d.inPlace(t, y, "fn-", s)
                }

                function i(t) {
                    g.push(t), h && (x ? x.then(a) : w ? w(a) : (E = -E, O.data = E))
                }

                function a() {
                    for (var t = 0; t < g.length; t++) r([], g[t]);
                    g.length && (g = [])
                }

                function s(t, n) {
                    return n
                }

                function c(t, n) {
                    for (var e in t) n[e] = t[e];
                    return n
                }

                t(5);
                var f = t("ee"), u = f.get("xhr"), d = t(18)(u), l = NREUM.o, p = l.XHR, h = l.MO, m = l.PR, w = l.SI,
                    v = "readystatechange",
                    y = ["onload", "onerror", "onabort", "onloadstart", "onloadend", "onprogress", "ontimeout"], g = [];
                n.exports = u;
                var b = window.XMLHttpRequest = function (t) {
                    var n = new p(t);
                    try {
                        u.emit("new-xhr", [n], n), n.addEventListener(v, o, !1)
                    } catch (e) {
                        try {
                            u.emit("internal-error", [e])
                        } catch (r) {
                        }
                    }
                    return n
                };
                if (c(p, b), b.prototype = p.prototype, d.inPlace(b.prototype, ["open", "send"], "-xhr-", s), u.on("send-xhr-start", function (t, n) {
                        r(t, n), i(n)
                    }), u.on("open-xhr-start", r), h) {
                    var x = m && m.resolve();
                    if (!w && !m) {
                        var E = 1, O = document.createTextNode(E);
                        new h(a).observe(O, {characterData: !0})
                    }
                } else f.on("fn-end", function (t) {
                    t[0] && t[0].type === v || a()
                })
            }, {}], 10: [function (t, n, e) {
                function r(t) {
                    var n = this.params, e = this.metrics;
                    if (!this.ended) {
                        this.ended = !0;
                        for (var r = 0; r < d; r++) t.removeEventListener(u[r], this.listener, !1);
                        if (!n.aborted) {
                            if (e.duration = a.now() - this.startTime, 4 === t.readyState) {
                                n.status = t.status;
                                var i = o(t, this.lastSize);
                                if (i && (e.rxSize = i), this.sameOrigin) {
                                    var c = t.getResponseHeader("X-NewRelic-App-Data");
                                    c && (n.cat = c.split(", ").pop())
                                }
                            } else n.status = 0;
                            e.cbTime = this.cbTime, f.emit("xhr-done", [t], t), s("xhr", [n, e, this.startTime])
                        }
                    }
                }

                function o(t, n) {
                    var e = t.responseType;
                    if ("json" === e && null !== n) return n;
                    var r = "arraybuffer" === e || "blob" === e || "json" === e ? t.response : t.responseText;
                    return h(r)
                }

                function i(t, n) {
                    var e = c(n), r = t.params;
                    r.host = e.hostname + ":" + e.port, r.pathname = e.pathname, t.sameOrigin = e.sameOrigin
                }

                var a = t("loader");
                if (a.xhrWrappable) {
                    var s = t("handle"), c = t(11), f = t("ee"), u = ["load", "error", "abort", "timeout"], d = u.length,
                        l = t("id"), p = t(14), h = t(13), m = window.XMLHttpRequest;
                    a.features.xhr = !0, t(9), f.on("new-xhr", function (t) {
                        var n = this;
                        n.totalCbs = 0, n.called = 0, n.cbTime = 0, n.end = r, n.ended = !1, n.xhrGuids = {}, n.lastSize = null, p && (p > 34 || p < 10) || window.opera || t.addEventListener("progress", function (t) {
                            n.lastSize = t.loaded
                        }, !1)
                    }), f.on("open-xhr-start", function (t) {
                        this.params = {method: t[0]}, i(this, t[1]), this.metrics = {}
                    }), f.on("open-xhr-end", function (t, n) {
                        "loader_config" in NREUM && "xpid" in NREUM.loader_config && this.sameOrigin && n.setRequestHeader("X-NewRelic-ID", NREUM.loader_config.xpid)
                    }), f.on("send-xhr-start", function (t, n) {
                        var e = this.metrics, r = t[0], o = this;
                        if (e && r) {
                            var i = h(r);
                            i && (e.txSize = i)
                        }
                        this.startTime = a.now(), this.listener = function (t) {
                            try {
                                "abort" === t.type && (o.params.aborted = !0), ("load" !== t.type || o.called === o.totalCbs && (o.onloadCalled || "function" != typeof n.onload)) && o.end(n)
                            } catch (e) {
                                try {
                                    f.emit("internal-error", [e])
                                } catch (r) {
                                }
                            }
                        };
                        for (var s = 0; s < d; s++) n.addEventListener(u[s], this.listener, !1)
                    }), f.on("xhr-cb-time", function (t, n, e) {
                        this.cbTime += t, n ? this.onloadCalled = !0 : this.called += 1, this.called !== this.totalCbs || !this.onloadCalled && "function" == typeof e.onload || this.end(e)
                    }), f.on("xhr-load-added", function (t, n) {
                        var e = "" + l(t) + !!n;
                        this.xhrGuids && !this.xhrGuids[e] && (this.xhrGuids[e] = !0, this.totalCbs += 1)
                    }), f.on("xhr-load-removed", function (t, n) {
                        var e = "" + l(t) + !!n;
                        this.xhrGuids && this.xhrGuids[e] && (delete this.xhrGuids[e], this.totalCbs -= 1)
                    }), f.on("addEventListener-end", function (t, n) {
                        n instanceof m && "load" === t[0] && f.emit("xhr-load-added", [t[1], t[2]], n)
                    }), f.on("removeEventListener-end", function (t, n) {
                        n instanceof m && "load" === t[0] && f.emit("xhr-load-removed", [t[1], t[2]], n)
                    }), f.on("fn-start", function (t, n, e) {
                        n instanceof m && ("onload" === e && (this.onload = !0), ("load" === (t[0] && t[0].type) || this.onload) && (this.xhrCbStart = a.now()))
                    }), f.on("fn-end", function (t, n) {
                        this.xhrCbStart && f.emit("xhr-cb-time", [a.now() - this.xhrCbStart, this.onload, n], n)
                    })
                }
            }, {}], 11: [function (t, n, e) {
                n.exports = function (t) {
                    var n = document.createElement("a"), e = window.location, r = {};
                    n.href = t, r.port = n.port;
                    var o = n.href.split("://");
                    !r.port && o[1] && (r.port = o[1].split("/")[0].split("@").pop().split(":")[1]), r.port && "0" !== r.port || (r.port = "https" === o[0] ? "443" : "80"), r.hostname = n.hostname || e.hostname, r.pathname = n.pathname, r.protocol = o[0], "/" !== r.pathname.charAt(0) && (r.pathname = "/" + r.pathname);
                    var i = !n.protocol || ":" === n.protocol || n.protocol === e.protocol,
                        a = n.hostname === document.domain && n.port === e.port;
                    return r.sameOrigin = i && (!n.hostname || a), r
                }
            }, {}], 12: [function (t, n, e) {
                function r() {
                }

                function o(t, n, e) {
                    return function () {
                        return i(t, [f.now()].concat(s(arguments)), n ? null : this, e), n ? void 0 : this
                    }
                }

                var i = t("handle"), a = t(15), s = t(16), c = t("ee").get("tracer"), f = t("loader"), u = NREUM;
                "undefined" == typeof window.newrelic && (newrelic = u);
                var d = ["setPageViewName", "setCustomAttribute", "setErrorHandler", "finished", "addToTrace", "inlineHit", "addRelease"],
                    l = "api-", p = l + "ixn-";
                a(d, function (t, n) {
                    u[n] = o(l + n, !0, "api")
                }), u.addPageAction = o(l + "addPageAction", !0), u.setCurrentRouteName = o(l + "routeName", !0), n.exports = newrelic, u.interaction = function () {
                    return (new r).get()
                };
                var h = r.prototype = {
                    createTracer: function (t, n) {
                        var e = {}, r = this, o = "function" == typeof n;
                        return i(p + "tracer", [f.now(), t, e], r), function () {
                            if (c.emit((o ? "" : "no-") + "fn-start", [f.now(), r, o], e), o) try {
                                return n.apply(this, arguments)
                            } finally {
                                c.emit("fn-end", [f.now()], e)
                            }
                        }
                    }
                };
                a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","), function (t, n) {
                    h[n] = o(p + n)
                }), newrelic.noticeError = function (t) {
                    "string" == typeof t && (t = new Error(t)), i("err", [t, f.now()])
                }
            }, {}], 13: [function (t, n, e) {
                n.exports = function (t) {
                    if ("string" == typeof t && t.length) return t.length;
                    if ("object" == typeof t) {
                        if ("undefined" != typeof ArrayBuffer && t instanceof ArrayBuffer && t.byteLength) return t.byteLength;
                        if ("undefined" != typeof Blob && t instanceof Blob && t.size) return t.size;
                        if (!("undefined" != typeof FormData && t instanceof FormData)) try {
                            return JSON.stringify(t).length
                        } catch (n) {
                            return
                        }
                    }
                }
            }, {}], 14: [function (t, n, e) {
                var r = 0, o = navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);
                o && (r = +o[1]), n.exports = r
            }, {}], 15: [function (t, n, e) {
                function r(t, n) {
                    var e = [], r = "", i = 0;
                    for (r in t) o.call(t, r) && (e[i] = n(r, t[r]), i += 1);
                    return e
                }

                var o = Object.prototype.hasOwnProperty;
                n.exports = r
            }, {}], 16: [function (t, n, e) {
                function r(t, n, e) {
                    n || (n = 0), "undefined" == typeof e && (e = t ? t.length : 0);
                    for (var r = -1, o = e - n || 0, i = Array(o < 0 ? 0 : o); ++r < o;) i[r] = t[n + r];
                    return i
                }

                n.exports = r
            }, {}], 17: [function (t, n, e) {
                n.exports = {exists: "undefined" != typeof window.performance && window.performance.timing && "undefined" != typeof window.performance.timing.navigationStart}
            }, {}], 18: [function (t, n, e) {
                function r(t) {
                    return !(t && t instanceof Function && t.apply && !t[a])
                }

                var o = t("ee"), i = t(16), a = "nr@original", s = Object.prototype.hasOwnProperty, c = !1;
                n.exports = function (t, n) {
                    function e(t, n, e, o) {
                        function nrWrapper() {
                            var r, a, s, c;
                            try {
                                a = this, r = i(arguments), s = "function" == typeof e ? e(r, a) : e || {}
                            } catch (f) {
                                l([f, "", [r, a, o], s])
                            }
                            u(n + "start", [r, a, o], s);
                            try {
                                return c = t.apply(a, r)
                            } catch (d) {
                                throw u(n + "err", [r, a, d], s), d
                            } finally {
                                u(n + "end", [r, a, c], s)
                            }
                        }

                        return r(t) ? t : (n || (n = ""), nrWrapper[a] = t, d(t, nrWrapper), nrWrapper)
                    }

                    function f(t, n, o, i) {
                        o || (o = "");
                        var a, s, c, f = "-" === o.charAt(0);
                        for (c = 0; c < n.length; c++) s = n[c], a = t[s], r(a) || (t[s] = e(a, f ? s + o : o, i, s))
                    }

                    function u(e, r, o) {
                        if (!c || n) {
                            var i = c;
                            c = !0;
                            try {
                                t.emit(e, r, o, n)
                            } catch (a) {
                                l([a, e, r, o])
                            }
                            c = i
                        }
                    }

                    function d(t, n) {
                        if (Object.defineProperty && Object.keys) try {
                            var e = Object.keys(t);
                            return e.forEach(function (e) {
                                Object.defineProperty(n, e, {
                                    get: function () {
                                        return t[e]
                                    }, set: function (n) {
                                        return t[e] = n, n
                                    }
                                })
                            }), n
                        } catch (r) {
                            l([r])
                        }
                        for (var o in t) s.call(t, o) && (n[o] = t[o]);
                        return n
                    }

                    function l(n) {
                        try {
                            t.emit("internal-error", n)
                        } catch (e) {
                        }
                    }

                    return t || (t = o), e.inPlace = f, e.flag = a, e
                }
            }, {}], ee: [function (t, n, e) {
                function r() {
                }

                function o(t) {
                    function n(t) {
                        return t && t instanceof r ? t : t ? c(t, s, i) : i()
                    }

                    function e(e, r, o, i) {
                        if (!l.aborted || i) {
                            t && t(e, r, o);
                            for (var a = n(o), s = h(e), c = s.length, f = 0; f < c; f++) s[f].apply(a, r);
                            var d = u[y[e]];
                            return d && d.push([g, e, r, a]), a
                        }
                    }

                    function p(t, n) {
                        v[t] = h(t).concat(n)
                    }

                    function h(t) {
                        return v[t] || []
                    }

                    function m(t) {
                        return d[t] = d[t] || o(e)
                    }

                    function w(t, n) {
                        f(t, function (t, e) {
                            n = n || "feature", y[e] = n, n in u || (u[n] = [])
                        })
                    }

                    var v = {}, y = {},
                        g = {on: p, emit: e, get: m, listeners: h, context: n, buffer: w, abort: a, aborted: !1};
                    return g
                }

                function i() {
                    return new r
                }

                function a() {
                    (u.api || u.feature) && (l.aborted = !0, u = l.backlog = {})
                }

                var s = "nr@context", c = t("gos"), f = t(15), u = {}, d = {}, l = n.exports = o();
                l.backlog = u
            }, {}], gos: [function (t, n, e) {
                function r(t, n, e) {
                    if (o.call(t, n)) return t[n];
                    var r = e();
                    if (Object.defineProperty && Object.keys) try {
                        return Object.defineProperty(t, n, {value: r, writable: !0, enumerable: !1}), r
                    } catch (i) {
                    }
                    return t[n] = r, r
                }

                var o = Object.prototype.hasOwnProperty;
                n.exports = r
            }, {}], handle: [function (t, n, e) {
                function r(t, n, e, r) {
                    o.buffer([t], r), o.emit(t, n, e)
                }

                var o = t("ee").get("handle");
                n.exports = r, r.ee = o
            }, {}], id: [function (t, n, e) {
                function r(t) {
                    var n = typeof t;
                    return !t || "object" !== n && "function" !== n ? -1 : t === window ? 0 : a(t, i, function () {
                                return o++
                            })
                }

                var o = 1, i = "nr@id", a = t("gos");
                n.exports = r
            }, {}], loader: [function (t, n, e) {
                function r() {
                    if (!x++) {
                        var t = b.info = NREUM.info, n = l.getElementsByTagName("script")[0];
                        if (setTimeout(u.abort, 3e4), !(t && t.licenseKey && t.applicationID && n)) return u.abort();
                        f(y, function (n, e) {
                            t[n] || (t[n] = e)
                        }), c("mark", ["onload", a() + b.offset], null, "api");
                        var e = l.createElement("script");
                        e.src = "https://" + t.agent, n.parentNode.insertBefore(e, n)
                    }
                }

                function o() {
                    "complete" === l.readyState && i()
                }

                function i() {
                    c("mark", ["domContent", a() + b.offset], null, "api")
                }

                function a() {
                    return E.exists && performance.now ? Math.round(performance.now()) : (s = Math.max((new Date).getTime(), s)) - b.offset
                }

                var s = (new Date).getTime(), c = t("handle"), f = t(15), u = t("ee"), d = window, l = d.document,
                    p = "addEventListener", h = "attachEvent", m = d.XMLHttpRequest, w = m && m.prototype;
                NREUM.o = {
                    ST: setTimeout,
                    SI: d.setImmediate,
                    CT: clearTimeout,
                    XHR: m,
                    REQ: d.Request,
                    EV: d.Event,
                    PR: d.Promise,
                    MO: d.MutationObserver
                };
                var v = "" + location, y = {
                        beacon: "bam.nr-data.net",
                        errorBeacon: "bam.nr-data.net",
                        agent: "js-agent.newrelic.com/nr-1044.min.js"
                    }, g = m && w && w[p] && !/CriOS/.test(navigator.userAgent),
                    b = n.exports = {offset: s, now: a, origin: v, features: {}, xhrWrappable: g};
                t(12), l[p] ? (l[p]("DOMContentLoaded", i, !1), d[p]("load", r, !1)) : (l[h]("onreadystatechange", o), d[h]("onload", r)), c("mark", ["firstbyte", s], null, "api");
                var x = 0, E = t(17)
            }, {}]
        }, {}, ["loader", 2, 10, 4, 3]);
        ;NREUM.info = {
            beacon: "bam.nr-data.net",
            errorBeacon: "bam.nr-data.net",
            licenseKey: "2214ccb852",
            applicationID: "56603094",
            sa: 1
        }
    </script>

    <!-- 同步 tuia-h5/unit/layout/baseCss.html -->

    <!-- 首屏加载公用js、css -->
    <link rel="stylesheet" href="/2427/index/actBase_201707271400.css">
    <link rel="stylesheet" type="text/css" href="/2427/index/index_201707271400.css">
    <style>
        .main {
            background-image: url(//yun.yuyiya.com/tuia-media/img/5u5upyx5k9.png?x-oss-process=image/format,webp) !important;
        }

        body {
            background-color: #344c9a !important;
        }

        .record {
            background-image: url(//yun.yuyiya.com/h5-tuia/activity/rollDick/2.0/png/prize2.png?x-oss-process=image/format,webp) !important;
        }

        .rule {
            background-image: url(//yun.yuyiya.com/h5-tuia/activity/rollDick/2.0/png/rule2.png?x-oss-process=image/format,webp) !important;
        }

        .apple {
            color: #fff !important;
        }

        .apple {
            background-color: #344c9a !important;
        }

        .dice-content.ready {
            background-image: url(//yun.yuyiya.com/h5-tuia/activity/rollDick/2.0/png/dice.png?x-oss-process=image/format,webp) !important;
        }

        .dice-content.end1 {
            background-image: url(//yun.yuyiya.com/h5-tuia/activity/rollDick/2.0/png/result1.png?x-oss-process=image/format,webp) !important;
        }

        .dice-content.end2 {
            background-image: url(//yun.yuyiya.com/h5-tuia/activity/rollDick/2.0/png/result2.png?x-oss-process=image/format,webp) !important;
        }

        .dice-content.end3 {
            background-image: url(//yun.yuyiya.com/h5-tuia/activity/rollDick/2.0/png/result3.png?x-oss-process=image/format,webp) !important;
        }

        .dice-content.end4 {
            background-image: url(//yun.yuyiya.com/h5-tuia/activity/rollDick/2.0/png/result4.png?x-oss-process=image/format,webp) !important;
        }

        .dice-content.end5 {
            background-image: url(//yun.yuyiya.com/h5-tuia/activity/rollDick/2.0/png/result5.png?x-oss-process=image/format,webp) !important;
        }

        .dice-content.end6 {
            background-image: url(//yun.yuyiya.com/h5-tuia/activity/rollDick/2.0/png/result6.png?x-oss-process=image/format,webp) !important;
        }

        .start {
            background-image: url(//yun.yuyiya.com/h5-tuia/activity/rollDick/2.0/png/btn.png?x-oss-process=image/format,webp) !important;
        }

        .start.moving {
            background-image: url(//yun.yuyiya.com/h5-tuia/activity/rollDick/2.0/png/btn_click.png?x-oss-process=image/format,webp) !important;
        }

        .start.end {
            background-image: url(//yun.yuyiya.com/h5-tuia/activity/rollDick/2.0/png/btn_disabled.png?x-oss-process=image/format,webp) !important;
        }

        .rule-modal .rule-modal-dialog {
            background-color: #944fbd !important;
        }

        .rule-modal .rule-modal-dialog section .probability {
            background-color: #944fbd !important;
        }

        .rule-modal .rule-modal-dialog header span, .rule-modal .rule-modal-dialog section .description {
            color: #fff !important;
        }

        .rule-modal .rule-modal-dialog header i {
            background-color: #fff !important;
        }

        .rule-modal .rule-modal-dialog .close {
            color: #fff !important;
        }

        .rule-modal .rule-modal-dialog section .probability .nav {
            background-color: #542b80 !important;
        }

        .rule-modal .rule-modal-dialog section .probability .nav span {
            color: #fbd860 !important;
        }

        .rule-modal .rule-modal-dialog section .probability.active .text {
            color: #fff !important;
        }</style>
    <style>.rule-modal .rule-modal-dialog section .probability .nav i {
            border-top-color: #fbd860 !important;
            border-left-color: #fbd860 !important;
        }</style>
    <script charset="utf-8" async="" src="/2427/index/common_201707271400.js"></script>
    <link rel="stylesheet" href="/2427/index/common_201708081700.css">
    <script charset="utf-8" async="" src="/2427/index/index_201707181200.js"></script>
    <link rel="stylesheet" href="/2427/index/index_201707181200.css">
</head>

<body>
<div id="db-content" style="display: block;">
    <a class="record" href="javascript:void(0);" onclick="setPosition(4, '/prizeList.html')"></a>
    <div class="rule"></div>
    <div class="main">
        <img class="banner" src="/2427/index/emahnhj6hy.png">
        <div class="dice">
            <div class="dice-content ready"></div>
        </div>
        <i class="coin1"></i>
        <i class="coin2"></i>
        <i class="coin3"></i>
        <div class="start ready"></div>
        <div class="needCredits">今日免费： 8次</div>
        <div class="prize-list">
            <div id="prizes-wrapper" data-length="6"
                 style="width: 5.8rem; padding-left: 0.2rem; padding-right: 0.2rem; transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">

            </div>
            <div class="prize-tag"></div>
            <div class="iScrollHorizontalScrollbar iScrollLoneScrollbar"
                 style="position: absolute; z-index: 9999; height: 7px; left: 2px; right: 2px; bottom: 0px; overflow: hidden; pointer-events: none;">
                <div class="iScrollIndicator"
                     style="box-sizing: border-box; position: absolute; background: rgba(0, 0, 0, 0.5); border: 1px solid rgba(255, 255, 255, 0.9); border-radius: 3px; height: 100%; transition-duration: 0ms; display: block; width: 209px; transform: translate(0px, 0px) translateZ(0px); transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1);"></div>
            </div>
        </div>
    </div>
</div>
<p class="apple fixed" style="display: none;">*兑换项和活动均与设备生产商Apple Inc.无关</p>

<script type="text/javascript">
    var CFG = {
        host: '//yun.yuyiya.com', //配置域名
        activityId: '2427', //活动id
        activityType: '15',  //研究
        slotId: '3151',  //广告位id
        preview: false,  //预览
        isShowBuoy: false,  //是否展示浮标
        isShowRecommend: true,  //是否展示推荐弹层
        isShowNew: false //是否显示abtest新弹层
    };

    function loader(callback) {
        var _files = [
            common_js,
            common_css
        ];
        var _coupons;
        if (!CFG.isShowNew) {
            _coupons = [
                '//yun.yuyiya.com/h5-tuia/couponPrize/1.10/index_201707181200.js',
                '//yun.yuyiya.com/h5-tuia/couponPrize/1.10/index_201707181200.css'
            ];
            CFG.couponVersion = '0101000';
        } else {
            _coupons = [
                '//yun.yuyiya.com/h5-tuia/couponPrize/1.0.3/index_201707181200.js',
                '//yun.yuyiya.com/h5-tuia/couponPrize/1.0.3/index_201707181200.css'
            ];
            CFG.couponVersion = '0100003';
        }
        _coupons.length && _files.push.apply(_files, _coupons);

        Loader.async(_files, function () {
            callback && callback();
        });
    }
</script>


<!-- 首屏加载公用js、css -->
<script type="text/javascript" src="/2427/index/actBase_201708081700.js"></script>

<!-- 延迟加载公用js、css -->
<script type="text/javascript">
    var common_js = '/2427/index/common_201707271400.js';
    var common_css = '/2427/index/common_201708081700.css';
</script>
<script type="text/javascript" src="/2427/index/index_201707271400.js"></script>
<script>
     $('body').on('click', '.prize-img-box', function() {
        setPosition(5)
    })
     $('body').on('click', '.coupon-modal-close', function() {
        setPosition(8)
    })

    $('body').on('click', '.J_btnCoupon', function() {
        var order_id = JSON.parse($(this).attr('db-click')).orderId.split('-')[1]
         $.ajax({            
          url: '/clickCount',             
          dataType: 'json',
          type: 'post',
           data: {id: this_id, random: this_random, position: 7, order_id:order_id},            
            success: function() {                 
                if(url) {                     
                    window.location.href = url                 
                }             
            }         
        }) 
    })
     $('body').on('click', '.J_gotoDetail', function() {
        var order_id = JSON.parse($(this).attr('db-click')).orderId.split('-')[1]
         $.ajax({            
          url: '/clickCount',             
          dataType: 'json',
          type: 'post',
           data: {id: this_id, random: this_random, position: 7, order_id:order_id},            
            success: function() {                 
                if(url) {                     
                    window.location.href = url                 
                }             
            }         
        })
    })
</script>
<div class="rule-modal" style="display: none;">
    <div class="rule-modal-dialog">
        <header><i></i><span>活动说明</span><i></i></header>
        <section> </section>
        <div class="close"></div>
    </div>
</div>
<div class="DB_guide" style="left: 1.8rem; top: 3.3rem; display: block;"><span class="DB_G_circle"></span><span
        class="DB_G_hand"></span></div>
</body>
</html>