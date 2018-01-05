var $ = (function($){
	$.FZ = function(a, b) {
		function getFZ() {
			var width = document.documentElement.clientWidth || document.body.clientWidth;
			if (width > 750) {
				width = 750;
			}
			var fontSize = (a / b) * width;
			return fontSize;
		};
		document.documentElement.style.fontSize = getFZ() + "px";
		window.onresize = function() {
			setTimeout(function() {
				document.documentElement.style.fontSize = getFZ() + "px";
			}, 100);
		};
	};
	
	$.getUrlParam = function(name) {
		var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
		var r = window.location.search.substr(1).match(reg);
		if (r != null) return decodeURIComponent(r[2]);
		return null;
	};

	$.loading = {
		show: function(){
			$('body').append(
				'<div class="preloader-overlay">'+
					'<div class="preloader-indicator-modal">'+
						'<span class="preloader"></span>'+
					'</div>'+
				'</div>'
			);
		},
		hide: function(){
			setTimeout(function(){
				$('body').find('.preloader-overlay').remove();
			},100)
		}
	};
	
	return $;
})(jQuery)

$.FZ(20,375);
var ua = navigator.userAgent.toLowerCase();   
var osVersion = '';
if (/iphone|ipad|ipod/.test(ua)) {       
	osVersion='ios';   
} 
else if (/android/.test(ua)) { 
	osVersion='android';        
}

$('.stylecheck').find('label').eq(0).addClass('active');
$('.paystyle').eq(0).addClass('active');
var stylesArray = [];
var stylesArrayC1 = [];
var stylesArray2 = [];
var stylesArray3 = [];
var stylesArray4 = [];
var stylesArray5 = [];
var stylesArray2Name = [];
var stylesArray3Name = [];
var stylesContent = $('.sdt1 p');
$.each(stylesContent,function(){
	var obj = {};
	if ($(this).attr('parentid')==0) {
		obj = {
			goodsstylename:$(this).attr('goodsstylename'),
			floorname:$(this).attr('floorname'),
			styleid:$(this).attr('styleid'),
			goodsprice:$(this).attr('goodsprice'),
			id:$(this).attr('goodsIdStyle')
		}
		stylesArray.push(obj);
		stylesArrayC1.push(obj);
	}
	if ($(this).attr('parentid')==1) {
		var obj2 = {};
		obj2 = {
			goodsstylename:$(this).attr('goodsstylename'),
			floorname:$(this).attr('floorname'),
			styleid:$(this).attr('styleid'),
			goodsprice:$(this).attr('goodsprice'),
			id:$(this).attr('goodsIdStyle')
		}
		stylesArray2.push(obj2);
		stylesArray5.push(obj2);
		stylesArray2Name.push($(this).attr('goodsstylename'));
	}
	if ($(this).attr('parentid')==2) {
		var obj3 = {};
		obj3 = {
			goodsstylename:$(this).attr('goodsstylename'),
			floorname:$(this).attr('floorname'),
			styleid:$(this).attr('styleid'),
			goodsprice:$(this).attr('goodsprice'),
			id:$(this).attr('goodsIdStyle')
		}
		stylesArray3.push(obj3);
		stylesArray4.push(obj3);
		stylesArray3Name.push($(this).attr('goodsstylename'));
	}			
})
isParentsMeny(stylesArray);
if (stylesArray3.length!=0) {
	$.each(stylesArrayC1,function(i){
		stylesArrayC1[i].data = extendDeep(stylesArray2);
	})
	var strdts = stylesArray4.length/(stylesArrayC1.length*stylesArray2.length);
	$.each(stylesArrayC1,function(i){
		$.each(stylesArrayC1[i].data,function(j){
			stylesArrayC1[i].data[j].data= stylesArray4.splice(0,strdts);
		})
	})
	var stylesArray2Name1 = unique2(stylesArray2Name);
	isParentsMeny1(stylesArray2,stylesArray2Name1)
	var stylesArray3Name1 = unique2(stylesArray3Name);
	isParentsMeny1(stylesArray3,stylesArray3Name1);
	$.each($('#stylesAll').find('.styleall'),function(i){
		$('#stylesAll').find('.styleall').eq(i).find('label').eq(0).addClass('active');
	})
}
if (stylesArray3.length==0) {
	var strdts = stylesArray5.length/(stylesArrayC1.length);
	$.each(stylesArrayC1,function(i){
		stylesArrayC1[i].data= stylesArray5.splice(0,strdts);
	})

	var stylesArray2Name1 = unique2(stylesArray2Name);
	isParentsMeny1(stylesArray2,stylesArray2Name1);
	$.each($('#stylesAll').find('.styleall'),function(i){
		$('#stylesAll').find('.styleall').eq(i).find('label').eq(0).addClass('active');
	})	
}
console.log(stylesArrayC1);
		var truePrice = trueprice().goodsprice;
		
		var buynum2 = $('#numd').val()?$('#numd').val():$('#select-time').val();
		$("#prize").html(truePrice * buynum2);
	function trueprice(){
		var goodsprice = '';
		var id = '';
		if (stylesArray3.length!=0) {
			var i = $('#stylesAll').find('.styleall').eq(0).find('.active').find('input').attr('index');
			var j = $('#stylesAll').find('.styleall').eq(1).find('.active').find('input').attr('index');
			var z = $('#stylesAll').find('.styleall').eq(2).find('.active').find('input').attr('index');
			goodsprice = stylesArrayC1[i].data[j].data[z].goodsprice;
			id = stylesArrayC1[i].data[j].data[z].id;
			name = stylesArrayC1[i].goodsstylename +'-'+
				 stylesArrayC1[i].data[j].goodsstylename  +'-'+
				 stylesArrayC1[i].data[j].data[z].goodsstylename;
		}
		if (stylesArray2.length==0||stylesArray3.length==0) {
			var i = $('#stylesAll').find('.styleall').eq(0).find('.active').find('input').attr('index');
			goodsprice = stylesArrayC1[i].goodsprice;
			id = stylesArrayC1[i].id;
			name = stylesArrayC1[i].goodsstylename; 			
		}

		if (stylesArray3.length==0&&stylesArray2.length!=0) {
			var i = $('#stylesAll').find('.styleall').eq(0).find('.active').find('input').attr('index');
			var j = $('#stylesAll').find('.styleall').eq(1).find('.active').find('input').attr('index');
			goodsprice = stylesArrayC1[i].data[j].goodsprice;
			id = stylesArrayC1[i].data[j].id;
			name = stylesArrayC1[i].goodsstylename +'-'+
				stylesArrayC1[i].data[j].goodsstylename; 			
		}	
		return {goodsprice:goodsprice,id:id,name:name};
	}
    function unique2(arr){
     arr.sort(); //先排序
     var res = [arr[0]];
     for(var i = 1; i < arr.length; i++){
      if(arr[i] !== res[res.length - 1]){
       res.push(arr[i]);
      }
     }
     return res;
    }

function extendDeep(parent, child) {
	child = child || {};
	for(var i in parent) {
		if(parent.hasOwnProperty(i)) {
			//检测当前属性是否为对象
			if(typeof parent[i] === "object") {

				child[i] = (Object.prototype.toString.call(parent[i]) === "[object Array]") ? [] : {};
				extendDeep(parent[i], child[i]);
			} else {
				child[i] = parent[i];
			}
		}
	}
	return child;
}




$('#stylesAll').on('click','label',function(e){
	e.stopPropagation();
	e.preventDefault();

	$(this).addClass("active").siblings(".active").removeClass("active");
		var numba = $('#numd').val();
		var paystyle = $('.paypal .active').attr('data')==1?0:5;
		var truePrice = trueprice().goodsprice;
		//根据config中价格倍数计算显示价格
		$("#prize").html(truePrice * numba - paystyle);	
})


function isParentsMeny(obj){
	if (obj!='') {
		var controlall = '';
		var titleShops1 = '';
		$.each(obj,function(i){
			titleShops1 = obj[i].floorname;
			controlall +='<label class=""><input type="radio" name="product"  value="'+
			obj[i]+'" goodsPrice="'+
			obj[i].goodsprice+'" index="'+i+'" styleid="'+
			obj[i].styleid+'"><span>'+obj[i].goodsstylename+
			'</span></label>';

		})

		var contentShopAll1 = '<div class="model-wrap clearfix styleall">'+
	            '<span class="xing left">'+titleShops1+'</span>'+
	                '<div class="model-checkbox right stylecheck">'+controlall+
	                '</div></div>';
	    $('#stylesAll').append(contentShopAll1)
	}	
}
function isParentsMeny1(obj,namearray){
	if (obj!='') {
		var controlall = '';
		var titleShops1 = '';
		$.each(namearray,function(i){
			titleShops1 = obj[i].floorname;
			controlall +='<label class=""><input type="radio" name="product"  value="'+
			obj[i]+'" goodsPrice="'+
			obj[i].goodsprice+'" index="'+i+'" styleid="'+
			obj[i].styleid+'"><span>'+obj[i].goodsstylename+
			'</span></label>';

		})

		var contentShopAll1 = '<div class="model-wrap clearfix styleall">'+
	            '<span class="xing left">'+titleShops1+'</span>'+
	                '<div class="model-checkbox right stylecheck">'+controlall+
	                '</div></div>';
	    $('#stylesAll').append(contentShopAll1)
	}	
}


var server = $('.g-wrapper').attr('urlip');	
var paystylecont = $('.paystyle').length;
$('.paystyle').eq(paystylecont-1).css('border-bottom','0px');
	var timeCutDown = function(){
		var sys_second = $('#remainTime').attr('tt');
		var timer = setInterval(function(){
			if (sys_second > 1) {
				sys_second -= 1;
				var hour = Math.floor((sys_second / 3600) % 24);
				var minute = Math.floor((sys_second / 60) % 60);
				var second = Math.floor(sys_second % 60);
				$('.remainTime-hour').text(hour<10?"0"+hour:hour);//计算小时
				$('.remainTime-minute').text(minute<10?"0"+minute:minute);//计算分钟
				$('.remainTime-second').text(second<10?"0"+second:second);//计算秒杀
			} else { 
				clearInterval(timer);
			}
		}, 1000);
	}
	timeCutDown();
	if (window.localStorage.getItem("localsession")) {
		var localsn = JSON.parse(window.localStorage.getItem("localsession"));
		$('#j-name').val(localsn.userName);
		$('#j-tel').val(localsn.userPhone);
		$('#j-add2').val(localsn.address);
		$('#cg02').find('select').eq(0).find("option[value='"+localsn.province+"']").attr("selected",true);
		$('#cg02').find('select').eq(1).prepend('<option selected value='+localsn.city+'>'+localsn.city+'</option>');
		$('#cg02').find('select').eq(2).prepend('<option selected value='+localsn.county+'>'+localsn.county+'</option>');
	}
	var goodsInfoInit = function(){
		var showPrice = $('.g-buy').attr('showPrice');
		var originalPrice = $('.g-buy').attr('originalPrice');
		$('#goodsInfo-prize').html(parseInt(showPrice));
		$('#goodsInfo-oriprize').html(originalPrice);
		var zk = Math.round(showPrice / originalPrice * 100);
		if (showPrice === '0') {
			zk = '100%';
		}
		$('#goodsInfo-zk').html(zk/10);
		$('#goodsInfo-save span').html(originalPrice-showPrice);				
	}	
	goodsInfoInit();
	var selcity = Zepto("#cg02").rwlProvinceCity({
	        target: 'cg02',
	    });
	var btnclknum = true;
	var btnClick = function(){
		//购买按钮
			var tel =$("#j-tel").val();
			var name =$("#j-name").val();
			var add2 =$("#j-add2").val();

			if (name=='') {
				swal("","请填写完姓名","warning");
				return;
			}
			if (tel=='') {
				swal("","请填写手机号码","warning");
				return;
			}	
			var telReg = /^(0|86|17951)?1\d{10}$/;
			if (!telReg.test(tel)) {
				swal("","请输入正确的手机号码","warning");
				return;
			}						
			if (add2=='') {
				swal("","请填写完详细地址","warning");
				return;
			}					

			var province = $('#cg02').find('select').eq(0).val();
	        var city = $('#cg02').find('select').eq(1).val();
	        var county = $('#cg02').find('select').eq(2).val();
			var dts = $('#stylesAll').find('.active');
			var truePrice = trueprice().goodsprice;
			if (truePrice=='') {
				swal("","请选择完整商品规格","warning");
				return;
			}				        
            if (province=='选省份' || 
            	city=='选城市'|| 
            	county=='选地区'||
            	province==''||
            	city==''||
            	county=='') {
				swal("","请选择完整的地区","warning");
            		return;
            }				
	        if (btnclknum) {
	        	request();
	        }
	}

	var request = function(){
		var title = $('title').text();
		var province = $('#cg02').find('select').eq(0).val();
        var city = $('#cg02').find('select').eq(1).val();
        var county = $('#cg02').find('select').eq(2).val();
        if (province=='') {
        	province = selcity.getselprovince();
        }	
        if (city=='') {
        	city = selcity.getselcity();
        }
        if (county=='') {
        	county = selcity.getseldist();
        }       
		var timeVal = $("#select-time").val();
        var defaultIdx = $('.model-checkbox').find(".active").children('input').val();
        //提交信息，channel为渠道号
        var goodsStyle = trueprice().name;//商品类型

        var numba1 = $('#numd').val()?$('#numd').val():$('#select-time').val();
        var goodsNum = parseInt(numba1);//商品数量
        var userName = $("#j-name").val();//用户姓名
        var userPhone = $("#j-tel").val();//用户电话号码
        // var province = $("#city-picker").attr('dpro');//省
        // var city = $("#city-picker").attr('dcity');//市
        // var county = $("#city-picker").attr('dcountry');;//区县
        var address = $("#j-add2").val();//详细地址
        var sizeS=$('.chima .active input').val();
        var remark = !/鞋/.test(title)?$("#j-other").val():$("#j-other").val()+'-尺码：'+sizeS;//备注
  		var payType = $('.paypal .active').attr('data');
  		var goodsId = $('.g-wrapper').attr('goodsId');
  		var channelId = $('.g-wrapper').attr('channelId');
  		var channel = $('.g-wrapper').attr('channel');
  		var md5Key = $('.g-wrapper').attr('md5Key');
  		var sonchannelId = $('.g-wrapper').attr('sonchannelId');
		var goodsPrice = trueprice().goodsprice;
		var id = trueprice().id;	  		
  		var localsession = {
							userName:userName,
							userPhone:userPhone,
							province:province,
							city:city,
							county:county,
							address:address			
						};
		if (payType==1) {
			var zhifuStyle	='<span class="right zhifuStyle huodao">货到付款</span>';
			var jianmian = 0;
			var youhui = '';
		}				
		if (payType==2) {
			var zhifuStyle	='<span class="right zhifuStyle alpay">支付宝</span>';
			var jianmian = 5;
			var youhui = '在线支付已优惠5元。';
		}
		if (payType==3||payType==4) {
			var zhifuStyle	='<span class="right zhifuStyle weixinpay">微信支付</span>';
			var jianmian = 5;
			var youhui = '在线支付已优惠5元。';
		}						 		
		var xianz = '<div class="title1">'+
            '<p class="font14"><span class="left">收货人：'+userName+'</span><span class="right">'+userPhone+'</span></p>'+
            '<div class="clear"></div><p class="black333">收货地址：'+province+city+county+address+'</p></div>' +
        '<div class="title2"><p class="font14">'+goodsStyle+'</p>'+
            '<p class="font14 gay"><span class="left">￥'+goodsPrice+'元</span><span class="right">x'+goodsNum+'</span></p>'+
        '</div> '+
        '<div class="pay"><span class="left">支付方式</span>'+zhifuStyle+'</div>'+
        '<p class="total">共计￥'+(goodsPrice*goodsNum-jianmian)+'<span class="black999">（包邮）</span></p>'+
        '<p class="notice">温馨提示：本单包邮且支持开箱验货，特惠商品无发票。'+youhui+'</p>';			

		if (payType==2) {
			  layer.open({
			  	title:'订单详情',
			    content: xianz
			    ,btn: ['支付', '取消']
			    ,yes: function(index){
			    	layer.close(index);
			    	window.localStorage.setItem("localsession", JSON.stringify(localsession));					
					location.href=server+"/order/createOrder?goodsStyle="+goodsStyle+
									'&goodsPrice='+goodsPrice+'&userName='+userName
									+'&userPhone='+userPhone+'&province='+province
									+'&city='+city+'&county='+county
									+'&address='+address+'&md5Key='+md5Key
									+'&remark='+remark+'&goodsNum='+goodsNum
									+'&channel='+channel+'&payType='+payType
									+'&channelId='+channelId+'&goodsId='+goodsId
									+'&goodsStyleId='+id
									+'&sonchannelId='+sonchannelId;
									btnclknum = true;
									return;
					    },
			  });
		}
		if (payType==4) {
			  layer.open({
			  	title:'订单详情',
			    content: xianz
			    ,btn: ['支付', '取消']
			    ,yes: function(index){
			    	layer.close(index);
			    	window.localStorage.setItem("localsession", JSON.stringify(localsession));			
					$.ajax({
						type:"post",
						url:server+"/order/createOrder",
						data:{
							goodsStyleId:id,
							goodsStyle:goodsStyle,
							goodsPrice:goodsPrice,
							userName:userName,
							userPhone:userPhone,
							province:province,
							city:city,
							county:county,
							address:address,
							remark:remark,
							goodsNum:goodsNum,
							payType:payType,
							md5Key:md5Key,
							channel:channel,
							channelId:channelId,
							goodsId:goodsId,
							sonchannelId:sonchannelId,
							os:osVersion
						},
						async:true,
						dataType:"json",
						success:function(o){
							btnclknum = true;
							
							if (o.stateCode == 1) {
								//  var pay_url = JSON.parse(o.message).pay_url;							
								//var pay_url = JSON.parse(o.message).payInfo;
								var pay_url = JSON.parse(o.message).pay_url;//4
								layer.close(index);
								if (pay_url == undefined) {
									swal("",'微信支付异常，请尝试其他支付方式',"error");
								}
								location.href=pay_url;
							}else{
								swal("",o.message,"error");
							}
						}
					});	
				}	    
			  });
			  		
		}

		if (payType==1) {
			  layer.open({
			  	title:'订单详情',
			    content: xianz
			    ,btn: ['提交订单', '取消']
			    ,yes: function(index){
			    	layer.close(index);
			    	btnclknum=false;
					window.localStorage.setItem("localsession", JSON.stringify(localsession));
					$.ajax({
						type:"post",
						url:server+"/order/createOrder",
						data:{
							goodsStyleId:id,
							goodsStyle:goodsStyle,
							goodsPrice:goodsPrice,
							userName:userName,
							userPhone:userPhone,
							province:province,
							city:city,
							county:county,
							address:address,
							remark:remark,
							goodsNum:goodsNum,
							payType:payType,
							md5Key:md5Key,
							channel:channel,
							channelId:channelId,
							goodsId:goodsId,
							sonchannelId:sonchannelId
						},
						async:true,
						dataType:"json",
						success:function(o){
							btnclknum = true;

							if ($('#duiba').attr('data')==1) {
		                        TuiaAdverter.init(function() {
								if (o.stateCode == 1) {
									layer.close(index);								
									var goodsName = $('.g-wrapper').attr('goodsName');
									if (/酒/.test(goodsName)) {
							    		location.href = 'http://www.asomob.com/weixingo.html';
							    	}else{
							    		location.href = 'http://www.asomob.com/paysuccess1.html';
							    	}
								}else{
									swal("",o.message,"error");
								}
		                            }, {
		                            location: "btn"
		                            }) 	
		                            //return;							
							}else if($('#bianxianmao').attr('data')==1){
								_bxmPlatformFn(bxm_id,o);
							}else{
								if (o.stateCode == 1) {
									layer.close(index);								
									var goodsName = $('.g-wrapper').attr('goodsName');
									if (/酒/.test(goodsName)) {
							    		location.href = 'http://www.asomob.com/weixingo.html';
							    	}else{
							    		location.href = 'http://www.asomob.com/paysuccess1.html';
							    	}
								}else{
									swal("",o.message,"error");
								}
							}
							

						}
					});	
				}
			  });	
		}

	}

	var bindClick = function(){
		var dts = $('#stylesAll').find('.active');
		var truePrice = trueprice().goodsprice;
		
		var buynum2 = $('#numd').val()?$('#numd').val():$('#select-time').val();
		$("#prize").html(truePrice * buynum2);

		$('#numberp').on('click','#numdr,#numdl',function(){
		var dts = $('#stylesAll').find('.active');
		var truePrice = trueprice().goodsprice;
			var buynum2 = $('#numd').val();
			var paystyle = $('.paypal .active').attr('data')==1?0:5;
			$("#prize").html(truePrice * buynum2 - paystyle);
		})
		$('#numberp').on('change','#numd',function(){
		var dts = $('#stylesAll').find('.active');
		var truePrice =trueprice().goodsprice;
			var buynum2 = $('#numd').val();
			var paystyle = $('.paypal .active').attr('data')==1?0:5;
			$("#prize").html(truePrice * buynum2 - paystyle);
		})
		$('#select-time').on("change",function(){
			var dts = $('#stylesAll').find('.active');
			var truePrice = trueprice().goodsprice;
			idx = Number(parseInt($(this).val()));
			var paystyle = $('.paypal .active').attr('data')==1?0:5;
			//根据config中价格倍数计算显示价格
			$("#prize").html(truePrice * idx - paystyle);
		});	

		$('.paystyle').on('click',function(){
			$(this).addClass('active').siblings().removeClass('active');
		var dts = $('#stylesAll').find('.active');
		var goodsprice = '';
		$.each(dts,function(i){
			if (dts.eq(i).find('input').attr('goodsprice')!='') {
				goodsprice = dts.eq(i).find('input').attr('goodsprice')
			}
			
		})
			var num = $('#numd').val();
			if ($(this).attr('data')==1) {
				$('#prize').html(goodsprice*num);
			}else{
				$('#prize').html(goodsprice*num-5);
			}

		})
		$('.chima label').on('click',function(){
			$(this).addClass('active').siblings().removeClass('active');
		})
	}
	bindClick();
 	$('#bottomnow #now').on('click',function(){
	    var top = document.body.scrollTop;
	    var on = $("#online").offset().top;
	    if (top >= on-50) {
	    	btnClick();
	    }else{
	    	$("html,body").animate({scrollTop:$("#online").offset().top},1000);
	    } 		
	})   
	$('#suballorder').on('click',function(){
		btnClick();
	})
	var evaluationInit = function(){
		var namelength=names.length;
		
		var lilength = $('.evaluation li').length;
		for (var i = 0; i < lilength; i++) {
			var id = Math.ceil(Math.random()*namelength);
			if (id%2==0) {
				$('.evaluation li').eq(i).find('h1').html(names[id].nickName+'*');
			}else{
				$('.evaluation li').eq(i).find('h1').html('*'+names[id].nickName);
			}
			
		}
		setInterval(function(){
			var liheight = $('.evaluation').height()/3-20;
			$('.evaluation').find("li:last-child")
				.height(0)
				.prependTo($('.evaluation'))
				.animate({height:liheight+'px'},500);
		},3000);
	}
	evaluationInit();
	var histInit = function(){	
			var textFourContent = $('.hist').attr('textFourContent');
			

			$(".histul").append(
				"<li><span>[最新购买]：<\/span>张**（130****3260）在1分钟前订购了 "+textFourContent+" <font color=\'#FF0000\'>√<\/font><\/li>"+
				"<li><span>[最新购买]：<\/span>李**（136****7163）在3分钟前订购了 "+textFourContent+" <font color=\'#FF0000\'>√<\/font><\/li>"+
				"<li><span>[最新购买]：<\/span>赵**（139****1955）在7分钟前订购了 "+textFourContent+" <font color=\'#FF0000\'>√<\/font><\/li>"+
				"<li><span>[最新购买]：<\/span>刘**（180****6999）在9分钟前订购了 "+textFourContent+" <font color=\'#FF0000\'>√<\/font><\/li>"+
				"<li><span>[最新购买]：<\/span>周**（151****2588）在4分钟前订购了 "+textFourContent+" <font color=\'#FF0000\'>√<\/font><\/li>"+
				"<li><span>[最新购买]：<\/span>王**（133****4096）在10分钟前订购了 "+textFourContent+" <font color=\'#FF0000\'>√<\/font><\/li>"+
				"<li><span>[最新购买]：<\/span>秦**（139****1955）在15分钟前订购了 "+textFourContent+" <font color=\'#FF0000\'>√<\/font><\/li>"+
				"<li><span>[最新购买]：<\/span>朱**（180****6999）在20分钟前订购了 "+textFourContent+" <font color=\'#FF0000\'>√<\/font><\/li>"+
				"<li><span>[最新购买]：<\/span>吴**（151****2588）在12分钟前订购了 "+textFourContent+" <font color=\'#FF0000\'>√<\/font><\/li>"+
				"<li><span>[最新购买]：<\/span>谭**（133****4096）在18分钟前订购了 "+textFourContent+" <font color=\'#FF0000\'>√<\/font><\/li>"
			);
		setInterval(function(){
			var liheight = $('.hist ul').find("li").height();
			$('.hist ul').find("li:last-child")
				.height(0)
				.prependTo($('.hist ul'))
				.animate({height:liheight+'px'},500);
		},2000);
	}
	histInit();

;(function($){ 
	var functions = {
		init:function(input, step, max, min, digit){
			var width = input.width()-3;
			var height = input.height();
			var _this = this;
		 	width += 3;
		 	
		 	input.attr("readonly", "readonly");
		 	//设置不分样式
			input.css("border", "none");
			input.css("width", width-height*2-2);
			input.css("height", height);
			input.css("padding", "0px");
			input.css("margin", "0px");
			input.css("text-align", "center");
			input.css("vertical-align", "middle");
			input.css("line-height", height + "px");
			
			
			//添加左右加减号
			input.wrap("<div class='numd' style = 'overflow:hidden;width:" + width + "px;height:" + height + "px;border: 1px solid #CCC;float:left'></div>");
			input.before("<div id = '" + input.attr('id') + "l'  onselectstart = 'return false;' style = '-moz-user-select:none;cursor:pointer;text-align:center;width:" + height + "px;height:" + height + "px;line-height:" + height + "px;border-right: 1px solid #CCC;float:left'>-</div>");
			input.after("<div id = '" + input.attr('id') + "r'  onselectstart = 'return false;' style = '-moz-user-select:none;cursor:pointer;text-align:center;width:" + height + "px;height:" + height + "px;line-height:" + height + "px;border-left: 1px solid #CCC;float:right'> + </div>");
			//左右调用执行
			$("#" + input.attr('id') + "l").click(function(){
				_this.execute(input, step, max, min, digit, true);
			});
			$("#" + input.attr('id') + "r").click(function(){
				_this.execute(input, step, max, min, digit, false);
			});
		},
		execute:function(input, step, max, min, digit, _do){
			var val = parseFloat(this.format(input.val(), digit));
			var ori = val;
			if(_do) val -= step;
			if(!_do) val += step;
			if(val<min){
				val  =  min;
			}else if(val>max){
				val  =  max;
			}
			input.val(this.format(val, digit));
		},
		format:function(val, digit){
			if(isNaN(val)){ 
				val = 0;
			}
			return parseFloat(val).toFixed(digit);	
		}
	};
	
	
    $(function(){
    	//使用控件必须有以下属性或者引用alignment类
		var inputs = $("input[user_data], input[data_digit], input[data_step], input[data_min], input[data_max], input.alignment");
		inputs.each(function(){
			//预设值数据选择
			var data = {
			            default_data : 	{"step" : 0.1, "min" : 0, "max" : 99, "digit" : 1}, 
			            aaa : 			{"step" : 0.5, "min" : 5, "max" : 20, "digit" : 1}, 
						}
			
			var user_data = eval("data." + $(this).attr("user_data"));
			if(user_data == null){
				user_data = data.default_data;
			}
			
			var digit = $(this).attr("data_digit");
			if(digit != null&&!isNaN(parseFloat(digit))){
				digit  =  parseFloat(digit).toFixed(0);
				user_data.digit = parseFloat(digit);
			}
			
			var step = $(this).attr("data_step");
			if(step != null &&!isNaN(parseFloat(step))){
				user_data.step = parseFloat(step);
			}
			var min = $(this).attr("data_min");
			if(min != null &&!isNaN(parseFloat(min))){
				user_data.min = parseFloat(min);
			}
			
			var max = $(this).attr("data_max");
			if(max != null &&!isNaN(parseFloat(max))){
				user_data.max = parseFloat(max);
			}
			//自动装载
	        functions.init($(this), user_data.step, user_data.max, user_data.min, user_data.digit);
	        
	        var data_edit = $(this).attr("data_edit");
	        if(data_edit){
	        	$(this).attr("readonly",null);
	        }
		});
	})  
})(Zepto);
;(function($, undefined) {
    var prefix = '',
        eventPrefix, // prefix浏览器前缀 -webkit等，eventPrefix事件前缀
        vendors = {
            Webkit: 'webkit',
            Moz: '',
            O: 'o'
        }, //前缀数据源 不包含IE
        testEl = document.createElement('div'), //临时DIV容器
        supportedTransforms = /^((translate|rotate|scale)(X|Y|Z|3d)?|matrix(3d)?|perspective|skew(X|Y)?)$/i, //变形检测
        transform, //变形
        transitionProperty, transitionDuration, transitionTiming, transitionDelay, //过渡
        animationName, animationDuration, animationTiming, animationDelay, //动画
        cssReset = {}

    //将驼峰字符串转成css属性，如aB-->a-b
    function dasherize(str) {
        return str.replace(/([a-z])([A-Z])/, '$1-$2').toLowerCase()
    }

    //修正事件名
    function normalizeEvent(name) {
        return eventPrefix ? eventPrefix + name : name.toLowerCase()
    }

    /**
     * 根据浏览器内核，设置CSS前缀，事件前缀
     * 如-webkit， css：-webkit-  event:webkit
     * 这里会在vendors存储webkit，moz，o三种前缀
     */
    $.each(vendors, function(vendor, event) {
        if(testEl.style[vendor + 'TransitionProperty'] !== undefined) {
            prefix = '-' + vendor.toLowerCase() + '-'
            eventPrefix = event
            return false
        }
    })

    transform = prefix + 'transform' //变形

    //过渡,对于css属性重新设置前缀
    cssReset[transitionProperty = prefix + 'transition-property'] =
        cssReset[transitionDuration = prefix + 'transition-duration'] =
        cssReset[transitionDelay = prefix + 'transition-delay'] =
        cssReset[transitionTiming = prefix + 'transition-timing-function'] =
        cssReset[animationName = prefix + 'animation-name'] =
        cssReset[animationDuration = prefix + 'animation-duration'] =
        cssReset[animationDelay = prefix + 'animation-delay'] =
        cssReset[animationTiming = prefix + 'animation-timing-function'] = ''

    /**
     * 动画常量数据源，默认设置
     * @type {{off: boolean, speeds: {_default: number, fast: number, slow: number}, cssPrefix: string, transitionEnd: *, animationEnd: *}}
     */
    $.fx = {
        off: (eventPrefix === undefined && testEl.style.transitionProperty === undefined), //能力检测是否支持动画，具体检测是否支持过渡，支持过渡事件
        speeds: {
            _default: 400,
            fast: 200,
            slow: 600
        },
        cssPrefix: prefix, //css 前缀  如-webkit-
        transitionEnd: normalizeEvent('TransitionEnd'), //过渡结束事件
        animationEnd: normalizeEvent('AnimationEnd') //动画播放结束事件
    }

    /**
     * 创建自定义动画
     * @param properties  样式集
     * @param duration 持续事件
     * @param ease    速率
     * @param callback  完成时的回调
     * @param delay     动画延迟
     * @returns {*}
     */
    // 这里是对参数的修正和处理，真正操作的是anim方法
    $.fn.animate = function(properties, duration, ease, callback, delay) {
        //参数修正，传参为function(properties,callback)
        if($.isFunction(duration))
            callback = duration, ease = undefined, duration = undefined
        if($.isFunction(ease)) //传参为function(properties,duration，callback)
            callback = ease, ease = undefined
        if($.isPlainObject(duration)) //传参为function(properties,｛｝)
            ease = duration.easing, callback = duration.complete, delay = duration.delay, duration = duration.duration
            // duration 数字：持续时间  字符串：取speeds: { _default: 400, fast: 200, slow: 600 }对应数字
        if(duration) duration = (typeof duration == 'number' ? duration :
                ($.fx.speeds[duration] || $.fx.speeds._default)) / 1000 //动画持续时间默认值
        if(delay) delay = parseFloat(delay) / 1000 //延迟时间，除以1000转换成s
        return this.anim(properties, duration, ease, callback, delay)
    }

    /**
     * 动画核心方法
     * @param properties  样式集
     * @param duration 持续事件
     * @param ease    速率
     * @param callback  完成时的回调
     * @param delay     动画延迟
     * @returns {*}
     */
    $.fn.anim = function(properties, duration, ease, callback, delay) {
        var key, cssValues = {},
            cssProperties, transforms = '', // transforms 变形   cssValues设置给DOM的样式
            that = this,
            wrappedCallback, endEvent = $.fx.transitionEnd,
            fired = false

        //修正持续时间
        if(duration === undefined) duration = $.fx.speeds._default / 1000
        if(delay === undefined) delay = 0

        //如果浏览器不支持动画，持续时间设为0，直接跳动画结束
        if($.fx.off) duration = 0

        // properties是动画名
        if(typeof properties == 'string') {
            // keyframe [animationName] = properties
            cssValues[animationName] = properties
            cssValues[animationDuration] = duration + 's'
            cssValues[animationDelay] = delay + 's'
            cssValues[animationTiming] = (ease || 'linear')
            endEvent = $.fx.animationEnd //动画结束事件
        } else { //properties 是样式集
            cssProperties = []
                // CSS transitionsanimation
            cssValues
            for(key in properties)
            // supportedTransforms.test(key) 正则检测是否为变形
            // key + '(' + properties[key] + ') '拼凑成变形方法
                if(supportedTransforms.test(key)) transforms += key + '(' + properties[key] + ') '
                else cssValues[key] = properties[key], cssProperties.push(dasherize(key))

            // 变形统一存入  cssValues   cssProperties
            if(transforms) cssValues[transform] = transforms, cssProperties.push(transform)

            // duration > 0可以播放动画，且properties是对象，表明为过渡，上面有字符串，则为animate
            if(duration > 0 && typeof properties === 'object') {
                cssValues[transitionProperty] = cssProperties.join(', ')
                cssValues[transitionDuration] = duration + 's'
                cssValues[transitionDelay] = delay + 's'
                cssValues[transitionTiming] = (ease || 'linear') //默认线性速率
            }
        }

        //动画完成后的响应函数
        wrappedCallback = function(event) {
            if(typeof event !== 'undefined') {
                if(event.target !== event.currentTarget) return // makes sure the event didn't bubble from "below"
                $(event.target).unbind(endEvent, wrappedCallback)
            } else
                $(this).unbind(endEvent, wrappedCallback) // triggered by setTimeout

            fired = true
                // TODO 既然已经执行完了，为什么这里要重复css一下，不太理解
            $(this).css(cssReset)
            callback && callback.call(this)
        }

        //处理动画结束事件
        if(duration > 0) {
            //绑定动画结束事件
            this.bind(endEvent, wrappedCallback)
                // transitionEnd is not always firing on older Android phones
                // so make sure it gets fired

            //延时ms后执行动画，注意这里加了25ms，保持endEvent，动画先执行完。
            //绑定过事件还做延时处理，是transitionEnd在older Android phones不一定触发
            setTimeout(function() {
                //如果触发过，就不处理
                if(fired) return
                wrappedCallback.call(that)
            }, ((duration + delay) * 1000) + 25)
        }

        // trigger page reflow so new elements can animate
        //主动触发页面回流，刷新DOM，让接下来设置的动画可以正确播放
        //更改 offsetTop、offsetLeft、 offsetWidth、offsetHeight；scrollTop、scrollLeft、scrollWidth、scrollHeight；clientTop、clientLeft、clientWidth、clientHeight；getComputedStyle() 、currentStyle（）。这些都会触发回流。回流导致DOM重新渲染，平时要尽可能避免，但这里，为了动画即时生效播放，则主动触发回流，刷新DOM。
        // 与.length属性一致
        this.size() && this.get(0).clientLeft

        //设置样式，启动动画
        this.css(cssValues)

        // duration为0，即浏览器不支持动画的情况，直接执行动画结束，执行回调。
        if(duration <= 0) setTimeout(function() {
            that.each(function() {
                wrappedCallback.call(this)
            })
        }, 0)

        return this;
    }

    testEl = null //去掉不必要的数据存储，便于垃圾回收
})(Zepto)