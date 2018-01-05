var _typeof2 = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator
    ? function (o) {
        return typeof o
    }
    : function (o) {
        return o && "function" == typeof Symbol && o.constructor === Symbol && o !== Symbol.prototype
            ? "symbol"
            : typeof o
    };
!function o(n, t, e) {
    function i(r, p) {
        if (!t[r]) {
            if (!n[r]) {
                var s = "function" == typeof require && require;
                if (!p && s) 
                    return s(r, !0);
                if (l) 
                    return l(r, !0);
                var a = new Error("Cannot find module '" + r + "'");
                throw a.code = "MODULE_NOT_FOUND",
                a
            }
            var c = t[r] = {
                exports: {}
            };
            n[r][0].call(c.exports, function (o) {
                var t = n[r][1][o];
                return i(t
                    ? t
                    : o)
            }, c, c.exports, o, n, t, e)
        }
        return t[r].exports
    }
    for (var l = "function" == typeof require && require, r = 0; r < e.length; r++) 
        i(e[r]);
    return i
}({
    1: [
        function (o, n, t) {
            var e = "function" == typeof Symbol && "symbol" === _typeof2(Symbol.iterator)
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
            !function (o) {
                var n = function (o) {
                        new t(o)
                    },
                    t = function (n) {
                        if ("object" == ("undefined" == typeof n
                            ? "undefined"
                            : e(n))) {
                            var t = {};
                            if (n.result && n.result.lottery) {
                                var i = n.result,
                                    l = i.lottery;
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
                            this.prize = n.prize || {},
                            this.prize = o.extend(!0, t, this.prize),
                            this.hasHtml = n.hasHtml || "",
                            this.hasInsert = n.hasInsert || "";
                            var r = this;
                            o("body").append(r.tpl(r.prize)),
                            document.touchmove = function (o) {
                                o.preventDefault()
                            },
                            r.prize && (setTimeout(function () {
                                r.animation(n)
                            }, 300), o(".J_btnCoupon").attr("db-click", r.prize.st_info_dpm_btn_get), o(".coupon-modal-close").attr("db-click", r.prize.st_info_dpm_btn_close), o(".J_gotoDetail").attr({"db-click": r.prize.st_info_dpm_img_click, "db-exposure": r.prize.st_info_dpm_exposure}), setTimeout(function () {
                                window.DB && window.DB.exposure && window
                                    .DB
                                    .exposure
                                    .initLog()
                            }, 500), void 0 !== r.prize.downloadAppConfig && (window.downloadAppConfig = r.prize.downloadAppConfig), o(".J_modalShowPrize .J_btnCoupon").on("click", function () {
                                var t = o(this).html(),
                                    e = this;
                                o(e)
                                    .find("span")
                                    .length && o(e)
                                    .prop("disabled", !0)
                                    .html("<i></i><span>页面跳转中，请稍后</span>"),
                                r
                                    .use
                                    .call(e, t),
                                n.callback && n.callback.use && n
                                    .callback
                                    .use()
                            }), o(".J_modalShowPrize .coupon-modal-close").on("click", function () {
                                document.touchmove = null,
                                o(".J_modalShowPrize").remove(),
                                n.callback && n.callback.close
                                    ? n
                                        .callback
                                        .close()
                                    : r.prize.noreload || window
                                        .location
                                        .reload()
                            }), o(".J_gotoDetail").on("click", function (t) {
                                var e = this;
                                t.preventDefault();
                                var i = o(e).attr("data-pic");
                                n.callback && n.callback.close && n
                                    .callback
                                    .use(),
                                r.prize.showUse && i
                                    ? window.downloadApp()
                                    : window.location.href = r.prize.link
                            }))
                        } else 
                            console.warn("参数错误")
                    };
                t.prototype.use = function (n) {
                    window.downloadApp(),
                    setTimeout(o.proxy(function () {
                        o(this)
                            .prop("disabled", !1)
                            .html(n)
                    }, this), 500)
                },
                t.prototype.animation = function () {
                    o(".J_modalShowPrize").show()
                },
                window.CouponModal = t,
                window.showCouponPrize = n
            }(Zepto)
        }, {}
    ],
    2: [
        function (o, n, t) {
            !function (n) {
                o("../public"),
                CouponModal.prototype.tpl = function (o) {
                    if (!this.prize) 
                        return "";
                    var n = "";
                    n = this.hasHtml
                        ? this.hasInsert + this.hasHtml
                        : this.hasInsert + '<div class="coupon">' + (o.couponCode
                            ? '<p class="code"><span>券码</span>' + o.couponCode + "</p>"
                            : "") + (o.couponKey
                            ? '<p class="password"><span>密码</span>' + o.couponKey + "</p>"
                            : "") + "</div>";
                    var t = o.showUse
                        ? '<button type="button" class="J_btnCoupon coupon-use">' + (o.useBtnText
                            ? o.useBtnText
                            : "立即领取") + "</button>"
                        : "";
                    return '<div class="J_modalShowPrize coupon-modal-showPrize">\n      <span class="close ' +
                        'coupon-modal-close"></span>\n      <div class="coupon-modal-showPrize-decorate">' +
                            '</div>\n      <div class="coupon-modal-showPrize-dialog">\n        <div class="m' +
                            'odal-header"></div>\n        <div class="modal-body">\n          <h3>' + o.title + '</h3>\n          <div class="coupon-wrapper">\n            <div class="coupon-im' +
                            'age">\n              <img class="J_gotoDetail logandgo" data-pic="true" src="' + o.img + '">\n            </div>\n            ' + n + '\n          </div>\n          <div class="body-footer">\n            ' + t + "\n          </div>\n        </div>\n        </div>\n      </div>\n    </div>"
                }
            }(Zepto)
        }, {
            "../public": 1
        }
    ]
}, {}, [2]);