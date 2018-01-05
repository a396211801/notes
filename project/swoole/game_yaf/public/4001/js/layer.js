function Layer(i) {
    this.name = i.name, this.isclick = !0, this.acid = i.acid, this.appos = i.appos, this.appkey = i.appkey, this.business = i.business, this.uid = i.uid, this.di = i.di, this.df = i.df, this.ua = i.ua, this.urlHead = "http://game.com:8888", "0" == this.ua ? this.yuming = "http://game.com:8888" : this.yuming = "", this.cont = "/activity/countInfo", this.data = {
        timeLayer: [{
            imgUrl: "https://buyimg.bianxianmao.com/dist/activeCenter/banner/124111127.png",
            title: "每日签到领流量",
            buttontxt: "立即领取",
            linkUrl: this.yuming + "/dist/eggModel/playjd.html?activityid=12411",
            activityid: 12411
        }, {
            imgUrl: "https://buyimg.bianxianmao.com/dist/activeCenter/banner/124281128.png",
            title: "话费流量不领点？",
            buttontxt: "立即领取",
            linkUrl: this.yuming + "/dist/newwheel/wheel.html?activityid=12428",
            activityid: 12428
        }, {
            imgUrl: "https://buyimg.bianxianmao.com/dist/activeCenter/banner/124231128.png",
            title: "测测你的手气！",
            buttontxt: "立即领取",
            linkUrl: this.yuming + "/dist/pickchestModel/pick-chest.html?activityid=12423",
            activityid: 12423
        }],
        returnLayer: {
            imgUrl: "https://buyimg.bianxianmao.com/144/e7678403862038689680",
            title: "8万综合意外保障，100元滴滴红包。",
            buttontxt: "立即领取",
            linkUrl: "http://www.heiniubao.com/activity/bxmtkdd1",
            preid: "422"
        }
    }, this.reserve = {
        timeLayer: [{
            imgUrl: "https://buyimg.bianxianmao.com/dist/activeCenter/banner/waimai0815.jpg",
            title: "外卖0元开吃",
            buttontxt: "立即领取",
            linkUrl: this.yuming + "/dist/awardModel/show/card12207.html?activityid=12207",
            activityid: 12207
        }]
    }, this.layerInit(this.name)
}

Layer.prototype = {
    constructor: Layer, layerInit: function (i) {
        var a = this, s = a.urlHead + a.cont;
        switch (i) {
            case"time":
                a.layerRest();
                e = {
                    activityid: a.acid,
                    appos: a.appos,
                    appkey: a.appkey,
                    business: a.business,
                    uid: a.uid,
                    i: a.di,
                    f: a.df,
                    ua: a.ua,
                    modelname: "次数为0统计",
                    modeltype: 15
                };
                baseJs._ajax(s, e, "POST", !0, function (i) {
                    console.log("次数为0统计量")
                });
                break;
            case"return":
                Math.floor(2 * Math.random());
                a.layerReturn(5);
                e = {
                    activityid: "12249",
                    appos: a.appos,
                    appkey: a.appkey,
                    business: a.business,
                    uid: a.uid,
                    i: a.di,
                    f: a.df,
                    ua: a.ua,
                    modelname: "首页",
                    modeltype: 3
                };
                baseJs._ajax(s, e, "POST", !0, function (i) {
                    console.log("首页曝光")
                });
                break;
            case"award":
                var s = a.urlHead + a.cont, e = {
                    activityid: "12249",
                    appos: a.appos,
                    appkey: a.appkey,
                    business: a.business,
                    uid: a.uid,
                    i: a.di,
                    f: a.df,
                    ua: a.ua,
                    modelname: "活动参与",
                    modeltype: 4
                };
                baseJs._ajax(s, e, "POST", !0, function (i) {
                    console.log("活动参与")
                }), a.getData()
        }
        a.bindEvent()
    }, bindEvent: function () {
        var i = this;
        $(document).on("click", ".closedialog", function () {
            $("#pop").remove(), $(".show-award").remove()
        }), $(document).on("click", ".closefuli", function () {
            $("#pop").remove()
        });
        var a = !1;
        $(document).on("click", ".fl", function () {
            if (!a) {
                $(".flag").remove(), a = !0;
                var s = i.urlHead + i.cont;
                i.getData();
                var e = {
                    activityid: "12249",
                    appos: i.appos,
                    appkey: i.appkey,
                    business: i.business,
                    uid: i.uid,
                    i: i.di,
                    f: i.df,
                    ua: i.ua,
                    modelname: "活动参与",
                    modeltype: 4
                };
                baseJs._ajax(s, e, "POST", !0, function (i) {
                    console.log("活动参与")
                })
            }
        }), $(document).off("click", ".popmain").on("click", ".popmain", function () {
            var a = i.link;
            if (i.isclick) {
                $(".dialogbtn").find("span").html("页面正在加载~"), i.isclick = !1;
                var s = this, e = i.urlHead + i.cont, t = {
                    activityid: "12249",
                    preid: $(this).data("id"),
                    awardtype: 2,
                    appos: i.appos,
                    appkey: i.appkey,
                    business: i.business,
                    uid: i.uid,
                    i: i.di,
                    f: i.df,
                    ua: i.ua,
                    modelname: "广告点击",
                    modeltype: 7
                };
                try {
                    baseJs._ajax(e, t, "POST", !0, function (i) {
                        console.log("广告点击成功");
                        var s = i.data;
                        setTimeout(function () {
                            $("#pop").remove(), $(".show-award").remove()
                        }, 800), -1 == a.indexOf("?") ? window.location.href = a + "?bxm_id=" + s : window.location.href = a + "&bxm_id=" + s
                    })
                } catch (i) {
                    $(s).attr("href", a)
                }
            }
        })
    }, getData: function () {
        var i = this, a = "/activity/awardInfo", s = {
            appkey: i.appkey,
            appos: i.appos,
            business: i.business,
            i: i.i,
            f: i.f,
            ua: i.ua,
            activityid: "12249",
            uid: i.uid
        };
        baseJs._ajax(a, s, "POST", !0, function (a) {
            if (a.success) {
                i.urlImg = a.data.awardimg, i.link = a.data.awardlink, i.preid = a.data.awardid, i.awardtype = a.data.awardtype, i.buttontext = a.data.buttontext, i.content = a.data.awardname, i.awardorderid = a.data.awardorderid;
                var s = i.urlHead + i.cont, e = {
                    activityid: "12249",
                    preid: i.preid,
                    awardtype: i.awardtype,
                    appos: i.appos,
                    appkey: i.appkey,
                    uid: i.uid,
                    i: i.i,
                    f: i.f,
                    ua: i.ua,
                    business: i.business,
                    modelname: "活动发券",
                    modeltype: 5
                };
                baseJs._ajax(s, e, "POST", !0, function (a) {
                    console.log("活动发券成功"), i.layerDiolag()
                })
            } else console.log("服务错误！")
        })
    }, layerRest: function () {
        var i = this;
        Array.prototype.replace = function (i, a) {
            var s = this.indexOf(i);
            s > -1 && this.splice(s, 1, a)
        };
        e = i.data.timeLayer;
        $.each(e, function (a, s) {
            s.activityid == i.acid ? e.replace(s, i.reserve.timeLayer[0]) : console.log("没有重复")
        });
        var a = "&appkey=" + i.appkey + "&business=" + i.business + "&uid=" + i.uid + "&i=" + i.di + "&f=" + i.df + "&ua=" + i.ua,
            s = "", e = "";
        s += '<div id="pop" class="show-award">', s += '<div class="pop-content">', s += '<div class="pophead"></div>', s += '<div class="popbody">', s += '<div class="list"></div>', s += '<div class="circle">', s += '<div class="circle1"></div>', s += '<div class="circle2"></div>', s += '<div class="circle3"></div>', s += "</div>", s += "</div>", s += "</div>", s += '<span class="closedialog iconfont">&#xe649;</span>', s += "</div>", $.each(i.data.timeLayer, function (i, s) {
            e += '<a href="' + s.linkUrl + a + '">', e += '<div class="list-pic">', e += '<img src="' + s.imgUrl + '" alt="" />', e += "</div>", e += '<div class="list-title flex flex-b flex-v">', e += "<span>" + s.title + "</span>", e += "<button>" + s.buttontxt + "</button>", e += "</div>", e += "</a>"
        }), $("body").append(s), $("#pop").find(".list").append(e)
    }, layerReturn: function (i) {
        function a() {
            clearTimeout(i), $(".quite").hasClass("scale") ? ($(".getit").addClass("scale"), $(".quite").removeClass("scale")) : ($(".quite").addClass("scale"), $(".getit").removeClass("scale"));
            var i = setTimeout(a, 1e3)
        }

        switch (i) {
            case 0:
                s = "";
                s += '<div id="pop" class="show-award">', s += '<div class="fuli fl">', s += '<div class="open"></div>', s += "</div>", s += '<span class="closefuli iconfont">&#xe649;</span>', s += "</div>", $("body").append(s);
                break;
            case 1:
                s = "";
                s += '<div id="pop" class="show-award">', s += '<div class="fuli2 fl">', s += '<div class="open2"></div>', s += "</div>", s += '<span class="closefuli iconfont">&#xe649;</span>', s += "</div>", $("body").append(s);
                break;
            case 2:
                s = "";
                s += '<div id="pop" class="show-award">', s += '<div class="fuli3 fl">', s += '<div class="open3"></div>', s += "</div>", s += '<span class="closefuli iconfont">&#xe649;</span>', s += "</div>", $("body").append(s);
                break;
            case 3:
                s = "";
                s += '<div id="pop" class="show-award">', s += '<div class="fuli4 fl">', s += '<div class="open4"></div>', s += '<div class="bling"></div>', s += "</div>", s += '<span class="closefuli iconfont">&#xe649;</span>', s += "</div>", $("body").append(s);
                break;
            case 4:
                s = "";
                s += '<div id="pop" class="show-award">', s += '<div class="red-packet-pop">', s += '<div class="red-packet-close closedialog"></div>', s += "</div>", s += '<div class="red-packet-main">', s += '<div class="red-packet-content">', s += '<div class="open fl"></div>', s += '<div class="words"></div>', s += "</div>", s += "</div>", s += "</div>", $("body").append(s);
                break;
            case 5:
                var s = "";
                s += '<div id="pop" class="show-award">', s += '<div class="fuliout fl flag">', s += '<div class="fulicenter"></div>', s += '<div class="btngroup flex flex-h">', s += '<div class="quite"></div>', s += '<div class="getit"></div>', s += "</div>", s += "</div>", s += "</div>", $("body").append(s)
        }
        setTimeout(a, 1500)
    }, layerDiolag: function () {
        var i = this, a = '<div id="pop" class="show-award">';
        a += '<div class="sunshine"></div>', a += '<div class="guang"></div>', a += '<div class="popmain" data-id=' + i.preid + ">", a += '<div class="popaward">', a += '<img src="' + i.urlImg + '"/>', a += "</div>", a += '<div class="awardcion"></div>', a += '<div class="congratulation">', a += '<div class="c-title">' + i.content + "</div>", a += '<div class="dialogbtn flex flex-v flex-h">', a += "<span>" + i.buttontext + "</span>", a += "</div>", a += "</div>", a += "</div>", a += '<span class="closedialog iconfont">&#xe649;</span>', a += "</div>";
        for (var s = "", e = 0; e < 13; e++) s += '<span class="ribbon"></span>';
        $("body").append(a), $(".popmain").append(s);
        var t = {
            activityid: "12249",
            preid: i.preid,
            awardtype: "2",
            appos: i.appos,
            appkey: i.appkey,
            uid: i.uid,
            i: i.di,
            f: i.df,
            ua: i.ua,
            business: i.business,
            modelname: "券曝光",
            modeltype: 6
        }, d = i.urlHead + i.cont;
        baseJs._ajax(d, t, "POST", !0, function (i) {
            console.log("券曝光")
        });
        i.urlHead, i.awardorderid, i.uid
    }
};