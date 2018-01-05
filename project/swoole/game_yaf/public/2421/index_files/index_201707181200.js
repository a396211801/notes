var _typeof2 = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function (o) {
    return typeof o
} : function (o) {
    return o && "function" == typeof Symbol && o.constructor === Symbol && o !== Symbol.prototype ? "symbol" : typeof o
};
!function o(n, t, e) {
    function i(p, s) {
        if (!t[p]) {
            if (!n[p]) {
                var r = "function" == typeof require && require;
                if (!s && r) return r(p, !0);
                if (l) return l(p, !0);
                var a = new Error("Cannot find module '" + p + "'");
                throw a.code = "MODULE_NOT_FOUND", a
            }
            var c = t[p] = {exports: {}};
            n[p][0].call(c.exports, function (o) {
                var t = n[p][1][o];
                return i(t ? t : o)
            }, c, c.exports, o, n, t, e)
        }
        return t[p].exports
    }

    for (var l = "function" == typeof require && require, p = 0; p < e.length; p++) i(e[p]);
    return i
}({
    1: [function (o, n, t) {
        var e = "function" == typeof Symbol && "symbol" === _typeof2(Symbol.iterator) ? function (o) {
            return "undefined" == typeof o ? "undefined" : _typeof2(o)
        } : function (o) {
            return o && "function" == typeof Symbol && o.constructor === Symbol && o !== Symbol.prototype ? "symbol" : "undefined" == typeof o ? "undefined" : _typeof2(o)
        };
        !function (o) {
            var n = function (o) {
                new t(o)
            }, t = function (n) {
                if ("object" == ("undefined" == typeof n ? "undefined" : e(n))) {
                    var t = {};
                    if (n.result && n.result.lottery) {
                        var i = n.result, l = i.lottery;
                        t = {
                            img: l.imgurl,
                            title: l.title,
                            tip: l.tip,
                            validate: l.validate,
                            couponCode: l.coupon_code,
                            couponKey: l.coupon_key,
                            showUse: l.showUse,
                            useBtnText: l.useBtnText,
                            st_info_dpm_exposure: l.st_info_dpm_exposure || "",
                            st_info_dpm_btn_get: l.st_info_dpm_btn_get || "",
                            st_info_dpm_btn_close: l.st_info_dpm_btn_close || "",
                            st_info_dpm_img_click: l.st_info_dpm_img_click || "",
                            type: l.type,
                            logprarm: i.exposure,
                            downloadAppConfig: {
                                openUrl: l.openUrl,
                                iosDownloadUrl: l.iosDownloadUrl,
                                androidDownloadUrl: l.androidDownloadUrl,
                                confirm: l.confirm
                            },
                            link: l.link
                        }
                    }
                    this.prize = n.prize || {}, this.prize = o.extend(!0, t, this.prize), this.hasHtml = n.hasHtml || "", this.hasInsert = n.hasInsert || "";
                    var p = this;
                    o("body").append(p.tpl(p.prize)), document.touchmove = function (o) {
                        o.preventDefault()
                    }, p.prize && (setTimeout(function () {
                        p.animation(n)
                    }, 300), o(".J_btnCoupon").attr("db-click", p.prize.st_info_dpm_btn_get), o(".coupon-modal-close").attr("db-click", p.prize.st_info_dpm_btn_close), o(".J_gotoDetail").attr({
                        "db-click": p.prize.st_info_dpm_img_click,
                        "db-exposure": p.prize.st_info_dpm_exposure
                    }), setTimeout(function () {
                        window.DB && window.DB.exposure && window.DB.exposure.initLog()
                    }, 500), void 0 !== p.prize.downloadAppConfig && (window.downloadAppConfig = p.prize.downloadAppConfig), o(".J_modalShowPrize .J_btnCoupon").on("click", function () {
                        var t = o(this).html(), e = this;
                        o(e).find("span").length && o(e).prop("disabled", !0).html("<i></i><span>页面跳转中，请稍后</span>"), p.use.call(e, t), n.callback && n.callback.use && n.callback.use()
                    }), o(".J_modalShowPrize .coupon-modal-close").on("click", function () {
                        document.touchmove = null, o(".J_modalShowPrize").remove(), n.callback && n.callback.close ? n.callback.close() : p.prize.noreload || window.location.reload()
                    }), o(".J_gotoDetail").on("click", function (t) {
                        var e = this;
                        t.preventDefault();
                        var i = o(e).attr("data-pic");
                        n.callback && n.callback.close && n.callback.use(), p.prize.showUse && i ? window.downloadApp() : window.location.href = p.prize.link
                    }))
                } else console.warn("参数错误")
            };
            t.prototype.use = function (n) {
                window.downloadApp(), setTimeout(o.proxy(function () {
                    o(this).prop("disabled", !1).html(n)
                }, this), 500)
            }, t.prototype.animation = function () {
                o(".J_modalShowPrize").show()
            }, window.CouponModal = t, window.showCouponPrize = n
        }(Zepto)
    }, {}], 2: [function (o, n, t) {
        !function (n) {
            o("../public"), CouponModal.prototype.tpl = function (o) {
                if (!this.prize) return "";
                var n = "", t = "";
                !this.hasHtml && o.couponCode ? (n = this.hasInsert + '<div class="coupon-code">' + (o.couponCode ? '<p class="code inline1"><span>券码</span>' + o.couponCode + "</p>" : "") + (o.couponKey ? '<p class="code"><span>密码</span>' + o.couponKey + "</p>" : "") + "</div>", t = '<div class="modal-body">') : (n = this.hasInsert + this.hasHtml, t = '<div class="modal-body withoutCode">');
                var e = o.showUse ? '<button type="button" class="J_btnCoupon coupon-use">' + (o.useBtnText ? o.useBtnText : "立即领取") + "</button>" : "";
                return '<div class="J_modalShowPrize coupon-modal-showPrize">\n      <span class="close coupon-modal-close"></span>\n      <div class="coupon-modal-showPrize-dialog">\n        <div class="modal-header"></div>\n          ' + t + '\n          <p class="modal-title">' + o.title + '</p>\n          <div class="coupon-imageBg">\n            <div class="coupon-image">\n              <img class="J_gotoDetail logandgo" data-pic="true" src="' + o.img + '">\n            </div>\n            ' + n + "\n          </div>\n          " + e + '\n        </div>\n        <i class="ribbon"></i>\n      </div>\n    </div>'
            }
        }(Zepto)
    }, {"../public": 1}]
}, {}, [2]);