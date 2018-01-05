function Dialog(s, a) {
    this.urlHead = "http://game.com:8888", this.cont = "/activity/countInfo", this.GP = s.GP, this.id = s.id, this.cardbgId = s.cardbgId, this.title = s.title, this.ordernum = s.ordernum, this.ticket = s.ticket, this.content = s.content, this.btntext = s.btntext, this.awardlink = s.awardlink, this.isclick = !0, this.param = s.param, this.ele = a.ele, this.cardbg = "", this.clicked = !1, this.callback = a.callback, this.dialog_init()
}

Dialog.prototype = {
    constructor: Dialog, dialog_init: function () {
        switch (this.cardbgId) {
            case 0:
                this.cardbg = "https://buyimg.bianxianmao.com/dist/dialogModel/images/cardbg_turntable.png";
                break;
            case 1:
                this.cardbg = "https://buyimg.bianxianmao.com/dist/dialogModel/images/cardbg_goldegg.png";
                break;
            case 2:
                this.cardbg = "https://buyimg.bianxianmao.com/dist/dialogModel/images/cardbg_universal.png";
                break;
            case 3:
                this.cardbg = "https://buyimg.bianxianmao.com/dist/dialogModel/images/cardbg_pickchest.png"
        }
        switch (this.id) {
            case 1:
                this.dialog_1();
                break;
            case 2:
                this.dialog_2();
                break;
            case 3:
                this.dialog_3();
                break;
            case 4:
                this.dialog_4();
                break;
            case 5:
                this.dialog_5();
                break;
            case 0:
                this.dialog_getAward();
                break;
            default:
                this.dialog_2()
        }
        this.dialog_close()
    }, dialog_close: function () {
        $(document).off("click", ".modal-body").on("click", ".modal-body", function () {
            if ($(".goto").html("页面正在加载~"), this.isclick) {
                this.isclick = !1;
                var s = this.urlHead + this.cont;
                try {
                    baseJs._ajax(s, this.param, "POST", !0, function (s) {
                        console.log("广告点击成功");
                        var a = s.data;
                        setTimeout(function () {
                            $(".popShowPrize").remove()
                        }, 600), -1 == this.awardlink.indexOf("?") ? window.location.href = this.awardlink + "?bxm_id=" + a : window.location.href = this.awardlink + "&bxm_id=" + a
                    }.bind(this))
                } catch (s) {
                    window.location.href = this.awardlink
                }
            }
        }.bind(this)), $(document).on("click", this.ele, function (s) {
            if (this.ele && (s.stopPropagation(), this.callback && "function" == typeof this.callback)) {
                this.callback();
                var a = $(".showPrize-dialog").offset(), i = a.left + a.width / 2 + "px",
                    n = a.top + a.height / 2 + "px";
                $(document).find(".showPrize-dialog,.card-sunshine").animate({
                    transform: "translate3d(" + i + ",-" + n + ",0) scale(0.1)",
                    "-webkit-transform": "translate3d(" + i + ",-" + n + ",0) scale(0.1)"
                }, 300, "linear", function () {
                    $(".popShowPrize").remove()
                })
            }
        }.bind(this)), $(document).on("click", ".getAward,.quitAward", function (s) {
            if (!this.clicked) {
                this.clicked = !0, s.stopPropagation();
                var a, i, n, t;
                switch (i = $("input[name=username]").val(), n = $("input[name=tel]").val(), t = $("input[name=adress]").val(), s.target.className) {
                    case"getAward":
                        if (a = 0, "" == i || "" == n || "" == t) return this.clicked = !1, void this.myAlert("请填写完整信息哦", 1e3);
                        if (!/^1[3|4|5|8][0-9]\d{4,8}$/.test(n)) return this.myAlert("请填写有效号码", 1e3), void(this.clicked = !1);
                        break;
                    case"quitAward":
                        a = 2
                }
                var o = this.urlHead + "/award/clickPrizes",
                    d = {orderNum: this.ordernum, userName: i, phone: n, userAddress: t, state: a};
                baseJs._ajax(o, d, "GET", !0, function (s) {
                    this.callback && "function" == typeof this.callback && this.callback(), this.clicked = !1, $("#getaward").remove()
                })
            }
        }.bind(this))
    }, myAlert: function (s, a) {
        if (!document.getElementById("alertBg")) {
            var i = a || 1e3, n = document.createElement("div");
            n.setAttribute("id", "alertBg");
            var t = document.createElement("p");
            t.setAttribute("class", "text");
            var o = document.createTextNode(s);
            t.appendChild(o), n.appendChild(t), document.body.appendChild(n), setTimeout(function () {
                document.body.removeChild(n)
            }, i)
        }
    }, dialog_1: function () {
        var s = '<div class="popShowPrize"><div class="dialog_1-showPrize-bg"><img src="https://bxm-guide.oss-cn-shanghai.aliyuncs.com/dist/dollModel/images/tcbg.png" alt="" /></div><div class="dialog_1-showPrize-sunshine"><img src="https://bxm-guide.oss-cn-shanghai.aliyuncs.com/dist/dollModel/images/sunshinetop.png" /></div><div class="dialog_1-showPrize-circle"><img src="https://bxm-guide.oss-cn-shanghai.aliyuncs.com/dist/dollModel/images/sunshinebg.png" /></div><div class="dialog_1-showPrize-dialog"><div class="dialog_1-modal-header"></div><div class="dialog_1-modal-body modal-body"><h3 class="dialog_1-prizecontent">' + this.title + '</h3><div class="dialog_1-coupon-wrapper"><div class="dialog_1-coupon-image"><img src="' + this.ticket + '"></div><div class="dialog_1-coupon-detail">' + this.content + '</div><div class="dialog_1-coupon-date">有效期:<span>' + this.GP + '</span></div></div><div class="goto dialog_1-goto">' + this.btntext + '</div></div><span class=" dialog_1-closetc closetc"></span></div></div>';
        $("body").append(s)
    }, dialog_2: function () {
        var s = '<div class="popShowPrize"><span class="dialog_2-closetc closetc iconfont">&#xe649;</span><div class="dialog_2-showPrize-sunshine"><img src="https://bxm-guide.oss-cn-shanghai.aliyuncs.com/dist/awardModel/images/circle.png" /></div><div class="dialog_2-showPrize-circle"><img src="https://bxm-guide.oss-cn-shanghai.aliyuncs.com/dist/awardModel/images/sunshine.png" /></div><div class="dialog_2-showPrize-dialog"><div class="dialog_2-modal-header"><img src="https://bxm-guide.oss-cn-shanghai.aliyuncs.com/dist/awardModel/images/winhead.png" alt="" /><span class="star"></span><span class="star"></span><span class="star"></span><span class="star"></span></div><div class="dialog_2-modal-body modal-body"><h3 class="dialog_2-prizecontent">' + this.title + '</h3><div class="dialog_2-coupon-wrapper"><div class="dialog_2-coupon-image"><img src="' + this.ticket + '"><div class="sawtooth-up flex flex-hr"><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></div><div class="sawtooth-down flex flex-hr"><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span><span></span></div></div><div class="dialog_2-coupon-detail">' + this.content + '</div><div class="dialog_2-coupon-date"></div></div><div class="goto dialog_2-goto">' + this.btntext + '</div></div><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span></div></div>';
        $("body").append(s)
    }, dialog_3: function () {
        console.log("暂无弹窗")
    }, dialog_4: function () {
        var s = '<div class="popShowPrize" id="dialog4"><div class="sunshine"></div> <div class="guang"></div><div class="showPrize-dialog modal-body"><div class="tickitImg"><img src="' + this.ticket + '" alt=""></div><div class="detail"><div class="topic">' + this.title + '</div><div class="goto">' + this.btntext + '</div></div><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span></div><span class="closetc iconfont">&#xe649;</span></div>';
        $("body").append(s)
    }, dialog_5: function () {
        var s = '<div class="popShowPrize" id="dialog5"><div class="card-sunshine"></div><div class="m-box"></div><div class="showPrize-dialog modal-body"><div class="card-bg" style="background-image: url(' + this.cardbg + ')"><img src="' + this.ticket + '" alt=""/></div><div class="red-bg"></div><div class="detail"><div class="topic">' + this.title + '</div><div class="goto">' + this.btntext + '</div></div><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span><span class="ribbon"></span></div><span class="close-btn closetc iconfont">&#xe616;</span></div>';
        $("body").append(s)
    }, dialog_getAward: function () {
        var s = '<div id="getaward"><div class="getcontent"><div class="contents"><div class="awardname">' + this.title + '</div><div class="tip">请填写真实联系方式(不可修改),工作人员将在5-10个工作日联系您兑奖</div><div class="form"><input type="text" name="username" placeholder="请输入真实姓名" /><input type="text" name="tel" placeholder="请输入手机号码" /><input type="text" name="adress" placeholder="请输入详细地址" /><div class="buttongroup"><button class="getAward" type="submit">提交</button><button class="quitAward" type="quit">放弃领奖</button></div></div></div></div></div>';
        $("body").append(s)
    }
};