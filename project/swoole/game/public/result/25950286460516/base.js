$(function(){
	$('.get_btn').click(function(){
		download();
	})
	$('.close').click(function(){
		$('.meng').hide();
		init();
		$('.btn').bind('click', run);
	})
	$('.rule_down').click(function(){
		$(this).hide();
		$('.rule').show();
	})
	$('.rule_up').click(function(){
		$('.rule_down').show();
		$('.rule').hide();
	})
	function init() {
        $("#rotate").css({
            "-webkit-transform": "rotate(0deg)",
            "-webkit-transition": "-webkit-transform 0ms",
            "-moz-transform": "rotate(0deg)",
            "-moz-transition": "moz-transform 0ms",
            "-o-transform": "rotate(0deg)",
            "-o-transition": "-o-transform 0ms",
            "transform": "rotate(0deg)",
            "transition": "transform 0ms"
        });
        console.log("init")
    }
    function rotateFn(awards, _deg, txt) {
        _deg = _deg + 1440;
        console.log(_deg);
        $("#rotate").css({
            "-webkit-transform": "rotate(" + _deg + "deg)",
            "-webkit-transition": "-webkit-transform 2000ms",
            "-moz-transform": "rotate(" + _deg + "deg)",
            "-moz-transition": "moz-transform 2000ms",
            "-o-transform": "rotate(" + _deg + "deg)",
            "-o-transition": "-o-transform 2000ms",
            "transform": "rotate(" + _deg + "deg)",
            "transition": "transform 2000ms",

        });
        setTimeout(function() {
              $(".top_msg").html("运气爆棚！");
              $(".prize_img").attr('src', 'img/'+awards+'.png');
              $(".prize_msg span").html('￥'+rnd_f(1,100)+'元');
              $(".meng").css('display', 'block');
        },2360)
    }
	function run(){	
		$('.btn').unbind('click', run);
		var item = rnd(0,7);	
		numb1 = rnd(325, 350);
		numb2 = rnd(280, 305);
		numb3 = rnd(235, 260);
		numb4 = rnd(190, 215);
		numb5 = rnd(145, 170);
		numb6 = rnd(100, 125);
		numb7 = rnd(55, 80);
		numb8 = rnd(10,35);
		switch(item){
			case 0:
				rotateFn(0, numb1, "1元买100元话费");
				break;
			case 1:
				rotateFn(1, numb2, "1元买笔记本");
				break;
			case 2:
				rotateFn(2, numb3, "1元买平衡车");
				break;
			case 3:
				rotateFn(3, numb4, "1元买金元宝");
				break;
			case 4:
				rotateFn(4, numb5, "1元买平板");
				break;
			case 5:
				rotateFn(5, numb6, "1元买手机");
				break;
			case 6:
				rotateFn(6, numb7, "1元买单反相机");
				break;
			case 7:
				rotateFn(7, numb8, "1元买手机");
				break;
		}
	}
	$('.btn').bind('click', run);
	function rnd(n, m){
		return Math.floor(Math.random()*(m-n+1)+n);
	}
	function rnd_f(n, m) {
		return (Math.floor((Math.random() * (m - n + 1) + n)*100))/100;
	}
	function play(){
		$('.news').find('li:first').animate({'marginTop':'-1.6rem'},1000,function(){
			$(this).css('marginTop','0').appendTo($('.news'))
		})
	}
	timer = setInterval(play, 3000);
	// 创建奖品数组
	$.getJSON('data.json', function(data){
		$.each(data.name, function(index,item){
			var awards = ["iPhone7 plus 128G", "Apple MacBook ", "iPhone SE", "小米 电视", "iPad mini4"]
			if(item.length > 7){
				item = item.substr(0,7)+'...';
			}
			$('.news').append('<li><img src="bell.png"><p>恭喜&nbsp;'+item+'&nbsp;以&nbsp;<i class="price">￥'+rnd_f(0,20)+'</i>&nbsp;拍到&nbsp;<b class="user_shop">'+awards[Math.floor(Math.random()*5)]+'</b></li>')
			// <li><img src="img/bell.png"><p>恭喜<b class="user_name">广东省重庆市</b>以<i class="price">￥3.30</i>路虎发现神行</p></li>
		})
	})
})	
