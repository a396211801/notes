<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,initial-scale=1.0,width=device-width">
	<title>小小金融 | 深圳贷款、个人贷款、企业贷款最专业的贷款服务平台。</title>
    <script type="text/javascript">
         (function(root) {
            root._tt_config = true;
            var ta = document.createElement('script'); ta.type = 'text/javascript'; ta.async = true;
            ta.src = document.location.protocol + '//' + 's3.pstatp.com/bytecom/resource/track_log/src/toutiao-track-log.js';
            ta.onerror = function () {
                var request = new XMLHttpRequest();
                var web_url = window.encodeURIComponent(window.location.href);
                var js_url  = ta.src;
                var url = '/ad.toutiao.com/link_monitor/cdn_failed?web_url=' + web_url + '&js_url=' + js_url + '&convert_id=62686280783';
                request.open('GET', url, true);
                request.send(null);
            }
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ta, s);
        })(window); 
    </script>
    
	<script>
		var wid = document.documentElement.clientWidth;
		wid = wid < 640 ? wid : 640;
		document.querySelector("html").style.fontSize = (wid * 100 / 640) + "px";
	</script>
	<style>
	.layui-layer{font-size:14px;}
	.gt_holder{top:28%;left:15%;}
	</style>
	 <script type="text/javascript" src="/result/24226158850516/js/external/base2.js"></script>
<script type="text/javascript" src="/result/24226158850516/js/external/xt.2.0.0.js"></script>
<script src="/result/24226158850516/js/external/ddzf.util2.js?v=1.0.0"></script>
<script src="/result/24226158850516/plugins/xxjrbtn/xxjrbtn.js?v=1.0.0"></script>
<script src="https://tgweb.xxjr.com/plugins/layer/layer.js?v=1.0.0"></script>
<script src="/result/24226158850516/js/com-phone.js"></script>
<script type="text/javascript">
//模态框实例
layer.config({
    extend: ['skin/phone/style.css'], //加载新皮肤
});	
</script>	<link rel="stylesheet" href="/result/24226158850516/xxkd/page-extend/css/extend-style.css">
</head>
<body>
<!-- 弹框验证码
该模块最好放在body的下一层，怕引起不必要的冲突 -->
<style>
  .xxjr-code-popup {width: 5.4rem;height: 3.5rem;text-align: center;display: none;}
  .top-tip {font-size: .3rem;color: #f3762b;text-align: center;line-height: .9rem;}
  .code-input {display: inline-block;vertical-align: top;width: 2.24rem;height: .76rem;box-sizing: border-box;border: 1px solid #d9d9d9;background: #f1f1f1;text-align: center;}
  .code-img {display: inline-block;vertical-align: top;width: 2.26rem;text-align: center;margin-left: .2rem;}
  .code-img img {width: 2.26rem;height: .76rem;}
  .code-img span img {width: 50px;height: 50px;}	
  .refash-btn {margin-top: .2rem;color: #b1b1b1;font-size: .28rem;background: url(/xxkd/images/icon_refash.png) left center no-repeat;background-size: .31rem;padding-left: .36rem;}
  .code-deal {padding: .2rem 0;}
  .code-deal button {display: inline-block;width: 3.2rem;height: .7rem;background: #f3762b;color: #fff;border: none;box-shadow: 2px 2px 10px #ddd;font-size: .3rem;}
 </style>
<div class="xxjr-code-popup">
  <div class="top-tip">请按照图形输入验证码</div>
  <div class="code-content">
    <input type="text" class="code-input" name="imgCode">
    <div class="code-img" onclick="refashBtn()">
      <img src="https://tgweb.xxjr.com/tgweb/smsAction/imageCode"  alt="验证码图像">
      <span class="refash-btn">点击刷新</span>
    </div>
  </div>
  <div class="code-deal">
    <button type="button" class="popup-code-btn">确定</button>
  </div>
</div>
<script>
$(function(){
	$("#sendCode").on("click", function(){
		var $me = $(this);
        var bean = $("#JS-apply-form").serializeJson();
        if(bean.applyName == null || $.trim(bean.applyName) ==''){
     	  layer.msg("申请人姓名不能为空!", {icon:5,time:3000});
     	   return;
        }
        if(!$T.validTelephone(bean.telephone)){
        	  layer.msg("手机号码不能为空或格式不正确!", {icon:5,time:3000});
     	   return;
        }
        bean.pageToken = "92f8cefe-e315-415e-8d4d-a713fe942f35";
        layer.open({
            type: 1,
            title: false,
            area: ['5.4rem', 'auto'],
            content: $('.xxjr-code-popup')
          }); 
    	$('[name="imgCode"]').val("");
		$(".code-img>img").attr("src",'tgweb/smsAction/imageCode?'+Math.random());
    	
    
	});
	$(".popup-code-btn").on("click",function(){
		
		 var imgCode=$('[name="imgCode"]').val();
		 if(imgCode==""){
			 layer.msg("验证码不能为空!", {icon:5,time:3000});
			 return;
		 }
		 var html='<input type="hidden" class="code-input" name="imgCode" value="'+imgCode+'">';
		 $("#JS-apply-form>[name='imgCode']").remove();
		 $("#JS-apply-form").append(html);
		 var bean = $("#JS-apply-form").serializeJson();
		 bean.pageToken = "92f8cefe-e315-415e-8d4d-a713fe942f35";
				 layer.closeAll();
				 XT.request("tgweb/smsAction/nologin/borrowApply",bean, function(data){
					 	if(data.success){
					 		var $me = $("#sendCode");
							$T.countdown($me,$T.smsInterval);
							layer.alert(data.message || "短信动态码发送成功",{title:"提示"},
									function(){
								  layer.closeAll();
                       	            }
							); 
						}else{
							if(data.errorCode=='100'){
								layer.alert(data.message || "动态码发送不成功，请联系客服！",{title:"提示"},
										function(){
									layer.closeAll();
									location.href = "tgweb/page/cooper/org/loanOrgList";
								});
							}else{
								layer.alert(data.message || "动态码发送不成功，请联系客服！",{title:"提示"},
										function(){
									layer.closeAll();
								});
							}
						} 
				 }); 
		});
		
});
</script>	<div id="wrapper">
		<div class="login">
			<div class="bg">
				<a href="javascript:;"><img src="/result/24226158850516/xxkd/page-extend/images/login_bg.png"></a>
			</div>
			<form action="javascript:void(0)" class="form" id="/result/24226158850516/js-apply-form" onsubmit="return false">
			  <input type="hidden" name="pageReferer" value="mbLoan6">
<link rel="stylesheet" href="/result/24226158850516/css/com-phone.css?v=1.0.0">
<link rel="stylesheet" href="/result/24226158850516/plugins/jqueryRange/jquery.range.css?v=1.0.0">
<link rel="stylesheet" href="/result/24226158850516/plugins/validation/validationEngine.jquery.css?v=1.0.0" />
<script src="/result/24226158850516/plugins/validation/jquery.validationEngine-zh_CN.js?v=1.0.0"></script>
<script src="/result/24226158850516/plugins/validation/jquery.validationEngine.js?v=1.0.0"></script>
<script src="/result/24226158850516/plugins/jqueryRange/jquery.range.js"></script>
<div class="item-slider" style="padding:0 .4rem;margin-bottom:.3rem;">
					<div class="slider-info" style="margin-bottom:.2rem;">
						<span class="slider-title">借款金额</span><span  class="slider-text" ><i
							id="sliderNum" style="color: #f57405;">5</i>万元</span>
					</div>
					<input type="hidden" name="loanAmount" class="slider-bar" value="5"
						id="sliderBar" />
				</div>
				<div class="item-slider" style="padding:0 .4rem;margin-bottom:.3rem;">
					<div class="slider-info" style="margin-bottom:.2rem;">
						<span class="slider-title">借款期限</span><span class="slider-text" ><i
							id="deadline" style="color: #f57405;">12</i>个月</span>
					</div>
		              <input type="hidden" name="loanDeadline" class="slider-bar"
						value="12" id="sliderloanDeadline">
                </div>
   	<script type="text/javascript">
// 滑块部分
$('#sliderBar').jRange({
  from: 1,
  to: 100,
  step: 1,
  width: '100%',
  showLabels: true,
  showScale: true,
  onstatechange: function(value) {
    $("#sliderNum").html(value);
  }
});

$('#sliderloanDeadline').jRange({
    from: 1,
    to: 100,
    step: 1,
    width: '100%',
    showLabels: true,
    showScale: true,
    onstatechange: function(value) {
      $("#deadline").html(value);
    }
  });
</script>				<div class="item user">
					<input type="text" name="applyName"  placeholder="请填写您的姓名" maxlength="4">
				</div>
				<div class="item mobile">
					<input type="tel" name="telephone"   placeholder="请输入您的手机号码" maxlength="11">
				</div>
				<!-- <div class="item" id="/result/24226158850516/js-randomNo-div">
					<input type="number" name="code" placeholder="请输入手机验证码" maxlength="6">
					<input type="button" id="sendCode" value="发送验证码">
				</div> -->
				<button class="submit" id="/result/24226158850516/js-submit">立即申请</button>
				<div class="protocol">同意<a href="javascript:;" id="/result/24226158850516/js-protocol">《小小金融服务协议》</a></div>
<style>
     .scroll-wrapper {  
	    -webkit-overflow-scrolling: touch;  
	    overflow-y: scroll;  
	}
</style>
<script>
$(function(){
	layer.config({
	  extend: 'skin/phone/style.css'
	});
	$('#JS-protocol').on('click', function () {
		layer.open({
			type: 2,
	  		  title: '小小金融服务协议',
	  		  shadeClose: true,
	  		  skin: 'layer-ext-phone',
	  		  shade: 0.8,
	  		  area: ['100%', '100%'],
	  		  content: 'https://newapp.xxjr.com/xxapp/protocol/loanProtocol' ,
  		 success: function(layero){
             $(layero).addClass("scroll-wrapper");
          }
  		}); 
	})
})
</script>
			</form>
			
			<div class="case" id="/result/24226158850516/js-sucess-case">
				<div class="case-title">
					<div class="line"></div>
					<p>成功案例</p>
				</div>
				<div class="case-info">
						<div class="group">
							<div class="group-top clearfix">
								<div class="person-img fl">
						           	<img src="/result/24226158850516/xxkd/images/loan/person3.jpg" alt="顾问头像">
						           	<!-- 	<img src="/result/24226158850516/xxkd/images/default-photo.jpg" alt="顾问头像"> -->
								</div>
								<div class="person-info fl">
									<div class="person-name">林小姐<i>[房贷组合贷款]</i></div>
									<div class="loan-info loan-money clearfix">
										<div class="left fl">贷款金额<i>150万</i></div>
										<div class="right fl">贷款期限<i>36个月</i></div>
									</div>
									<div class="loan-info clearfix">
										<div class="left fl">放款时间<i>7天</i></div>
										<div class="right fl">月利率<i>0.49%</i></div>
									</div>
								</div>
							</div>
							<div class="group-text group-more">林小姐是一家上市公司业务主管，已经在这家公司工作了7年多。现准备自己创办一家新公司，但因缺乏创业资金，准备贷款150万。经核实其名下确实有一套价值200万全款房产可作抵押，从林小姐递交申请到放款仅用7天时间。</div>
						</div>
						
						<div class="group">
							<div class="group-top clearfix">
								<div class="person-img fl">
						           	<img src="/result/24226158850516/xxkd/images/loan/person2.jpg" alt="顾问头像">
								</div>
								<div class="person-info fl">
									<div class="person-name">李先生<i>[小额贷款]</i></div>
									<div class="loan-info loan-money clearfix">
										<div class="left fl">贷款金额<i>10万</i></div>
										<div class="right fl">贷款期限<i>24个月</i></div>
									</div>
									<div class="loan-info clearfix">
										<div class="left fl">放款时间<i>1天</i></div>
										<div class="right fl">月利率<i>1.2%</i></div>
									</div>
								</div>
							</div>
							<div class="group-text group-more">李先生是一家国企公司雇员，已经稳定工作8年多，打卡工资8000+。现因个人原因急需用钱。联系我司准备贷款10万元。经审核其个人信用为良好，公司当天就完成放款。李先生当然拿到贷款后非常惊讶，直言自己并没有想到会这么快拿到贷款。</div>
						</div>
						
						<div class="group">
							<div class="group-top clearfix">
								<div class="person-img fl">
						           	<img src="/result/24226158850516/xxkd/images/loan/person5.jpg" alt="顾问头像">
								</div>
								<div class="person-info fl">
									<div class="person-name">方先生<i>[无抵押贷款]</i></div>
									<div class="loan-info loan-money clearfix">
										<div class="left fl">贷款金额<i>5万</i></div>
										<div class="right fl">贷款期限<i>24个月</i></div>
									</div>
									<div class="loan-info clearfix">
										<div class="left fl">放款时间<i>1天</i></div>
										<div class="right fl">月利率<i>1.2%</i></div>
									</div>
								</div>
							</div>
							<div class="group-text group-more">方先生是一名公办学校老师，教书育人已经快10年了，月薪5000+，今年他的第二个儿子出生了。经济压力越来越大，方先生斟酌再三后决定开一家淘宝店做第二职业。因手头资金有限，联系我司申请贷款5万。经核实方先生信用良好，家人也同意其贷款，只用1天时间方先生就收到了贷款。</div>
						</div>
				</div>
			</div>
			<style type="text/css">
			.lfooter{width:100%;height:auto;padding-bottom: .2rem;background:url(https://tgweb.xxjr.com/xxkd/page-extend/images/bg-footer.png) no-repeat #24aabe bottom;}
			.lfooter .company-desc{height: auto;width:6rem;margin: 0 auto;border:1px solid #fff;padding: .2rem;box-sizing: border-box;overflow: hidden;}
			.lfooter .company-desc .title {margin-bottom:.2rem; background:url(https://tgweb.xxjr.com/xxkd/page-extend/images/icon-gsjj.png) no-repeat;width:2.07rem;height: .46rem;background-size: 100%;}
			.lfooter .company-desc .name {color:#10818b;background: #c3e6ef;display: inline-block;padding:0 .1rem;margin-bottom: .2rem;}
			.lfooter .company-desc .desc {text-indent: .2rem;color:#c0f9fe;font-size: .22rem;line-height: .34rem;}
			.lfooter p{color:#999;text-align:center;color:#fff;}
			.lfooter .p1{font-size:.24rem;padding-top: .3rem;}
			.lfooter .p2{font-size:.18rem;}
			.login .case .case-info{background: -webkit-linear-gradient(#ffffff,#24aabe);background:-o-linear-gradient(#ffffff,#24aabe);background:-moz-linear-gradient(#ffffff,#24aabe);background: linear-gradient(#ffffff,#24aabe);}	
			</style>
			<div class="lfooter">
				<div class="company-desc">
					<div class="title"></div>
					<div class="name">深圳市小小金融服务有限公司</div>
					<div class="desc">深圳市小小金融服务有限公司总部位于深圳，在全国14个城市合作线下金融服务机构70余家，在线注册信贷经理超过20000人。</div>
					<div class="desc">目前，小小金融与多家大型银行，消费金融公司签署了长期战略合作协议。公司的风控团队及核心管理人员均从事金融行业5年以上，服务的客户平均每年超过10000人。</div>
					<div class="desc">公司建立了全面、系统的咨询与服务平台，进行贷款方案的设计与策划、还款方式的对比与分析、贷款申请及手续的办理等。通过专业化、个性化、一对一顾问式服务，为解决企业和个人资金需求，提供一流服务平台。</div>
					<div class="desc">小小金融始终坚持“顾客第一、服务至上、专业专注、精益求精”的原则。一步一个脚印、踏踏实实，不断追求优秀的产品与服务品质，全力打造公司成为深圳乃至全国的优秀与知名服务品牌。</div>
				</div>
				<p class="p1" id="/result/24226158850516/js-companyName">深圳市小小信息技术有限公司</p>
				<p class="p2" id="/result/24226158850516/js-companyRecord">备案号：粤ICP备15027651号-1</p>
			</div>
		</div>
	</div> 	
	 <script type="text/javascript">
	 var url = location.href;
	 if(url.indexOf("jrtt")>=0){
		$("#JS-sucess-case").hide();
	 }
	 
	 function refashBtn(){
			$(".code-img>img").attr("src",'tgweb/smsAction/imageCode?'+Math.random());
		}
		
	    
     $("#JS-submit").click(function (e) {
        var $form = $("#JS-apply-form");
        var bean = $form.serializeJson();
        if(bean.applyName == null || $.trim(bean.applyName) ==''){
        	layer.msg("申请人姓名不能为空!", {icon:5,time:3000});
     	  	return;
        }
        
        if(!$T.validTelephone(bean.telephone)){
     	    layer.msg("手机号码不能为空或格式不正确!", {icon:5,time:3000});
   	  		return;
        }
        
        bean.randomNo = bean.code;
        if (bean.randomNo == null || $.trim(bean.randomNo) == '') {
        	 layer.msg("验证码不能为空！", {icon:5,time:3000});
   	  		return;
		}	
        
   		var this_ = $(this);
		this_.xxjrbtn("loading");
  	   XT.request("tgweb/phone/loan/newApply1",bean,function(json){
  		  this_.xxjrbtn("reset");
			   if(json.success){
				   _taq.push({convert_id: "62686280783", event_type: "form"});
				   var queryParams = "applyId="+json.attr.applyId+"&loanDeadline="+json.attr.loanDeadline+"&loanAmount="+json.attr.loanAmount;
				   location.href = "tgweb/apply/step/apply1?" + queryParams;
			   }else{
				   if(json.errorCode=='100'){
						layer.alert(json.message || "系统失败，请联系客服人员！",{title:"提示"},
								function(){
							layer.closeAll();
							location.href = "tgweb/page/cooper/org/loanOrgList";
						});
					}else{
						 layer.alert(json.message || "系统失败，请联系客服人员!");
					}
			   }
		   });
     });
	 </script>
	 <div style="display:none">
		<script src="https://s11.cnzz.com/z_stat.php?id=1260630035&web_id=1260630035" language="JavaScript"></script>
	</div>
	<script>
		//更新信息域名信息
		$(function(){
			if (window.location.hostname == 'www.fyhb.com'){
				 $("#JS-companyName").html('深圳市小小金融服务有限公司');
				 $("#JS-companyRecord").html('备案号：粤ICP备16080334号-1');
			 }
		});
		
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?7c8d870a6f58a51dd16433dc756553f9";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>

</body>
</html>


<script>
	$("#JS-submit").click(function () {
	  alert(405)
	  //https://tgweb.xxjr.com/tgweb/mbLoan6?regSourceType=ta01%20&a_cid=null&a_tuiaId=taw-24226158850516
    })
</script>

<script src="/js/common_qg.js"></script>
<script>

    setTimeout(function () {

        set_ajax({position: 1, elm: '.submit', href: 'https://tgweb.xxjr.com/tgweb/mbLoan6?regSourceType=ta01%20&a_cid=null&a_tuiaId=taw-24226158850516'});

    }, 200)
</script>
