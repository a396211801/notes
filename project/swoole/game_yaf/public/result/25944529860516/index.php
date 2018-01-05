<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta content="yes" name="apple-mobile-web-app-capable">
		<meta content="yes" name="apple-touch-fullscreen">
		<meta content="telephone=no,email=no" name="format-detection">
		<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<title>头条</title>
		<style>
			 * {
			      box-sizing: border-box;
		    }
		
		    body {
		      margin: 0;
		      padding: 0;
		    }
		    .viewport{
		      margin: 0 auto;
		      max-width: 750px;
		     position: relative;
		    }
		    img{
		      display: block;
		      width: 100%;
		    }
		    .head{
		    	padding: 0;	
		    }
		    .head img{
		    	width: 100;
		    }
		    .rich-text{
		    	padding: 10px 15px;
		    	height: 30px;
		    	line-height: 30px;
		    	
		    }
		    .apply{
		    	font-size: 16px;
		    	color: #999;
		    	padding: 5px 20px;
		    }
		    .form-input{
		    	border: 1px solid #D5D5D5;
		    	width: 100%;
		    	height: 40px;
		    	display: block;
		    	font-size: 14px;
		    	line-height: 40px;
		    	margin-top: 5px;
		    	color: #999;
		    }
		    .btn_i{
		    	width: 100%;
		    	height: 40px;
		    	background: #f85959;
		    	text-align: center;
		    	line-height: 40px;
		    	border: none;
		    	font-size: 16px;
		    	color: #fff;
		    }
		    .sub_btn{
		    	margin-top: 10px;
		    	height: 40px;
		    }
		    .body{
		    	padding: 0;
		    }
		    .body img{
		    	width: 100%;
		    }
		    .pen{
		    	width: 58px;
		    	height:58px ;
		    	z-index: 99999;
		    	background-color: #f85959;
		    	opacity: 0.7;
		    	background-image: url(http://assets.cjkt.com/img/mobile/active/duiba/form_icon.png);
		    	background-repeat: no-repeat;
		    	background-size: 60%;
		    	position: fixed;
		    	bottom: 10px;
		    	right: 10px;
		    	border-radius: 50%;
		    	background-position: center;
		    }
		    .video-box{
		    	background: #000;
		    }
		</style>
		<script src='http://assets.cjkt.com/js/jquery.min.js'></script>
		<script>
	    var bWidth;
	    var bHeight;
	    var h = document.querySelector("html");
	    function setSize() {
	      bWidth = document.documentElement.clientWidth;
	      bHeight = document.documentElement.clientHeight;
	      bWidth = bWidth > 640 ? 640 : bWidth;
	      h.style.fontSize = Math.round(bWidth / 750 * 100) + "px";
	    }
	    setSize();
	    window.onresize = setSize;
	  </script>
	</head>
	<body>
		<div class="viewport">
			<a class="pen" href="#apply" ></a>
			<div class="head">
				<a target="_blank">
					<img src="http://assets.cjkt.com/img/mobile/active/duiba/head.jpg" />
				</a>
			</div>
		
			<div style="text-align: center;color: #333;font-weight: 700;font-size: 16px;line-height: 40px;height: 40px;">
				超级课堂4500元学习套餐<span style="color: #f00;">免费领取</span>
			</div>		
		
			<div class="apply" id="form1">
					<div style="margin-top: 10px;">
						<label>姓名<span style="color: #f85959;">*</span></label>
						<div>
							<input type="text" name="name" class="form-input">
						</div>
					</div>
					<div style="margin-top: 10px;">
						<label>年级<span style="color: #f85959;">*</span></label>
						<div style="margin-top: 5px;">
							<select class="form-input" name="grade">
								<option value="">--请选择--</option>
								<option value="1">小学</option>
								<option value="2">初中</option>
								<option value="3">高中</option>
							</select>
						</div>
					</div>
					<div style="margin-top: 10px;">
						<label>您的身份<span style="color: #f85959;">*</span></label>
						<div style="margin-top: 5px;">
							<select class="form-input" name="type">
								<option value="">--请选择--</option>
								<option value="">老师</option>
								<option value="">家长</option>
							
							</select>
						</div>
					</div>
					<div style="margin-top: 10px;">
						<label>请输入您的手机号码<span style="color: #f85959;">*</span></label>
						<div>
							<input type="text" name="phone" class="form-input">
						</div>
					</div>
					<div style="margin-top: 10px;">
						<label>所在城市<span style="color: #f85959;">*</span></label>
						<div style="margin-top: 5px;">
							<select class="form-input" name="province">
								<option value="">--请选择--</option>
								<option value="">广东</option>
								<option value="">天津</option>
								<option value="">重庆</option>
								<option value="">浙江</option>
								<option value="">上海</option>
								<option value="">山东</option>
								<option value="">江苏</option>
							</select>
						</div>
					</div>
					<div class="sub_btn">
						<button class="btn_i">立即申请</button>
					</div>
			</div>
			
			<div class="body">
				<img src="http://assets.cjkt.com/img/mobile/active/duiba/body.jpg" />
			</div>
			
			<div class="video-box">
				<video width="100%" height="215px" src="http://assets.cjkt.com/img/mobile/active/duiba/video.mp4" controls="controls"></video>
			</div>
			
			<div class="body">
				<img src="http://assets.cjkt.com/img/mobile/active/duiba/foot.jpg" />
			</div>
			<div style="text-align: center;color: #333;font-weight: 700;font-size: 16px;line-height: 40px;height: 40px;">
				超级课堂4500元学习套餐<span style="color: #f00;">免费领取</span>
			</div>		
		
			<div class="apply" id="form2">
					<div style="margin-top: 10px;">
						<label>姓名<span style="color: #f85959;">*</span></label>
						<div>
							<input type="text" name="name" class="form-input">
						</div>
					</div>
					<div style="margin-top: 10px;">
						<label>年级<span style="color: #f85959;">*</span></label>
						<div style="margin-top: 5px;">
							<select class="form-input" name="grade">
								<option value="">--请选择--</option>
								<option value="1">小学</option>
								<option value="2">初中</option>
								<option value="3">高中</option>
							</select>
						</div>
					</div>
					<div style="margin-top: 10px;">
						<label>您的身份<span style="color: #f85959;">*</span></label>
						<div style="margin-top: 5px;">
							<select class="form-input" name="type">
								<option value="">--请选择--</option>
								<option value="">老师</option>
								<option value="">家长</option>
							
							</select>
						</div>
					</div>
					<div style="margin-top: 10px;">
						<label>请输入您的手机号码<span style="color: #f85959;">*</span></label>
						<div>
							<input type="text" name="phone" class="form-input">
						</div>
					</div>
					<div style="margin-top: 10px;">
						<label>所在城市<span style="color: #f85959;">*</span></label>
						<div style="margin-top: 5px;">
							<select class="form-input" name="province">
								<option value="">--请选择--</option>
								<option value="">广东</option>
								<option value="">天津</option>
								<option value="">重庆</option>
								<option value="">浙江</option>
								<option value="">上海</option>
								<option value="">山东</option>
								<option value="">江苏</option>
							</select>
						</div>
					</div>
					<div class="sub_btn" id="apply">
						<button class="btn_i">立即申请</button>
					</div>
			</div>
			<div style="font-size: 14px;color: #000;text-align: center;height: 40px;line-height: 40px;">加入我们，与百万学生共同进步</div>
		</div>
	</body>
    <script src="/js/common_qg.js"></script>
	<script type="text/javascript">
		$(function(){
            function one(){
              location.href = "http://mobile.cjkt.com/active/duiba/?a_cid=null&a_tuiaId=taw-25944529860516"
				var name=$('#form1 input[name="name"]').val();
				var grade=$('#form1 select[name="grade"]').find('option:selected').val();
				var phone=$('#form1 input[name="phone"]').val();
				var type=$('#form1 select[name="type"]').find('option:selected').text();
				var province=$('#form1 select[name="province"]').find('option:selected').text();
				if(!name){
					alert('姓名不能为空，请重新填写');
					return false;
				}
				if( !grade){
					alert('年级不能为空，请重新填写');
					return false;
				}
				if( type == '--请选择--'){
					alert('身份不能为空，请重新填写');
					return false;
				}
				if( province == '--请选择--'){
					alert('地区不能为空，请重新填写');
					return false;
				}
				if(!phone){
					alert('手机不能为空，请重新填写');
					return false;
				}
				var params={
					name:name,
					grade:grade,
					phone:phone,
					content:'身份:'+type+' 地区:'+province
				};
				$.ajax({
					dataType:'JSON',
					method:'post',
					url:'active/save/23',
					data:params,
					success:function(json){
						if(json.code == 0){
							alert('您的信息已提交，请耐心等候');
						}else{
							alert('您的信息已提交，请耐心等候');
						}

					},
					error:function(json){
						alert('您的信息已提交，请耐心等候')
					}
				})
			}

            function two(){
			  	location.href = "http://mobile.cjkt.com/active/duiba/?a_cid=null&a_tuiaId=taw-25944529860516"

				var name=$('#form2 input[name="name"]').val();
				var grade=$('#form2 select[name="grade"]').find('option:selected').val();
				var phone=$('#form2 input[name="phone"]').val();
				var type=$('#form2 select[name="type"]').find('option:selected').text();
				var province=$('#form2 select[name="province"]').find('option:selected').text();

				if(!name){
					alert('姓名不能为空，请重新填写');
					return false;
				}
				if( !grade){
					alert('年级不能为空，请重新填写');
					return false;
				}
				if( type == '--请选择--'){
					alert('身份不能为空，请重新填写');
					return false;
				}
				if( province == '--请选择--'){
					alert('地区不能为空，请重新填写');
					return false;
				}
				if(!phone){
					alert('手机不能为空，请重新填写');
					return false;
				}
				if(!/^1[0-9][0-9]{9}$/.test(phone)){
					alert('手机格式错误！');
					return false;
				}
				var params={
					name:name,
					grade:grade,
					phone:phone,
					content:'身份:'+type+' 地区:'+province
				};
				$.ajax({
					dataType:'JSON',
					method:'post',
					url:'active/save/23',
					data:params,
					success:function(json){
						if(json.code == 0){
							alert('您的信息已提交，请耐心等候');
						}else{
							alert('您的信息已提交，请耐心等候');
						}
					},
					error:function(json){
						alert('您的信息已提交，请耐心等候')
					}
				})
			}

            set_ajax({position: 1, elm: '#form1 .btn_i', fn: one});
            set_ajax({position: 2, elm: '#form2 .btn_i', fn: two});
		})
	</script>
</html>

