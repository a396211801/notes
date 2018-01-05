   var common = {
		isIos: function() { return !!navigator.userAgent.toLowerCase().match(/\(i[^;]+;( u;)? cpu.+mac os x/) },
		isAndroid: function() { return navigator.userAgent.toLowerCase().indexOf("android") > -1 },
		checkTypeof: function(t) { return "undefined" != typeof t && null != t && "" != t && "null" != t }
	};
! function(t, e, n) {
	function i(t) { this.opts = n.extend(!0, {}, r, t), this.doing = !1, this.init() }
	var r = { rotateNum: 5, body: "", disabledHandler: function() {}, clickCallback: function() {}, KinerLotteryHandler: function(t) {} };
	i.prototype.setOpts = function(t) { this.opts = n.extend(!0, {}, r, t), this.init() }, i.prototype.init = function() {
		var t = this;
		this.defNum = 360 * this.opts.rotateNum, n("body").on("click", ".KinerLotteryBtn", function() {
			if(n(this).hasClass("start") && !t.doing) t.opts.clickCallback.call(t);
			else {
				var e = n(this).hasClass("no-start") ? "noStart" : n(this).hasClass("completed") ? "completed" : "illegal";
				t.opts.disabledHandler(e)
			}
		}), n(this.opts.body).find(".KinerLotteryContent").get(0).addEventListener("webkitTransitionEnd", function() {
			t.doing = !1;
			var e = parseInt(n(t.opts.body).attr("data-deg"));
			0 == t.opts.direction ? n(t.opts.body).find(".KinerLotteryContent").css({ "-webkit-transition": "none", transition: "none", "-webkit-transform": "rotate(" + e + "deg)", transform: "rotate(" + e + "deg)" }) : n(t.opts.body).find(".KinerLotteryContent").css({ "-webkit-transition": "none", transition: "none", "-webkit-transform": "rotate(" + -e + "deg)", transform: "rotate(" + -e + "deg)" }), n(t.opts.body).attr("data-deg", e), t.opts.KinerLotteryHandler(e)
		})
	}, i.prototype.goKinerLottery = function(t) {
		if(!this.doing) {
			var e = t + this.defNum,
				i = 0 == this.opts.direction ? e : -e;
			this.doing = !0, n(this.opts.body).find(".KinerLotteryBtn").addClass("doing"), n(this.opts.body).find(".KinerLotteryContent").css({ "-webkit-transition": "all 5s", transition: "all 5s", "-webkit-transform": "rotate(" + i + "deg)", transform: "rotate(" + i + "deg)" }), n(this.opts.body).attr("data-deg", t)
		}
	}, t.KinerLottery = i
}(window, document, $);
var el = document.createElement("fakeelement"),_click = 1,
	t, transitionEnd, transitions = { transition: "transitionend", OTransition: "oTransitionEnd", MozTransition: "transitionend", WebkitTransition: "webkitTransitionEnd" };
for(t in transitions) void 0 !== el.style[t] && (transitionEnd = transitions[t]);
$(function() {
	$(".rule_box span").click(function() { $(".com_pop_rule").show() });
	$(".com_pop_box .close1, .com_pop_box .close").click(function() { $(this).parent().hide(); });
	$(".setUrlLink").click(function(e) {
		if(common.isAndroid()) {
			alert('攻城狮正在加班加点中，即将上线')
			e.preventDefault();
		}
	});

	$.get('/h5/show/deal?page=1&size=50', function(d) {
		var result = JSON.parse(d), t = '';
		$.each(result, function(i, r) {
			t += "<li>恭喜 <em>" + r.bidder + " </em> 以<em>¥" + r.price + " </em>拍到<em> " + r.item_name + "</em></li>"
		});
		$(".winner_show ul").html(t);

		setInterval(function() {
			var t = $(".winner_show li").height();
			$(".winner_show ul").attr("style", "-webkit-transform:translate3d(0,-" + t + "px,0) translateZ(0);transform:translate3d(0,-" + t + "px,0) translateZ(0);-webkit-transition:all 500ms;transition:all 500ms;");
			var e = function() {
				$(".winner_show ul")[0].removeEventListener(transitionEnd, e), $(".winner_show ul").attr("style", "-webkit-transform:translate3d(0,0,0) translateZ(0);transform:translate3d(0,0,0) translateZ(0);");
				var t = $(".winner_show li:first-child");
				$(".winner_show ul").append(t)
			};
			$(".winner_show ul")[0].addEventListener(transitionEnd, e)
		}, 2e3);
	});

	$(".slide_list_box").css("height", 3.2 * $(".slide_show dd:first-child").height());
	setInterval(function() {
		var t = $(".slide_show dd:first-child").height() + parseInt($(".slide_show dd:first-child").css("margin-bottom"));
		$(".slide_show").attr("style", "-webkit-transform:translate3d(0,-" + t + "px,0) translateZ(0);transform:translate3d(0,-" + t + "px,0) translateZ(0);-webkit-transition:all 1000ms;transition:all 1000ms;");
		var e = function() {
			$(".slide_show")[0].removeEventListener(transitionEnd, e), $(".slide_show").attr("style", "-webkit-transform:translate3d(0,0,0) translateZ(0);transform:translate3d(0,0,0) translateZ(0);");
			var t = $(".slide_show dd:first-child");
			$(".slide_show").append(t)
		};
		$(".slide_show")[0].addEventListener(transitionEnd, e)
	}, 3e3)
});
var load = {
		rotateFn: function(t) {
			var e = {};
			switch(t) {
				case 60:
					e.Image = "http://imgs.ttbid.net/activity/60.png";
					e.itemT = "200元话费";
					break;
				case 120:
					e.Image = "http://imgs.ttbid.net/activity/120.png";
					e.itemT = "iPhone7 Plus";
					break;
				case 180:
					e.Image = "http://imgs.ttbid.net/activity/180.png";
					e.itemT = "MacBook Pro";
					break;
			}
			return e
		},

		resetFun: function() {
			$(".turntable_box .b").addClass("start"), $(".win_pop_box").hide() },
		rnd: function(t, e) { var n = Math.floor(Math.random() * (e - t + 1) + t); return n }
	},
	KinerLottery = new KinerLottery({
		rotateNum: 8,
		body: ".turntable_box",
		direction: 0,
		clickCallback: function() {
			var t = [60, 120, 180, 60, 120],
				e = load.rnd(0, t.length - 1);
			this.goKinerLottery(t[e])
		},
		KinerLotteryHandler: function(t) {
			var e = load.rotateFn(t);
			console.log(t)
			$(".com_pop_winner").show(), $(".com_pop_winner .txt b").html(e.itemT), $(".com_pop_winner .pic_div").attr("src", e.Image);
		}
	});
