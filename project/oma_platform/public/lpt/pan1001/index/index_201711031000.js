!function n(o, i, a) {
    function s(u, e) {
        if (!i[u]) {
            if (!o[u]) {
                var c = "function" == typeof require && require;
                if (!e && c) 
                    return c(u, !0);
                if (t) 
                    return t(u, !0);
                var p = new Error("Cannot find module '" + u + "'");
                throw p.code = "MODULE_NOT_FOUND",
                p
            }
            var r = i[u] = {
                exports: {}
            };
            o[u][0].call(r.exports, function (n) {
                var i = o[u][1][n];
                return s(i
                    ? i
                    : n)
            }, r, r.exports, n, o, i, a)
        }
        return i[u].exports
    }
    for (var t = "function" == typeof require && require, u = 0; u < a.length; u++) 
        s(a[u]);
    return s
}({
    1: [
        function (n, o, i) {
            !function (n) {
                window.couponList = [
                    "//yun.tuisnake.com/h5-mami/couponPrize/close.png",
                    "//yun.tuisnake.com/h5-mami/couponPrize/1.22/body.png",
                    "//yun.tuisnake.com/h5-mami/couponPrize/1.22/bg-back.png",
                    "//yun.tuisnake.com/h5-mami/couponPrize/1.22/bg-front.png",
                    "//yun.tuisnake.com/h5-mami/couponPrize/1.22/win-tip.png",
                    "//yun.tuisnake.com/h5-mami/couponPrize/1.22/bg-front-low.png",
                    "//yun.tuisnake.com/h5-mami/couponPrize/1.22/button.png",
                    "//yun.tuisnake.com/h5-mami/couponPrize/1.22/redpacks.png",
                    "//yun.tuisnake.com/h5/showCouponPrize/4.0.0/assets/light.png"
                ],
                CouponModal.prototype.tpl = function (n) {
                    if (!this.prize) 
                        return "";
                    var o = "",
                        i = "";
                    !this.hasHtml && n.couponCode
                        ? (o = this.hasInsert + '<div class="coupon-code">' + (n.couponCode
                            ? '<p class="code"><span>券码</span>  ' + n.couponCode + "</p>"
                            : "") + (n.couponKey
                            ? '<p class="code"><span>密码</span>  ' + n.couponKey + "</p>"
                            : "") + "</div>", i = '<div class="modal-body">')
                        : (o = this.hasInsert + this.hasHtml, i = '<div class="modal-body withoutCode">');
                    var a = n.showUse
                        ? '<button type="button" class="J_btnCoupon coupon-use"><span>' + (n.useBtnText
                            ? n.useBtnText
                            : "立即领取") + "</span></button>"
                        : "";
                    return '  <div class="J_modalShowPrize coupon-modal-showPrize">\n    <div class="coupon-' +
                        'modal-animate">\n      <div class="coupon-modal-showPrize-dialog">\n        <spa' +
                            'n class="close coupon-modal-close"></span>\n        <div class="modal-light">\n ' +
                            '         <div class="l-shine"></div>\n        </div>\n        <div class="modal-' +
                            'header"></div>\n        ' + i + '\n          <div class="body-header"></div>\n          <div class="coupon-wrappe' +
                            'r">\n            <div class="coupon-image">\n              <img class="J_gotoDet' +
                            'ail logandgo" data-pic="true" src="' + n.img + '"/>\n            </div>\n          </div>\n          <div class="body-footer">\n' +
                            '            <span class="coupon-win"></span>\n            <h3 class="coupon-name' +
                            '"><span>' + n.title + "</span></h3>\n            " + o + "\n            " + a + '\n          </div>\n        </div>\n        <i class="decoration"></i>\n      </' +
                            'div>\n    </div>\n  </div>'
                }
            }(Zepto)
        }, {}
    ]
}, {}, [1]);