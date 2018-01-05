<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
		<title>云推 - 互动式效果广告平台</title>
		<link rel="stylesheet" type="text/css" href="/css/index.css"/>
        <link rel="stylesheet" type="text/css" href="/css/layui.css"/>
        <script type="text/javascript" src="/layui.js"></script>
        <script type="text/javascript" src="/js/lib/jquery.min.js"></script>
        <script charset="utf-8" src="http://wpa.b.qq.com/cgi/wpa.php"></script>
	</head>
	<body>
		<!--吊顶-->
		<div class="xTop">
			<div class="clearfix width_1000">
				<span class="fl"></span>
				<span class="fr">
					<a href="javascript:;" class="textCenter" id="talk1">联系我们</a>
					<a href="javascript:;" class="colorWhite textCenter pop">登录</a>
				</span>
			</div>
		</div>
		<!--banner-->
		<div class="xBanner">
			<div class="width_1000">
				<span>互动式效果广告</span>
				<span>全新的移动广告模式</span>
				<p>通过富有创意的活动玩法，引导用户主动参与高效地完成广告转化</p>	
				<i></i>
			</div>
		</div>
		<!--内容-->
		<ul class="xSection">
			<li class="textCenter">
				<h3 class="width_1000">一站式移动流量变现平台</h3>
				<p class="width_1000">入口灵活，试用于不同量级的移动平台</p>
			</li>
			<li class="textCenter">
				<h3 class="width_1000">丰富多彩的HTML5主题活动</h3>
				<p class="width_1000">趣味活动，多种互动方式，用新鲜感抓住用户</p>
			</li>
			<li class="textCenter">
				<h3 class="width_1000">轻松对接专业团队服务</h3>
				<p class="width_1000">优质团队，提供快速支撑响应服务</p>
				<div class="clearFix width_1000">
					<div class="fl textCenter">
						<span>联系客服</span>
						<p>立即联系我们可以为您的广告提供高转化，高收益，优于传统的广告效果</p>
						<a href="javascript:;" class="colorWhite" id="talk2">马上联系</a>
					</div>
					<div class="fr textCenter">
						<span>预约服务</span>
						<form name="yuyueForm"  onsubmit="return false;">
							<input name="about_name" type="text" placeholder="请输入您的姓名"/>
							<input name="company_name" type="text" placeholder="请输入企业名称"/>
							<input name="about_phone" type="text" placeholder="请输入您的手机号码"/>
							<button id="yuyueBtn" class="colorWhite">立即预约</button>
						</form>
					</div>
				</div>
			</li>
		</ul>
		<!--脚部-->
		<div class="xFooter textCenter">
			<p>
				<span><i class="xPhone"></i>咨询电话：0571-88061745  0571-88170168</span>
				<em></em>
				<span><i class="xTime"></i>工作时间： 09:00-18:00（周一至周五）</span>
			</p>
			<p>浙ICP备12006745号 Copyright © 2014-2017 版权所有 浙江启冠网络股份有限公司</p>
		</div>
		<!--登录弹窗-->
		<div class="alertBox xAlert WHs hide">
			<div class="alertBg WHs"></div>
			<div class="alertCont backWhite absolute textCenter">
				<form name="loginform" action="" method="post" onsubmit="return false;">
					<a href="javascript:;" class="absolute pop"></a>
					<span>登录</span>
					<input type="text" name="user_name" placeholder="请输入用户名"  class="radius_5"/>
					<input type="password" name="password" placeholder="请输入密码" class="radius_5"/>
					<div id="info" style="color: #fa774c;"></div>
					<em class="block">
						<label for="rem">
							<input type="checkbox" id="rem"/>记住密码
						</label>
					</em>
					<button id="loginBtn" type="submit" class="colorWhite radius_5">登录</button>
				</form>
			</div>
		</div>
	</body>
	<script>
		layui.use(['layer'],function(){
            var layer = layui.layer;
            var LoginMarkBit = true;

            $('.pop').click(function(){
            	$('.alertBox').toggleClass('hide');
            })

			$('#loginBtn').click(function(){
				submitFun(document.forms['loginform'])
			})
			$('#yuyueBtn').click(function(){
				bespeakFun(document.forms['yuyueForm'])
			})
			
			function submitFun (obj) {
				if( !LoginMarkBit ){
					return false;
				}
				LoginMarkBit = false;
				var params = getFormData(obj)
				$.ajax({
	                url: '/member/login',
	                type: 'post',
	                data: params,
	                success: function (res) {
	                    res = JSON.parse(res);
	                    LoginMarkBit = true;
						info.innerHTML = res.msg;
						if( res.ret == 1){
							setTimeout(function(){
								window.location.href = '/user/index';
							}, 1000);
						}else{
							
						}
	                }
	            })
				return false;
			}
			function bespeakFun (obj) {
	            var p = getFormData(obj)
	            console.log(p)
	            $.ajax({
	                url: '/About/about',
	                type: 'post',
	                data: p,
	                success: function (res) {
	                    res = JSON.parse(res);
	                    console.log(res.msg);
	                    layer.msg(res.msg);
	                }
	            })
	            return false;
	        }

			function getFormData(form){
				if (!form) {
					return {};
				}
				var params = {}
					, elems = form.elements
					;
				for(var i in elems){
					var elem = elems[i];
					if(elem.nodeName != "INPUT"){
						continue;
					}
					var nodeAttrs = elem.attributes;
					if(nodeAttrs.name){
						params[nodeAttrs.name.nodeValue] = elem.value;
					}
				}
				return params;
			}
        })
		
		//联系客服
	    function addeventWpaQQ(id, qq) {
	        if ($('#' + id).length) {
	            BizQQWPA.addCustom({
	                aty: '0', //接入到指定工号
	                nameAccount: qq, //营销 QQ 号码
	                selector: id
	            });
	        }
	    }
	    addeventWpaQQ('talk1', '800066774');
	    addeventWpaQQ('talk2', '800066774');
	</script>
	
</html>
