/**
 * Created by Admin on 2017/7/5.
 */
function GetQueryString(key) {
		// key为url变量名称
		var urlGets = location.search.substr(1);
		if(urlGets.length > 0) {
			start = urlGets.indexOf(key + '=');
			if(start != -1) {
				start = start + key.length + 1;
				end = urlGets.indexOf('&', start)
				if(end == -1) {
					end = urlGets.length
				}
				return decodeURIComponent(urlGets.substring(start, end))
			}
		}
		return '';
	}
$(function() {
	//var httpAdress = 'http://new.yytaomeng.com';
	var httpAdress='http://dkx.yytaomeng.com';
	//  var httpAdress='http://192.168.1.9:81';
	/*-----------------报错提示---------------------------------*/
	function hintShow() {
		$('.hint').css("display", 'block');
		setTimeout(function() {
			$('.hint').addClass('a-fadein');
			$('.hint').css("display", 'none');
			setTimeout(function() {
				$('.hint').removeClass('a-fadein');
			}, 1500)
		}, 1500)
	}
	/*-------------------发送验证码成功-------------------------*/
	var ff;

	function mtime(na) {
		var num = 60;
		ff = setInterval(function() {
			num--;
			na.disabled = true;
			na.innerHTML = num + 's后尝试';
			na.style.background = 'gray';
			if(num == 0) {
				clearInterval(ff);
				na.disabled = false;
				na.innerHTML = '获取验证码';
				na.style.background = '#F26100';
			}
		}, 1000)
	}
	/*------------------关闭按钮---------------------*/
	$('.close').click(function() {
		$(this).parent().parent().parent(".register_success").css('display', 'none');
		$('.info_item #gainYzm').attr('disabled', false);
		$('.info_item #gainYzm').css('background', 'none');
		$('.jkw_info_item #gainYzm').attr('disabled', false);
		$('.jkw_info_item #gainYzm').css('background', '#F26100');
		var getChecknum = document.getElementById('gainYzm');
		getChecknum.disabled = false;
		getChecknum.innerHTML = '获取验证码';
		getChecknum.style.background = '#F26100';
	});
	/*------------------发送验证码----------------------*/
	var yzmNumber = 0;
	var phoneNumber = "";
	$('#gainYzm').click(function() {
		var phone = $('#phone').val();
		var reg = /^1[34578]\d{9}$/;
		var a = reg.test(phone);
		var getChecknum = document.getElementById('gainYzm');
		//		mtime(getChecknum);
		if(phone == "" || phone == undefined) {
			$('.hint').html("请输入手机号码");
			hintShow();
			return;
		} else if(a) {
			if(phoneNumber != phone) {
				yzmNumber = 0;
			}
			if(yzmNumber == 1) {
				$('#registerBefor').css('display', 'flex');
			} else {
				
				$.ajax({
					url: httpAdress + '/api/user/getSMSCode',
					type: 'get',
					data: {
						'phone': phone,
						'type': 1,
						'validcode': '0'
					},
					contentType: "application/json; charset=utf-8",
					dataType: 'jsonp',
					jsonp: "callback",
					jsonpCallback: "successCallback",
					success: function(data) {
						console.log(data);
						if(data.status == 1) {
							$('.hint').html("短信发送成功");
							hintShow();
							mtime(getChecknum);
						} else if(data.status == 2) {
							if(data.msg == "该用户已注册。") {
								$('#registerBefor').css('display', 'flex');
								yzmNumber = 1;
								phoneNumber = phone;
							} else {
								$('.hint').html(data.msg);
								hintShow();
								$('.info_item #gainYzm').attr('disabled', false);
								$('.info_item #gainYzm').css('background', 'none');
								$('.jkw_info_item #gainYzm').attr('disabled', false);
								$('.jkw_info_item #gainYzm').css('background', '#F26100');
							}
						}
					},
					error: function(error) {
						console.log(error);
						$('.hint').html("获取失败，请重试！");
						hintShow();
					}
				});
			}

		} else {
			$('.hint').html("手机号码有误");
			hintShow();
		}
	});
	/*----------------提交按钮---------------------------*/
	$('#btnClick').click(function() {
		var phone = $('#phone').val();
		var password = $('#password').val();
		var yzm = $('#yzm').val();
		var reg = /^1[34578]\d{9}$/;
		var a = reg.test(phone);
		var paw = password.length;
		if(phone == "" || phone == undefined) {
			$('.hint').html("请输入手机号码");
			hintShow();
		} else if(a) {
			if(password == "" || paw <= 5 || paw >= 17) {
				$('.hint').html("密码输入有误");
				hintShow();
			} else if(yzm == "") {
				$('.hint').html("请输入验证码");
				hintShow();
			} else {
				var code = GetQueryString("abc");
				$.ajax({
					type: 'get',
					url: httpAdress + '/api/user/register',
					contentType: 'application/json; charset=utf-8',
					dataType: 'jsonp',
					jsonpCallback: "successCallback",
					data: {
						'phone': phone,
						'passwd': password,
						'checknum': yzm,
						'abc': code,
						'type': 1,
						'channel': 3,
						'validcode': '0'
					},
					success: function(data) {
						console.log(data);
						if(data.status == 1) {
							$('#registerSuccess').css('display', 'flex');
						} else if(data.status == 2) {
							$('#registerBefor').css('display', 'flex');
						} else {
							$('.hint').html(data.msg);
							hintShow();
						}
					}
				});
			}
		} else {
			$('.hint').html("手机号码有误");
			hintShow();
		}
	});

	$('.urlPost').click(function() {
		window.location.href = "http://a.app.qq.com/o/simple.jsp?pkgname=com.znsb.daikuanxia";
	});

$(".tuiAllUrlPost").on("click", function() {
	 TuiaAdverter.init(function() {
		window.location.href = "http://a.app.qq.com/o/simple.jsp?pkgname=com.znsb.daikuanxia";
	}, {
		location: "btn"
	})
});

	/*---------------注册人数---------------------------*/
	var numb = 3863;

	function number() {
		numb = numb + 1;
		var n = numb.toString();
		if(n.length == 4) {
			$('#number').html("0" + n);
		} else {
			$('#number').html(n);

		}
		setTimeout(number, 2000)
	}
	number();

});
function selectFromMessArray(arr) {
    return arr[Math.floor(Math.random() * arr.length)]
}
var arrayTxt1=["赵**","钱**","孙**","李**","吴**","王**","赵**","潘**","雷**","黄**"];
var arrayTxt2=["500","1500","3000","5000","8000","2000","4000","9000"];
var arrayTxt3=["先生","女士"];
var randTxt1 = "赵**";
var randTxt2 = "500";
var randTxt3 = "先生";
var aa = 0;
$('.scrolltop_text').html(randTxt1+randTxt3+"成功申请了"+randTxt2);
setTimeout(function() {

	setInterval(function() {
		randTxt1=selectFromMessArray(arrayTxt1);
		randTxt2=selectFromMessArray(arrayTxt2);
		randTxt3=selectFromMessArray(arrayTxt3);
		$('.scrolltop_text').eq(0).attr("class", "scrolltop_text animated fadeOutUp");
		$('.scrolltop_text').eq(1).attr("class", "scrolltop_text animated fadeInUp");
		setTimeout(function() {
			$('.scrolltop_text').eq(0).attr("class", "scrolltop_text animated fadeInUp");
			$('.scrolltop_text').eq(1).attr("class", "scrolltop_text animated fadeOutUp");
		}, 500)
	}, 3000)
}, 1000)
setTimeout(function() {
	setInterval(function() {
		$('.scrolltop_text').html(randTxt1+randTxt3+"成功申请了"+randTxt2);
	}, 3000)
}, 1500)