!function e(t, n, i) {
    function o(s, a) {
        if (!n[s]) {
            if (!t[s]) {
                var c = "function" == typeof require && require;
                if (!a && c) return c(s, !0);
                if (r) return r(s, !0);
                var p = new Error("Cannot find module '" + s + "'");
                throw p.code = "MODULE_NOT_FOUND", p
            }
            var l = n[s] = {exports: {}};
            t[s][0].call(l.exports, function (e) {
                var n = t[s][1][e];
                return o(n ? n : e)
            }, l, l.exports, e, t, n, i)
        }
        return n[s].exports
    }

    for (var r = "function" == typeof require && require, s = 0; s < i.length; s++) o(i[s]);
    return o
}({
    1: [function (e, t, n) {
        !function () {
            function t(e, t, n) {
                if (e) {
                    var i = s(t, e);
                    return void n.append(i)
                }
            }

            function n() {
                p(c, a, $("#db-content")), t(c, $("#footer-item").html(), $("#db-content")), setTimeout(function () {
                    window.DB && window.DB.exposure && window.DB.exposure.initLog()
                }, 500), $(".btnCoupon").on("click", function () {

                    var e = $(this).html(), t = this;
                    $(this).prop("disabled", !0).html("<i></i><span>页面跳转中，请稍后</span>"), o.call(t, e)
                })
            }

            function i() {
                $.ajax({
                    url: "getRecord",
                    type: "get",
                    dataType: "json",
                    data: {orderId: r("orderId")},
                    success: function (e) {
                        console.log(e)
                        e.success && (c = e.data, c.isios = navigator.userAgent.toLowerCase().indexOf("iphone") !== -1 || navigator.userAgent.toLowerCase().indexOf("ipad") !== -1, window.downloadAppConfig = {
                            iosDownloadUrl: e.data.iosDownloadUrl,
                            androidDownloadUrl: e.data.androidDownloadUrl
                        }, n(), loader(function () {
                            Swipe(document.getElementById("swipe"), {
                                startSlide: 0,
                                speed: 400,
                                auto: 2e3,
                                continuous: !0,
                                disableScroll: !1,
                                stopPropagation: !1,
                                callback: function (e, t) {
                                },
                                transitionEnd: function (e, t) {
                                }
                            }), $("#db-content").css("padding-bottom", $("footer").height())
                        }))
                    }
                })
            }

            function o(e) {
                window.downloadApp(), setTimeout($.proxy(function () {
                    $(this).prop("disabled", !1).html(e)
                }, this), 500)
            }

            function r(e) {
                var t = new RegExp("(^|&)" + e + "=([^&]*)(&|$)"), n = window.location.search.substr(1).match(t);
                return null != n ? unescape(n[2]) : null
            }

            var s = e("../../../unit/lib/lib-template/1.0.0/template"), a = e("./detailItemTpl"), c = null;
            i();
            var p = function (e, t, n) {
                if (e) {
                    var i = s.compile(t), o = i.render(e);
                    return void n.append(o)
                }
            };
            FastClick(document.body)
        }()
    }, {"../../../unit/lib/lib-template/1.0.0/template": 3, "./detailItemTpl": 2}], 2: [function (e, t, n) {
        t.exports = '{@if bannerPng}<div class="swipe" id="swipe"><div class="swipe-wrap"><div class="swiper-slide"><img alt="" src="${bannerPng}" db-exposure="${stmInfo}" db-disabled-server="true"/></div> </div><div class="swiper-pagination"></div></div>{@/if}<div class="item-wrapper"><div class="item-info"><div class="item-title"><h3>${title}</h3></div></div><div class="validDate"><span>仅剩${remainDay}天( 至：${endValid} )</span></div>{@if codeContent}<div class="couponBox"><div class="coupon"><div><p>券码：<span class="couponNumber couponCode">${codeContent}</span></p></div>{@if codePasswd}<div class="couponPassword"><p>密码：<span class="couponNumber couponPassword">${codePasswd}</span></p></div>{@/if}</div></div>{@/if}</div>{@if couponRemark}<div class="description"><h3>图文详情：</h3><div class="con"><div>$${couponRemark}</div></div></div>{@/if}{@if orderId}<div class=orderNumber><h3>订单编号：</h3><span>${orderId}</span><br/><h3>客服热线：</h3><span>400-080-6659</span></div>{@/if}{@if isios}<p class="apple">*兑换项和活动均与设备生产商Apple Inc.无关<br/>{@/if}'
    }, {}], 3: [function (e, t, n) {
        (function (e) {
            !function () {
                var n = function a() {
                    var e = [].slice.call(arguments);
                    return e.push(a.options), e[0].match(/^\s*#([\w:\-\.]+)\s*$/gim) && e[0].replace(/^\s*#([\w:\-\.]+)\s*$/gim, function (t, n) {
                        var i = document, o = i && i.getElementById(n);
                        e[0] = o ? o.value || o.innerHTML : t
                    }), a.documentHTML && (a.compile.call(a, a.documentHTML), a.documentHTML = ""), 1 == arguments.length ? a.compile.apply(a, e) : arguments.length >= 2 ? a.to_html.apply(a, e) : void 0
                }, i = {
                    escapehash: {"<": "&lt;", ">": "&gt;", "&": "&amp;", '"': "&quot;", "'": "&#x27;", "/": "&#x2f;"},
                    escapereplace: function (e) {
                        return i.escapehash[e]
                    },
                    escaping: function (e) {
                        return "string" != typeof e ? e : e.replace(/[&<>"']/gim, this.escapereplace)
                    },
                    detection: function (e) {
                        return "undefined" == typeof e ? "" : e
                    }
                }, o = function (e) {
                    if ("undefined" != typeof console) {
                        if (console.warn) return void console.warn(e);
                        if (console.log) return void console.log(e)
                    }
                    throw e
                }, r = function (e, t) {
                    if (e = e !== Object(e) ? {} : e, e.__proto__) return e.__proto__ = t, e;
                    var n = function () {
                    }, i = Object.create ? Object.create(t) : new (n.prototype = t, n);
                    for (var o in e) e.hasOwnProperty(o) && (i[o] = e[o]);
                    return i
                }, s = function (e) {
                    var t, n, i, o = /^function\s*[^\(]*\(\s*([^\)]*)\)/m, r = /,/, s = /^\s*(_?)(\S+?)\1\s*$/,
                        a = /^function[^{]+{([\s\S]*)}/m, c = [];
                    "function" == typeof e ? e.length && (t = e.toString()) : "string" == typeof e && (t = e), t = t.trim(), i = t.match(o), n = t.match(a)[1].trim();
                    for (var p = 0; p < i[1].split(r).length; p++) {
                        var l = i[1].split(r)[p];
                        l.replace(s, function (e, t, n) {
                            c.push(n)
                        })
                    }
                    return [c, n]
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
                    _method: r({__escapehtml: i, __throw: o, __juicer: n}, {})
                }, n.tagInit = function () {
                    var e = n.tags.operationOpen + "each\\s*([^}]*?)\\s*as\\s*(\\w*?)\\s*(,\\s*\\w*?)?" + n.tags.operationClose,
                        t = n.tags.operationOpen + "\\/each" + n.tags.operationClose,
                        i = n.tags.operationOpen + "if\\s*([^}]*?)" + n.tags.operationClose,
                        o = n.tags.operationOpen + "\\/if" + n.tags.operationClose,
                        r = n.tags.operationOpen + "else" + n.tags.operationClose,
                        s = n.tags.operationOpen + "else if\\s*([^}]*?)" + n.tags.operationClose,
                        a = n.tags.interpolateOpen + "([\\s\\S]+?)" + n.tags.interpolateClose,
                        c = n.tags.noneencodeOpen + "([\\s\\S]+?)" + n.tags.noneencodeClose,
                        p = n.tags.commentOpen + "[^}]*?" + n.tags.commentClose,
                        l = n.tags.operationOpen + "each\\s*(\\w*?)\\s*in\\s*range\\(([^}]+?)\\s*,\\s*([^}]+?)\\)" + n.tags.operationClose,
                        u = n.tags.operationOpen + "include\\s*([^}]*?)\\s*,\\s*([^}]*?)" + n.tags.operationClose,
                        d = n.tags.operationOpen + "helper\\s*([^}]*?)\\s*" + n.tags.operationClose, f = "([\\s\\S]*?)",
                        g = n.tags.operationOpen + "\\/helper" + n.tags.operationClose;
                    n.settings.forstart = new RegExp(e, "igm"), n.settings.forend = new RegExp(t, "igm"), n.settings.ifstart = new RegExp(i, "igm"), n.settings.ifend = new RegExp(o, "igm"), n.settings.elsestart = new RegExp(r, "igm"), n.settings.elseifstart = new RegExp(s, "igm"), n.settings.interpolate = new RegExp(a, "igm"), n.settings.noneencode = new RegExp(c, "igm"), n.settings.inlinecomment = new RegExp(p, "igm"), n.settings.rangestart = new RegExp(l, "igm"), n.settings.include = new RegExp(u, "igm"), n.settings.helperRegister = new RegExp(d + f + g, "igm")
                }, n.tagInit(), n.set = function (e, t) {
                    var n = this, i = function (e) {
                        return e.replace(/[\$\(\)\[\]\+\^\{\}\?\*\|\.]/gim, function (e) {
                            return "\\" + e
                        })
                    }, o = function (e, t) {
                        var o = e.match(/^tag::(.*)$/i);
                        return o ? (n.tags[o[1]] = i(t), void n.tagInit()) : void(n.options[e] = t)
                    };
                    if (2 === arguments.length) return void o(e, t);
                    if (e === Object(e)) for (var r in e) e.hasOwnProperty(r) && o(r, e[r])
                }, n.register = function (e, t) {
                    var n = this.options._method;
                    return !n.hasOwnProperty(e) && (n[e] = t)
                }, n.unregister = function (e) {
                    var t = this.options._method;
                    if (t.hasOwnProperty(e)) return delete t[e]
                }, n.template = function (t) {
                    var i = this;
                    this.options = t, this.__interpolate = function (e, t, n) {
                        var i, o = e.split("|"), r = o[0] || "";
                        return o.length > 1 && (e = o.shift(), i = o.shift().split(","), r = "_method." + i.shift() + ".call({}, " + [e].concat(i) + ")"), "<%= " + (t ? "_method.__escapehtml.escaping" : "") + "(" + (n && n.detection === !1 ? "" : "_method.__escapehtml.detection") + "(" + r + ")) %>"
                    }, this.__removeShell = function (e, t) {
                        var o = 0;
                        return e = e.replace(n.settings.helperRegister, function (e, t, i) {
                            var o = s(i), r = o[0], a = o[1], c = new Function(r.join(","), a);
                            return n.register(t, c), e
                        }).replace(n.settings.forstart, function (e, t, n, i) {
                            var n = n || "value", i = i && i.substr(1), r = "i" + o++;
                            return "<% ~function() {for(var " + r + " in " + t + ") {if(" + t + ".hasOwnProperty(" + r + ")) {var " + n + "=" + t + "[" + r + "];" + (i ? "var " + i + "=" + r + ";" : "") + " %>"
                        }).replace(n.settings.forend, "<% }}}(); %>").replace(n.settings.ifstart, function (e, t) {
                            return "<% if(" + t + ") { %>"
                        }).replace(n.settings.ifend, "<% } %>").replace(n.settings.elsestart, function (e) {
                            return "<% } else { %>"
                        }).replace(n.settings.elseifstart, function (e, t) {
                            return "<% } else if(" + t + ") { %>"
                        }).replace(n.settings.noneencode, function (e, n) {
                            return i.__interpolate(n, !1, t)
                        }).replace(n.settings.interpolate, function (e, n) {
                            return i.__interpolate(n, !0, t)
                        }).replace(n.settings.inlinecomment, "").replace(n.settings.rangestart, function (e, t, n, i) {
                            var r = "j" + o++;
                            return "<% ~function() {for(var " + r + "=" + n + ";" + r + "<" + i + ";" + r + "++) {{var " + t + "=" + r + "; %>"
                        }).replace(n.settings.include, function (e, t, n) {
                            return t.match(/^file\:\/\//gim) ? e : "<%= _method.__juicer(" + t + ", " + n + "); %>"
                        }), t && t.errorhandling === !1 || (e = "<% try { %>" + e, e += '<% } catch(e) {_method.__throw("Juicer Render Exception: "+e.message);} %>'), e
                    }, this.__toNative = function (e, t) {
                        return this.__convert(e, !t || t.strip)
                    }, this.__lexicalAnalyze = function (t) {
                        var i = [], o = [], r = "",
                            s = ["if", "each", "_", "_method", "console", "break", "case", "catch", "continue", "debugger", "default", "delete", "do", "finally", "for", "function", "in", "instanceof", "new", "return", "switch", "this", "throw", "try", "typeof", "var", "void", "while", "with", "null", "typeof", "class", "enum", "export", "extends", "import", "super", "implements", "interface", "let", "package", "private", "protected", "public", "static", "yield", "const", "arguments", "true", "false", "undefined", "NaN"],
                            a = function (e, t) {
                                if (Array.prototype.indexOf && e.indexOf === Array.prototype.indexOf) return e.indexOf(t);
                                for (var n = 0; n < e.length; n++) if (e[n] === t) return n;
                                return -1
                            }, c = function (t, r) {
                                if (r = r.match(/\w+/gim)[0], a(i, r) === -1 && a(s, r) === -1 && a(o, r) === -1) {
                                    if ("undefined" != typeof window && "function" == typeof window[r] && window[r].toString().match(/^\s*?function \w+\(\) \{\s*?\[native code\]\s*?\}\s*?$/i)) return t;
                                    if ("undefined" != typeof e && "function" == typeof e[r] && e[r].toString().match(/^\s*?function \w+\(\) \{\s*?\[native code\]\s*?\}\s*?$/i)) return t;
                                    if ("function" == typeof n.options._method[r] || n.options._method.hasOwnProperty(r)) return o.push(r), t;
                                    if (r.match(/^\d+/gim)) return t;
                                    i.push(r)
                                }
                                return t
                            };
                        t.replace(n.settings.forstart, c).replace(n.settings.interpolate, c).replace(n.settings.ifstart, c).replace(n.settings.elseifstart, c).replace(n.settings.include, c).replace(/[\+\-\*\/%!\?\|\^&~<>=,\(\)\[\]]\s*([A-Za-z_0-9]+)/gim, c);
                        for (var p = 0; p < i.length; p++) r += "var " + i[p] + "=_." + i[p] + ";";
                        for (var p = 0; p < o.length; p++) r += "var " + o[p] + "=_method." + o[p] + ";";
                        return "<% " + r + " %>"
                    }, this.__convert = function (e, t) {
                        var n = [].join("");
                        return n += "'use strict';", n += "var _=_||{};", n += "var _out='';_out+='", n += t !== !1 ? e.replace(/\\/g, "\\\\").replace(/[\r\t\n]/g, " ").replace(/'(?=[^%]*%>)/g, "\t").split("'").join("\\'").split("\t").join("'").replace(/<%=(.+?)%>/g, "';_out+=$1;_out+='").split("<%").join("';").split("%>").join("_out+='") + "';return _out;" : e.replace(/\\/g, "\\\\").replace(/[\r]/g, "\\r").replace(/[\t]/g, "\\t").replace(/[\n]/g, "\\n").replace(/'(?=[^%]*%>)/g, "\t").split("'").join("\\'").split("\t").join("'").replace(/<%=(.+?)%>/g, "';_out+=$1;_out+='").split("<%").join("';").split("%>").join("_out+='") + "';return _out.replace(/[\\r\\n]\\s+[\\r\\n]/g, '\\r\\n');"
                    }, this.parse = function (e, t) {
                        var n = this;
                        return t && t.loose === !1 || (e = this.__lexicalAnalyze(e) + e), e = this.__removeShell(e, t), e = this.__toNative(e, t), this._render = new Function("_, _method", e), this.render = function (e, t) {
                            return t && t === i.options._method || (t = r(t, i.options._method)), n._render.call(this, e, t)
                        }, this
                    }
                }, n.compile = function (e, t) {
                    t && t === this.options || (t = r(t, this.options));
                    var n = this, i = {
                        get: function (e) {
                            return t.cachestore ? t.cachestore.get(e) : n.__cache[e]
                        }, set: function (e, i) {
                            return t.cachestore ? t.cachestore.set(e, i) : n.__cache[e] = i
                        }
                    };
                    try {
                        var s = i.get(e) ? i.get(e) : new this.template(this.options).parse(e, t);
                        return t && t.cache === !1 || i.set(e, s), s
                    } catch (a) {
                        return o("Juicer Compile Exception: " + a.message), {
                            render: function () {
                            }
                        }
                    }
                }, n.to_html = function (e, t, n) {
                    return n && n === this.options || (n = r(n, this.options)), this.compile(e, n).render(t, n._method)
                }, "undefined" != typeof e && "undefined" == typeof window && n.set("cache", !1), "undefined" != typeof document && document.body && (n.documentHTML = document.body.innerHTML), "undefined" != typeof t && t.exports ? t.exports = n : this.juicer = n
            }()
        }).call(this, "undefined" != typeof global ? global : "undefined" != typeof self ? self : "undefined" != typeof window ? window : {})
    }, {}]
}, {}, [1]);