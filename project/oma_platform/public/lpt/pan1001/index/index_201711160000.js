var _typeof2 = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator
    ? function (e) {
        return typeof e
    }
    : function (e) {
        return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype
            ? "symbol"
            : typeof e
    };
!function e(n, o, r) {
    function t(a, c) {
        if (!o[a]) {
            if (!n[a]) {
                var l = "function" == typeof require && require;
                if (!c && l) 
                    return l(a, !0);
                if (i) 
                    return i(a, !0);
                var s = new Error("Cannot find module '" + a + "'");
                throw s.code = "MODULE_NOT_FOUND",
                s
            }
            var u = o[a] = {
                exports: {}
            };
            n[a][0].call(u.exports, function (e) {
                var o = n[a][1][e];
                return t(o
                    ? o
                    : e)
            }, u, u.exports, e, n, o, r)
        }
        return o[a].exports
    }
    for (var i = "function" == typeof require && require, a = 0; a < r.length; a++) 
        t(r[a]);
    return t
}({
    1: [
        function (e, n, o) {
            !function (n) {
                var o = e("../../unit/lib/lib-template/0.0.0/artTemplate"),
                    r = {
                        init: function () {
                            var o = this,
                                r = e("./tpl");
                            n(".recommend-modal").length || (window.CFG && window.CFG.isShowRecommend
                                ? this.ajax(function (e) {
                                    e.recommend = !0,
                                    o.render(n("body"), e, r),
                                    n("#recommend-modal").show(),
                                    window.DB.exposure && window
                                        .DB
                                        .exposure
                                        .singleExp(e.stRecommendInfo),
                                    window.DB.exposure && e.btnClose && window
                                        .DB
                                        .exposure
                                        .singleExp(e.btnClose.stInfoExposure),
                                    window.DB.exposure && e.block1 && window
                                        .DB
                                        .exposure
                                        .singleExp(e.block1.stInfoExposure),
                                    window.DB.exposure && e.block2 && window
                                        .DB
                                        .exposure
                                        .singleExp(e.block2.stInfoExposure),
                                    e.block1
                                        ? window.DB.exposure && e.block3 && window
                                            .DB
                                            .exposure
                                            .singleExp(e.block3.stInfoExposure)
                                        : window.DB.exposure && e.block4 && window
                                            .DB
                                            .exposure
                                            .singleExp(e.block4.stInfoExposure),
                                    n("#recommend-modal .close")
                                        .off("click")
                                        .on("click", function () {
                                            window.DB.exposure && window
                                                .DB
                                                .exposure
                                                .singleClk({
                                                    data: e.btnClose.stInfoClick,
                                                    callback: function () {
                                                        n("#recommend-modal")
                                                            .hide()
                                                            .remove()
                                                    }
                                                })
                                        })
                                })
                                : this.ajaxClosed(function (e) {
                                    o.render(n("body"), {
                                        recommend: !1
                                    }, r),
                                    n("#recommend-modal").show(),
                                    window.DB.exposure && window
                                        .DB
                                        .exposure
                                        .singleExp(e.btnClose.stInfoExposure),
                                    n("#recommend-modal .close")
                                        .off("click")
                                        .on("click", function () {
                                            window.DB.exposure && window
                                                .DB
                                                .exposure
                                                .singleClk({
                                                    data: e.btnClose.stInfoClick,
                                                    callback: function () {
                                                        n("#recommend-modal")
                                                            .hide()
                                                            .remove()
                                                    }
                                                })
                                        })
                                }))
                        },
                        render: function t(e, n, r) {
                            var t = o.compile(r),
                                i = t(n);
                            e.append(i)
                        },
                        ajax: function (e) {
                            var o = this;
                            n.ajax({
                                url: "/ts/activity/getRecommend",
                                type: "post",
                                dataType: "json",
                                data: {
                                    slotId: o.getparams("slotId"),
                                    id: o.getparams("id"),
                                    login: o.getparams("login"),
                                    appKey: o.getparams("appKey"),
                                    deviceId: o.getparams("deviceId"),
                                    isShowRecommend: CFG.isShowRecommend,
                                    isAlipay: !1,
                                    layerId: window.recommendId,
                                    id: this_id,
                                    awid: this_awid,
                                    random: this_random
                                },
                                success: function (n) {
                                    $.ajax({
                                        url: '/ts/activity/vpCount',
                                        dataType: 'json',
                                        type: 'post',
                                        data: {random: this_random, awid: this_awid, aid: this_aid, id: this_id,pos:3},
                                        success: function () {}
                                    })
                                    n.success
                                        ? (o.isJPG(n.data.block1 && n.data.block1.bannerUrl) && "function" == typeof "".ossimg && (n.data.block1.bannerUrl = n.data.block1.bannerUrl.ossimg()), o.isJPG(n.data.block2 && n.data.block2.bannerUrl) && "function" == typeof "".ossimg && (n.data.block2.bannerUrl = n.data.block2.bannerUrl.ossimg()), e && e(n.data))
                                        : e && e("")
                                    
                                      
                                },
                                error: function () {
                                    console.log("get recommend queue error")
                                }
                            })
                        },
                        ajaxClosed: function (e) {
                            var o = this;
                            n.ajax({
                                url: "/ts/activity/getClosedRecommend",
                                type: "post",
                                dataType: "json",
                                data: {
                                    slotId: o.getparams("slotId"),
                                    id: o.getparams("id"),
                                    login: o.getparams("login"),
                                    appKey: o.getparams("appKey"),
                                    deviceId: o.getparams("deviceId"),
                                    isShowRecommend: CFG.isShowRecommend,
                                    isAlipay: !1,
                                    layerId: window.recommendId
                                },
                                success: function (n) {
                                    n.success
                                        ? e && e(n.data)
                                        : e && e("")
                                },
                                error: function () {
                                    console.log("get recommend queue error")
                                }
                            })
                        },
                        show: function () {
                            var e = this;
                            e.init(),
                            e.events()
                        },
                        events: function () {},
                        isJPG: function (e) {
                            var n = !1;
                            if (e) {
                                var o = e.split(".");
                                n = o.length > 0 && ("jpg" === o[o.length - 1] || "png" === o[o.length - 1])
                            }
                            return n
                        },
                        getparams: function (e) {
                            var n = "[\\?&]" + e + "=([^&#]*)",
                                o = new RegExp(n),
                                r = o.exec(location.href);
                            return null === r
                                ? ""
                                : r[1]
                        }
                    };
                window.showRecommend = r
                    .show
                    .bind(r)
            }(Zepto)
        }, {
            "../../unit/lib/lib-template/0.0.0/artTemplate": 3,
            "./tpl": 2
        }
    ],
    2: [
        function (e, n, o) {
             n.exports = '<div id="recommend-modal" class="recommend-modal"><div class="recommend-modal-di' +
                    'alog"> <i class="close"></i>{{if !block1}}<div class="recommend-body3">{{if reco' +
                    'mmend}}<a class="recommend-bg3Btn" href="{{block4.actUrl}}"></a>{{/if}}</div>{{e' +
                    'lse}}{{if !block2}}<div class="recommend-body2"><a class="fuli" href="{{block3.a' +
                    'ctUrl}}"></a><a class="recommend-li" href="{{block1.actUrl}}"><i class="recommen' +
                    'd-btn"></i><img src="{{block1.bannerUrl}}"></a></div>{{else}}<div class="recomme' +
                    'nd-body1"><a class="fuli" href="{{block3.actUrl}}"></a><a class="recommend-li" h' +
                    'ref="{{block1.actUrl}}"><i class="recommend-btn"></i><img src="{{block1.bannerUr' +
                    'l}}"></a><a class="recommend-li" href="{{block2.actUrl}}"><i class="recommend-bt' +
                    'n"></i><img src="{{block2.bannerUrl}}"></a></div>{{/if}}{{/if}}</div></div>'
        }, {}
    ],
    3: [
        function (e, n, o) {
            var r = "function" == typeof Symbol && "symbol" === _typeof2(Symbol.iterator)
                ? function (e) {
                    return "undefined" == typeof e
                        ? "undefined"
                        : _typeof2(e)
                }
                : function (e) {
                    return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype
                        ? "symbol"
                        : "undefined" == typeof e
                            ? "undefined"
                            : _typeof2(e)
                };
            !function () {
                function e(e) {
                    return e
                        .replace(x, "")
                        .replace(k, ",")
                        .replace(E, "")
                        .replace(I, "")
                        .replace(B, "")
                        .split(/^$|,+/)
                }
                function t(e) {
                    return "'" + e
                        .replace(/('|\\)/g, "\\$1")
                        .replace(/\r/g, "\\r")
                        .replace(/\n/g, "\\n") + "'"
                }
                function i(n, o) {
                    function r(e) {
                        return f += e
                            .split(/\n/)
                            .length - 1,
                        u && (e = e.replace(/\s+/g, " ").replace(/<!--.*?-->/g, "")),
                        e && (e = g[1] + t(e) + g[2] + "\n"),
                        e
                    }
                    function i(n) {
                        var r = f;
                        if (s
                            ? n = s(n, o)
                            : a && (n = n.replace(/\n/g, function () {
                                return f++,
                                "$line=" + f + ";"
                            })), 0 === n.indexOf("=")) {
                            var t = d && !/^=[=#]/.test(n);
                            if (n = n.replace(/^=[=#]?|[\s;]*$/g, ""), t) {
                                var i = n.replace(/\s*\([^\)]+\)/, "");
                                b[i] || /^(include|print)$/.test(i) || (n = "$escape(" + n + ")")
                            } else 
                                n = "$string(" + n + ")";
                            n = g[1] + n + g[2]
                        }
                        return a && (n = "$line=" + r + ";" + n),
                        w(e(n), function (e) {
                            if (e && !p[e]) {
                                var n;
                                n = "print" === e
                                    ? v
                                    : "include" === e
                                        ? $
                                        : b[e]
                                            ? "$utils." + e
                                            : y[e]
                                                ? "$helpers." + e
                                                : "$data." + e,
                                x += e + "=" + n + ",",
                                p[e] = !0
                            }
                        }),
                        n + "\n"
                    }
                    var a = o.debug,
                        c = o.openTag,
                        l = o.closeTag,
                        s = o.parser,
                        u = o.compress,
                        d = o.escape,
                        f = 1,
                        p = {
                            $data: 1,
                            $filename: 1,
                            $utils: 1,
                            $helpers: 1,
                            $out: 1,
                            $line: 1
                        },
                        m = "".trim,
                        g = m
                            ? ["$out='';", "$out+=", ";", "$out"]
                            : [
                                "$out=[];", "$out.push(", ");", "$out.join('')"
                            ],
                        h = m
                            ? "$out+=text;return $out;"
                            : "$out.push(text);",
                        v = "function(){var text=''.concat.apply('',arguments);" + h + "}",
                        $ = "function(filename,data){data=data||$data;var text=$utils.$include(filename,data," +
                                "$filename);" + h + "}",
                        x = "'use strict';var $utils=this,$helpers=$utils.$helpers," + (a
                            ? "$line=0,"
                            : ""),
                        k = g[0],
                        E = "return new String(" + g[3] + ");";
                    w(n.split(c), function (e) {
                        e = e.split(l);
                        var n = e[0],
                            o = e[1];
                        1 === e.length
                            ? k += r(n)
                            : (k += i(n), o && (k += r(o)))
                    });
                    var I = x + k + E;
                    a && (I = "try{" + I + "}catch(e){throw {filename:$filename,name:'Render Error',message:e.message,line:$" +
                            "line,source:" + t(n) + ".split(/\\n/)[$line-1].replace(/^\\s+/,'')};}");
                    try {
                        var B = new Function("$data", "$filename", I);
                        return B.prototype = b,
                        B
                    } catch (D) {
                        throw D.temp = "function anonymous($data,$filename) {" + I + "}",
                        D
                    }
                }
                var a = function (e, n) {
                    return "string" == typeof n
                        ? v(n, {filename: e})
                        : s(e, n)
                };
                a.version = "3.0.0",
                a.config = function (e, n) {
                    c[e] = n
                };
                var c = a.defaults = {
                        openTag: "<%",
                        closeTag: "%>",
                        escape: !0,
                        cache: !0,
                        compress: !1,
                        parser: null
                    },
                    l = a.cache = {};
                a.render = function (e, n) {
                    return v(e, n)
                };
                var s = a.renderFile = function (e, n) {
                    var o = a.get(e) || h({filename: e, name: "Render Error", message: "Template not found"});
                    return n
                        ? o(n)
                        : o
                };
                a.get = function (e) {
                    var n;
                    if (l[e]) 
                        n = l[e];
                    else if ("object" == ("undefined" == typeof document
                        ? "undefined"
                        : r(document))) {
                        var o = document.getElementById(e);
                        if (o) {
                            var t = (o.value || o.innerHTML).replace(/^\s*|\s*$/g, "");
                            n = v(t, {filename: e})
                        }
                    }
                    return n
                };
                var u = function S(e, n) {
                        return "string" != typeof e && (n = "undefined" == typeof e
                            ? "undefined"
                            : r(e), "number" === n
                            ? e += ""
                            : e = "function" === n
                                ? S(e.call(e))
                                : ""),
                        e
                    },
                    d = {
                        "<": "&#60;",
                        ">": "&#62;",
                        '"': "&#34;",
                        "'": "&#39;",
                        "&": "&#38;"
                    },
                    f = function (e) {
                        return d[e]
                    },
                    p = function (e) {
                        return u(e).replace(/&(?![\w#]+;)|[<>"']/g, f)
                    },
                    m = Array.isArray || function (e) {
                        return "[object Array]" === {}.toString.call(e)
                    },
                    g = function (e, n) {
                        var o,
                            r;
                        if (m(e)) 
                            for (o = 0, r = e.length; r > o; o++) 
                                n.call(e, e[o], o, e);
                    else 
                            for (o in e) 
                                n.call(e, e[o], o)
                    },
                    b = a.utils = {
                        $helpers: {},
                        $include: s,
                        $string: u,
                        $escape: p,
                        $each: g
                    };
                a.helper = function (e, n) {
                    y[e] = n
                };
                var y = a.helpers = b.$helpers;
                a.onerror = function (e) {
                    var n = "Template Error\n\n";
                    for (var o in e) 
                        n += "<" + o + ">\n" + e[o] + "\n\n";
                    
                    "object" == ("undefined" == typeof console
                        ? "undefined"
                        : r(console)) && console.error(n)
                };
                var h = function (e) {
                        return a.onerror(e),
                        function () {
                            return "{Template Error}"
                        }
                    },
                    v = a.compile = function (e, n) {
                        function o(o) {
                            try {
                                return new a(o, t) + ""
                            } catch (r) {
                                return n.debug
                                    ? h(r)()
                                    : (n.debug = !0, v(e, n)(o))
                            }
                        }
                        n = n || {};
                        for (var r in c) 
                            void 0 === n[r] && (n[r] = c[r]);
                        var t = n.filename;
                        try {
                            var a = i(e, n)
                        } catch (s) {
                            return s.filename = t || "anonymous",
                            s.name = "Syntax Error",
                            h(s)
                        }
                        return o.prototype = a.prototype,
                        o.toString = function () {
                            return a.toString()
                        },
                        t && n.cache && (l[t] = o),
                        o
                    },
                    w = b.$each,
                    $ = "break,case,catch,continue,debugger,default,delete,do,else,false,finally,for,func" +
                            "tion,if,in,instanceof,new,null,return,switch,this,throw,true,try,typeof,var,void" +
                            ",while,with,abstract,boolean,byte,char,class,const,double,enum,export,extends,fi" +
                            "nal,float,goto,implements,import,int,interface,long,native,package,private,prote" +
                            "cted,public,short,static,super,synchronized,throws,transient,volatile,arguments," +
                            "let,yield,undefined",
                    x = /\/\*[\w\W]*?\*\/|\/\/[^\n]*\n|\/\/[^\n]*$|"(?:[^"\\]|\\[\w\W])*"|'(?:[^'\\]|\\[\w\W])*'|\s*\.\s*[$\w\.]+/g,
                    k = /[^\w$]+/g,
                    E = new RegExp(["\\b" + $.replace(/,/g, "\\b|\\b") + "\\b"].join("|"), "g"),
                    I = /^\d[^,]*|,\d[^,]*/g,
                    B = /^,+|,+$/g;
                c.openTag = "{{",
                c.closeTag = "}}";
                var D = function (e, n) {
                    var o = n.split(":"),
                        r = o.shift(),
                        t = o.join(":") || "";
                    return t && (t = ", " + t),
                    "$helpers." + r + "(" + e + t + ")"
                };
                c.parser = function (e, n) {
                    e = e.replace(/^\s/, "");
                    var o = e.split(" "),
                        r = o.shift(),
                        t = o.join(" ");
                    switch (r) {
                        case "if":
                            e = "if(" + t + "){";
                            break;
                        case "else":
                            o = "if" === o.shift()
                                ? " if(" + o.join(" ") + ")"
                                : "",
                            e = "}else" + o + "{";
                            break;
                        case "/if":
                            e = "}";
                            break;
                        case "each":
                            var i = o[0] || "$data",
                                c = o[1] || "as",
                                l = o[2] || "$value",
                                s = o[3] || "$index",
                                u = l + "," + s;
                            "as" !== c && (i = "[]"),
                            e = "$each(" + i + ",function(" + u + "){";
                            break;
                        case "/each":
                            e = "});";
                            break;
                        case "echo":
                            e = "print(" + t + ");";
                            break;
                        case "print":
                        case "include":
                            e = r + "(" + o.join(",") + ");";
                            break;
                        default:
                            if (-1 !== t.indexOf("|")) {
                                var d = n.escape;
                                0 === e.indexOf("#") && (e = e.substr(1), d = !1);
                                for (var f = 0, p = e.split("|"), m = p.length, g = d
                                    ? "$escape"
                                    : "$string", b = g + "(" + p[f++] + ")"; m > f; f++) 
                                    b = D(b, p[f]);
                                e = "=#" + b
                            } else 
                                e = a.helpers[r]
                                    ? "=#" + r + "(" + o.join(",") + ");"
                                    : "=" + e
                            }
                    return e
                },
                "function" == typeof define
                    ? define(function () {
                        return a
                    })
                    : "undefined" != typeof o
                        ? n.exports = a
                        : this.template = a
            }()
        }, {}
    ]
}, {}, [1]);