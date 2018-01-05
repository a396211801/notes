var baseJs = {
    config: {yuming: "https://buyimg.bianxianmao.com"}, init: function () {
        var e = this;
        e.customusMade(), e._performanceTime(), "1" == e.isWeiXin() ? e.config.yuming = "https://tst.bianxianmao.com" : e.config.yuming = "https://buyimg.bianxianmao.com"
    }, _performanceTime: function () {
        var e = this, t = performance.timing, n = JSON.parse(JSON.stringify(t));
        n.appKey = e._getQueryString("appkey"), n.appUrl = window.location.pathname;
        var i = {performanceTiming: JSON.stringify(n)};
        e._ajax("/activity/dataAcquisition", i, "POST", !0, function (e) {
        })
    }, customusMade: function () {
        var e = this;
        !function (t) {
            var n = !1;
            if (t.business.forEach(function (t) {
                    e._getQueryString("business") == t && (n = !0)
                }), e._getQueryString("appkey") == t.appkey && n) {
                var i = '<div class="addTip" style="font-size:12px;color: #ffffff;text-align: center;padding-bottom: 0.5rem">' + t.str + "</div>";
                $(".page").length > 0 ? $(".page").append(i) : $("body").append(i)
            }
        }({
            appkey: "aae233964f7d4f589d6a74f430fba620",
            business: ["money-80", "money-81", "money-82", "money-83"],
            str: "本活动由杭州微财网络科技公司提供"
        })
    }, _getQueryString: function (e) {
        var t = new RegExp("(^|&)" + e + "=([^&]*)(&|$)", "i"), n = window.location.search.substr(1).match(t);
        return null != n ? unescape(n[2]) : null
    }, _getDeviceInfo: function () {
        return !!navigator.userAgent.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/) ? 2 : 1
    }, _ajax: function (e, t, n, i, a) {
        return $.ajax({
            url: e, data: t || {}, type: n || "POST", async: i || !0, success: a, dataType:"json", error: function (e) {
                console.log("网络异常，请稍后重试！")
            }
        })
    }, _requereStyle: function (e) {
        ({
            init: function (e) {
                this.param = e, this.style = [], this.renderStyle()
            }, renderStyle: function () {
                var e = this;
                this.param.forEach(function (t) {
                    e.setConfig(t)
                }), this.style = this.style.join(""), $('<style type="text/css"></style>').text(this.style).appendTo($("head"))
            }, setConfig: function (e) {
                switch (e[1]) {
                    case"color":
                        this.style.push(e[0] + "{color:" + e[2] + "}");
                        break;
                    case"border-color":
                        this.style.push(e[0] + "{border-color:" + e[2] + "}");
                        break;
                    case"background-image":
                        this.style.push(e[0] + "{background:url(" + e[2] + ") no-repeat center;background-size: 100% 100%;}");
                        break;
                    case"background-color":
                        this.style.push(e[0] + "{background-color:" + e[2] + "}");
                        break;
                    case"img":
                        $(e[0]).find("img").attr("src", e[2]);
                        break;
                    case"href":
                        $(e[0]).find("a").attr("href", e[2])
                }
            }
        }).init(e)
    }, _setRem: function () {
        var e = document.documentElement, t = "orientationchange" in window ? "orientationchange" : "resize",
            n = function () {
                var t = e.clientWidth || 375;
                (t = t > 750 ? 750 : t) && (e.style.fontSize = t / 375 * 20 + "px", window.remscale = t / 375)
            };
        document.addEventListener && (window.addEventListener(t, n, !1), document.addEventListener("DOMContentLoaded", n, !1))
    }, isWeiXin: function () {
        return "micromessenger" == window.navigator.userAgent.toLowerCase().match(/MicroMessenger/i) ? 1 : 0
    }, getLoaded: function (e, t, n) {
        var i = parseInt(localStorage.getItem("settime")), a = parseInt(localStorage.getItem("beforeday"));
        if (!i || !a) return localStorage.setItem("settime", e), void localStorage.setItem("beforeday", t);
        if ((new Date).getTime() > i) {
            var o = parseInt((new Date).getDate());
            return !(o <= a) && (n(), localStorage.setItem("beforeday", o), !0)
        }
        return !0
    }, getSesionLoaded: function (e, t) {
        var n = sessionStorage.getItem("returnloaded"), i = sessionStorage.getItem("skiploaded");
        n || "return" != e || (t(), sessionStorage.setItem("returnloaded", "returnloaded")), i || "skip" != e || (t(), sessionStorage.setItem("skiploaded", "skiploaded"))
    }, setCookie: function (e, t) {
        var n = new Date;
        n.setTime(n.getTime() + 2592e6), document.cookie = e + "=" + escape(t) + ";expires=" + n.toGMTString()
    }, getCookie: function (e) {
        var t, n = new RegExp("(^| )" + e + "=([^;]*)(;|$)");
        return (t = document.cookie.match(n)) ? unescape(t[2]) : null
    }, delCookie: function (e) {
        var t = this, n = new Date;
        n.setTime(n.getTime() - 1);
        var i = t.getCookie(e);
        null != i && (document.cookie = e + "=" + i + ";expires=" + n.toGMTString())
    }
};
baseJs.init();