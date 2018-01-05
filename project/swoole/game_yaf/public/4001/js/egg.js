$(function () {
    ({
        init: function () {
            var a = this;
            a.appkey = baseJs._getQueryString("appkey"), a.business = baseJs._getQueryString("business"), a.acid = baseJs._getQueryString("activityid"), a.appos = baseJs._getDeviceInfo(), a.uid = baseJs._getQueryString("uid"), a.urlHead = "", a.cont = "/activity/countInfo", a.isclick = !0, a.di = baseJs._getQueryString("i") || "", a.df = baseJs._getQueryString("f") || "", a.ua = baseJs.isWeiXin(), a.status = "loading", "1" == a.ua ? a.yuming = "https://tst.bianxianmao.com" : a.yuming = "", a.eggCount = [], a._render();
            var e = "/activity/getGeTuiUserInfo", i = {i: a.di, f: a.df,random:this_random,id:this_id};
            baseJs._ajax(e, i, "POST", !0, function (a) {
            });
            var e = a.urlHead + a.cont, i = {
                activityid: a.acid,
                appos: a.appos,
                appkey: a.appkey,
                business: a.business,
                uid: a.uid,
                i: a.di,
                f: a.df,
                ua: a.ua,
                modelname: "首页",
                modeltype: 3,
                random:this_random,
                id:this_id
            };
            if (baseJs._ajax(e, i, "POST", !0, function (a) {
                }), "73d2262538d94a43a949ed8bdd255e7d" == a.appkey && ($(".myprize").hide(), $(".moreAct").hide()), "7eeef308b87646c5a65ce81506bb0c08" == a.appkey || "aae233964f7d4f589d6a74f430fba620" == a.appkey && ("money-35" == a.business || "money-24" == a.business || "money-34" == a.business || "money-6" == a.business || "money-7" == a.business)) {
                t = '<div class="addTip" style="font-size:12px;color: #ffffff;text-align: center;padding-bottom: 0.5rem">本活动与平安好医生无关，客服电话 400-630-5185</div>';
                $(t).insertAfter("#awardlist")
            }
            if ("aae233964f7d4f589d6a74f430fba620" == a.appkey && ("money-64" == a.business || "money-65" == a.business || "money-66" == a.business || "money-67" == a.business)) {
                t = '<div class="addTip" style="font-size:12px;color: #ffffff;text-align: center;padding-bottom: 0.5rem">杭州微财网络科技有限公司        浙ICP备 16038222</div>';
                $("#awardlist").append(t)
            }
            if ("1d37d224127f4f1a836e221606dea4ff" == a.appkey) {
                t = '<div class="addTip" style="font-size:12px;color: #ffffff;text-align: center;padding-bottom: 0.5rem">奖品与活动均与wifi伴侣无关</div>';
                $("#awardlist").append(t)
            }
            if ("aae233964f7d4f589d6a74f430fba620" == a.appkey && "money-76" == a.business) {
                var t = '<div class="addTip" style="font-size:12px;color: #ffffff;text-align: center;padding-bottom: 0.5rem">本活动由杭州微财网络科技公司提供</div>';
                $("#awardlist").append(t)
            }
        }, _render: function () {
            var a = this;
            a._bindEvent(), a._getDatainit();
            var e = document.referrer;
            (e.indexOf("home") > -1 || e.indexOf("room") > -1) && $(".moreAct").hide()
        }, _performanceTime: function () {
            var a = this, e = performance.timing, i = JSON.parse(JSON.stringify(e));
            i.appKey = a.appkey, i.appUrl = window.location.href;
            var t = {performanceTiming: JSON.stringify(i)};
            baseJs._ajax("/activity/dataAcquisition", t, "POST", !0, function (a) {
            })
        }, _bindEvent: function () {
            var a = this;
            $(document).on("click", ".item", function () {
                bxmApi.requireApi();
                var e = $(".jointime").find("i").html(),
                    i = $(this).find("button").eq(0).hasClass("hide") && $(this).find("button").eq(0).hasClass("isshow");
                if (0 != e || i) {
                    $("button").prop("disabled", !0);
                    var t = $(this).index();
                    a._eggStatus(t), a._hammerMove(this), a._eggReset();
                    var s = a.urlHead + a.cont, d = {
                        activityid: a.acid,
                        appos: a.appos,
                        appkey: a.appkey,
                        business: a.business,
                        uid: a.uid,
                        i: a.di,
                        f: a.df,
                        ua: a.ua,
                        modelname: "活动参与",
                        modeltype: 4,
                        random:this_random,
                        id:this_id
                    };
                    baseJs._ajax(s, d, "POST", !0, function (a) {
                    })
                } else {
                    var n = {
                        name: "time",
                        acid: a.acid,
                        appos: a.appos,
                        appkey: a.appkey,
                        business: a.business,
                        uid: a.uid,
                        ua: a.ua,
                        di: a.di,
                        df: a.df
                    };
                    new Layer(n)
                }
            }), $(document).on("click", ".cls,.again", function () {
                $(".pop-sorry").hide(), $(".page").removeClass("fixed"), $(".page-group").removeClass("fixed")
            }), $(document).on("click", "#way", function () {
                $(".page").addClass("fixed"), $(".page-group").addClass("fixed"), $(".activity").show(), $(".rule").show()
            }), $(document).on("click", ".close", function () {
                $(".page").removeClass("fixed"), $(".page-group").removeClass("fixed"), $(".activity").hide(), $(".rule").hide()
            }), $(document).on("click", ".more_header", function () {
                $(".more_main").hasClass("off") ? ($(".more_main").removeClass("off"), $(".collapse").html("&#xe623;")) : ($(".more_main").addClass("off"), $(".collapse").html("&#xe61a;"))
            }), $(document).on("click", ".moreAct", function () {
                $(this).children("a").attr("href", a.floatlink + "?business=" + a.business + "&activityid=" + a.acid + "&appkey=" + a.appkey + "&uid=" + a.uid + "&ua=" + a.ua + "&i=" + a.di + "&f=" + a.df + "&skip=skip");
                var e = a.urlHead + a.cont, i = {
                    activityid: a.acid,
                    appos: a.appos,
                    appkey: a.appkey,
                    business: a.business,
                    uid: a.uid,
                    i: a.di,
                    f: a.df,
                    ua: a.ua,
                    modelname: "更多活动点击",
                    modeltype: 11,
                    random:this_random,
                    id:this_id
                };
                baseJs._ajax(e, i, "POST", !0, function (a) {
                })
            })
        }, _getDatainit: function () {
            var a = this;
            a._eggInit(), $(".dialog").hide(), $(".hammer").css({
                transform: "translate3d(" + 0 * window.remscale + "px, -" + 60 * window.remscale + "px, 0)",
                "-webkit-transform": "translate3d(" + 0 * window.remscale + "px, -" + 60 * window.remscale + "px, 0)"
            });
            var e = "/Activity/activityTimesInfo",
                i = {appkey: a.appkey, activityid: a.acid, uid: a.uid, business: a.business,id:this_id,random:this_random};
            baseJs._ajax(e, i, "POST", !0, function (e) {
                var i = e.data;
                if ($(".jointime i").html(i), parseInt(i) <= 6) {
                    var t = {
                        el: ".page",
                        floatlink: a.yuming + "/dist/roomModel/luckyroom/lucky-sale-machine-room.html",
                        business: a.business,
                        appkey: a.appkey,
                        acid: a.acid,
                        appos: a.appos,
                        uid: a.uid,
                        di: a.di,
                        df: a.df,
                        ua: a.ua,
                        floatId: "float-5",
                        random:this_random,
                        id:this_id
                    };
                    $(".floatclick").hasClass("floatclick") || requireFloat(t)
                }
                if (8 == i) try {
                    localStorage.removeItem("status" + a.acid), baseJs.delCookie("status" + a.acid)
                } catch (e) {
                    baseJs.delCookie("status" + a.acid)
                }
                var s;
                try {
                    (s = localStorage.getItem("status" + a.acid)) || (s = baseJs.getCookie("status" + a.acid))
                } catch (e) {
                    s = baseJs.getCookie("status" + a.acid)
                }
                if (null != s) {
                    var d = JSON.parse(s).data;
                    a.eggCount = d, $.each(d, function (a, e) {
                        var i = e.eggIndex, t = $(".item").eq(i);
                        t.find(".egg").addClass("hide"), t.find(".eggend").removeClass("hide")
                    })
                }
            }), $(".swiper-container").swiper({
                slidesPerView: 3.4,
                spaceBetween: 24,
                observer: !0,
                observeParents: !0,
                scrollbar: ".swiper-scrollbar",
                scrollbarHide: !1
            }), $(".myprize a").attr("href", a.yuming + "/prize.html?appkey=" + a.appkey + "&activityid=" + a.acid + "&business=" + a.business + "&uid=" + a.uid + "&i=" + a.di + "&f=" + a.df + "&ua=" + a.ua)
        }, _eggInit: function () {
            function a(t) {
                clearTimeout(e.timer), i.eq(t).find("button").eq(2).hasClass("hide") ? (i.removeClass("beat").eq(t).addClass("beat"), i.find(".tip").hide(), i.eq(t).children("button").eq(2).hasClass("hide") && i.find(".tip").eq(t).show(), e.timer = setTimeout(function () {
                    a(t = ++t > 8 ? 0 : t)
                }, 800)) : e.timer = setTimeout(function () {
                    a(t = ++t > 8 ? 0 : t)
                }, 10)
            }

            var e = this, i = $(".item");
            i.length;
            a(0)
        }, _hammerMove: function (a) {
            var e = this, i = ($(".egg"), $(".hammer"));
            $(".chuizi").removeClass("rotateInit");
            var t = $(a).offset().left + $(a).width() / 2, s = $(".eggs").width(), d = s - t - i.width() / 2 - 20,
                n = $(a).offset().top + $(a).height() / 2, o = i.height() + i.offset().top,
                r = n - o - i.height() - i.width() / 3, u = "-" + d + "px," + r + "px,0",
                p = $(".item").eq(4).offset().left + $(".item").eq(4).width() / 2,
                c = $(".item").eq(4).offset().top + $(".item").eq(4).height() / 2;
            i.width(), i.height(), i.width();
            i.animate({
                transform: "translate3d(" + u + ")",
                "-webkit-transform": "translate3d(" + u + ")"
            }, 450, "linear", function () {
                var i = this;
                e._infoRquest(), "loading" == e.status && ($(i).find(".chuizi").addClass("rotate"), e._eggChange(a))
            })
        }, _eggChange: function (a) {
            function e(a, t) {
                clearTimeout(i.eggtimer), $(a).find(".egg").removeClass("isshow"), $(a).find(".egg").eq(t).addClass("isshow"), i.eggtimer = setTimeout(function () {
                    e(a, t = ++t > 1 ? 0 : t)
                }, 600), "loaded" == i.status && function () {
                    clearTimeout(i.eggtimer), $(".chuizi").removeClass("rotate"), $(a).find(".egg").addClass("hide"), $(a).find(".eggend").removeClass("hide");
                    var e = "/activity/subtracttimes", t = {
                        awardorderid: i.awardorderid,
                        uid: i.uid,
                        appkey: i.appkey,
                        activityid: i.acid,
                        business: i.business,
                        random:this_random,
                        id:this_id
                    };
                    switch (baseJs._ajax(e, t, "POST", !0, function (a) {
                        var e = a.data;
                        $(".jointime").find("i").html(e)
                    }), i.awardtype) {
                        case 1:
                            $("#getaward").show();
                            break;
                        case 2:
                            $(".popShowPrize").show()
                    }
                    i._hammerReset();
                    var e = i.urlHead + i.cont, t = {
                        activityid: i.acid,
                        preid: i.awardid,
                        awardtype: i.awardtype,
                        appos: i.appos,
                        appkey: i.appkey,
                        business: i.business,
                        uid: i.uid,
                        i: i.di,
                        f: i.df,
                        ua: i.ua,
                        modelname: "券曝光",
                        modeltype: 6,
                        random:this_random,
                        id:this_id
                    };
                    baseJs._ajax(e, t, "POST", !0, function (a) {
                    })
                }()
            }

            var i = this;
            e(a, 0)
        }, _eggReset: function () {
            var a = this;
            clearTimeout(a.timer), $(".tip").hide()
        }, _hammerReset: function () {
            var a = this;
            $(".hammer").animate({
                transform: "translate3d(0px,-60px,0)",
                "-webkit-transform": "translate3d(0px,-60px,0)"
            }, 800, "linear", function () {
                a._eggInit(), $(".chuizi").addClass("rotateInit"), a.status = "loading";
                $(".jointime").find("i").html();
                $(".flag").prop("disabled", !1)
            })
        }, _infoRquest: function () {
            var a = this, e = "/activity/awardInfo", i = {
                appkey: a.appkey,
                appos: a.appos,
                business: a.business,
                activityid: a.acid,
                i: a.di,
                f: a.df,
                ua: a.ua,
                uid: a.uid,
                random:this_random,
                id:this_id
            };
            baseJs._ajax(e, i, "POST", !0, function (e) {
                if (e.success) {
                    a.link = e.data.awardlink, a.awardid = e.data.awardid, a.awardtype = e.data.awardtype, a.awardangle = e.data.awardangle, a.awardorderid = e.data.awardorderid, a.awardcontent = e.data.awardname, a.ordernum = e.data.ordernum, a.awardimg = e.data.awardimg, a.awardgo = e.data.buttontext;
                    var i = e.data.awardmsg, t = e.data.validitytime;
                    $(".tickitImg").find("img").attr("src", a.awardimg), $(".topic").html(a.awardcontent), $(".goto").html(a.awardgo), a.status = "loaded";
                    var s = a.urlHead + a.cont, d = {
                        activityid: a.acid,
                        preid: a.awardid,
                        awardtype: a.awardtype,
                        appos: a.appos,
                        appkey: a.appkey,
                        uid: a.uid,
                        business: a.business,
                        i: a.di,
                        f: a.df,
                        ua: a.ua,
                        modelname: "活动发券",
                        modeltype: 5,
                        random:this_random,
                        id:this_id
                    };
                    switch (baseJs._ajax(s, d, "POST", !0, function (a) {
                    }), a.awardtype) {
                        case 1:
                            d = {id: 0, title: a.awardcontent, ordernum: a.ordernum}, new Dialog(d, {
                                ele: ".closetc",
                                callback: function () {
                                    a.isclick = !0;
                                    var e = $(".jointime").find("i").html();
                                    if (parseInt(e) <= 6) {
                                        var i = {
                                            el: ".page",
                                            floatlink: a.yuming + "/dist/roomModel/luckyroom/lucky-sale-machine-room.html",
                                            business: a.business,
                                            appkey: a.appkey,
                                            acid: a.acid,
                                            appos: a.appos,
                                            uid: a.uid,
                                            di: a.di,
                                            df: a.df,
                                            ua: a.ua,
                                            floatId: "float-5",
                                            random:this_random,
                                            id:this_id
                                        };
                                        $(".floatclick").hasClass("floatclick") || requireFloat(i)
                                    }
                                }
                            });
                            break;
                        case 2:
                            d = {
                                id: 5,
                                cardbgId: 1,
                                title: a.awardcontent,
                                ticket: a.awardimg,
                                content: i,
                                btntext: a.awardgo,
                                GP: t,
                                awardlink: a.link,
                                ordernum: a.ordernum,
                                param: {
                                    activityid: a.acid,
                                    preid: a.awardid,
                                    awardtype: a.awardtype,
                                    appos: a.appos,
                                    appkey: a.appkey,
                                    business: a.business,
                                    uid: a.uid,
                                    i: a.i,
                                    f: a.f,
                                    ua: a.ua,
                                    modelname: "广告点击",
                                    modeltype: 7
                                }
                            }, new Dialog(d, {
                                ele: ".closetc", callback: function () {
                                    a.isclick = !0;
                                    var e = $(".jointime").find("i").html();
                                    if (parseInt(e) <= 6) {
                                        var i = {
                                            el: ".page",
                                            floatlink: a.yuming + "/dist/roomModel/luckyroom/lucky-sale-machine-room.html",
                                            business: a.business,
                                            appkey: a.appkey,
                                            acid: a.acid,
                                            appos: a.appos,
                                            uid: a.uid,
                                            di: a.di,
                                            df: a.df,
                                            ua: a.ua,
                                            floatId: "float-5"
                                        };
                                        $(".floatclick").hasClass("floatclick") || requireFloat(i)
                                    }
                                }
                            })
                    }
                    $(".ct").html(a.awardcontent), $(".prize_img img").attr("src", a.awardimg)
                }
            })
        }, _eggStatus: function (a) {
            var e = this, i = {eggIndex: a};
            e.eggCount.push(i);
            var t = {};
            t.data = e.eggCount;
            try {
                localStorage.setItem("status" + e.acid, JSON.stringify(t)), baseJs.setCookie("status" + e.acid, JSON.stringify(t))
            } catch (a) {
                baseJs.setCookie("status" + e.acid, JSON.stringify(t))
            }
        }
    }).init()
});