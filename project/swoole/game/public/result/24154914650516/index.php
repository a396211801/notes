
<!DOCTYPE Html>
<html style="font-size: 50px;">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="application-name" content="baoxian.163.com" />
<meta name="viewport" content="width=device-width,target-densitydpi=high-dpi,initial-scale=1.0,maximum-scale=1.0,user-scalable=no,minimal-ui" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta content="telephone=no" name="format-detection" />
<meta name="renderer" content="webkit" />
<meta name="keywords" content="黑牛保险,滴滴出行,出行红包,互联网保险,平安,泰康,大都会,招商信诺,百年人寿,交通意外,重大疾病,健康保障,问卷调查" />
<meta name="description" content="参与黑牛保险的领免费保障送百元滴滴红包，您可以获得最高100万的公共交通意外保障，同时您还可以获得由滴滴出行提供的100元出行红包一份。黑牛保险是您保险的互联网私人订制平台，倡导安全健康合理的保险规划，为您的生活保驾护航。" />
<title>领免费保障送百元滴滴红包</title>
<link rel="stylesheet" href="https://static.heiniubao.com/static/public/public_files/css/wap_base.css"/>
<link rel="stylesheet" href="https://static.heiniubao.com/static/public/public_files/css/wap_cutscenes.css"/>
<link rel="stylesheet" href="https://static.heiniubao.com/static/activity/panding/didi/css/wap.css?v=1.0.1" />
<script>
(function (doc, win) {
var docEl = doc.documentElement,
resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
recalc = function () {
var clientWidth = docEl.clientWidth;
if (!clientWidth) return;
if(clientWidth>=750){
docEl.style.fontSize = '100px';
}else{
docEl.style.fontSize = 100 * (clientWidth / 750) + 'px';
}
};
if (!doc.addEventListener) return;
win.addEventListener(resizeEvt, recalc, false);
doc.addEventListener('DOMContentLoaded', recalc, false);
})(document, window);
</script>
</head>
<body>
<!-- 顶部banner -->
<div class="wrap head">

<img src="https://static.heiniubao.com/static/activity/panding/didi/images/header_banner_DDH8.png" alt="" />

</div>
<!-- 小标题 -->
<div class="wrap">
<p class="have-get">已有 <b id="totalNum" class="animated"></b> 人免费领取</p>
<h3 class="form-title">完善信息，免费领取出行大礼包</h3>
</div>
<!-- 表单 -->
<div class="wrap">
<form id="form-box" class="form-box" method="post">
<input id="is-show-captcha" type="hidden" value="False">
<input type="hidden" name="policy_code" value="DDH8" />
<input type="hidden" name="channel" value="tuiaddcpc1">
<input type="hidden" name="subchannel" value="tuiaddcpc1">
<input type="hidden" name="path" value="" id="locationPath">

<!-- 弹窗验证码 -->
<input id="captcha" class="captcha" type="hidden" name="captcha">
<input name="" id="random" name="r" value="" type="hidden" />
<input name="token" id="token" value="" type="hidden" />

<ul>
<li>
<label>您的姓名</label>
<input class="input-text" type="text" name="name" id="name" value="" placeholder="2~20个汉字" />
</li>

<li>
<label>手机号码</label>
<input class="input-text" maxlength="11" type="tel" name="mobile" id="mobile" value="" placeholder="用于接收保单凭证和滴滴红包" />
</li>

<li>
<label>身份证号</label>
<input class="input-text" maxlength="18" type="text" name="idCard" id="idCard" value="" placeholder="用于领取出行保障" />
</li>
<li class="submit">
<a id="judge-btn" class="judge-btn active" href="javascript:;">免费领取 2 份好礼</a>
</li>
</ul>
<p class="note">* 后续会有保险公司电话联系您确认<a id="free-insurance-btn" href="#insurance">免费险</a>事宜</p>
<div class="agree-box">
<input id="agree-btn" class="agreen-btn" type="checkbox" checked />
<label for="agree-btn"> 我已经阅读</label><span id="activity-rules-btn">活动规则</span>和<span id="user-agreement-btn">用户协议</span>。
</div>
</form>
</div>
<!-- 保障详情表格-->
<div class="wrap">
<div class="insurance-title"><span>免费保险详情</span></div>
</div>
<div class="wrap">
<div class="table-box">
<div class="period-age clx">
<span class="period fl">保期：30天</span>
<span class="age fr">可投保年龄：25-50周岁</span>
</div>
<table class="table-msg">
<thead>
<tr>
<td colspan="2">大都会人寿交通综合意外保障</td>
</tr>
</thead>
<tbody>
<tr>
<td class="td-l">保障内容</td>
<td class="td-r">最高保额</td>
</tr>

<tr>
<td class="td-l">一般意外身故/伤残</td>
<td class="td-r">10万</td>
</tr>

<tr>
<td class="td-l">航空意外身故/伤残</td>
<td class="td-r">50万</td>
</tr>

<tr>
<td class="td-l">水陆公共交通意外身故/伤残</td>
<td class="td-r">30万</td>
</tr>

<tr>
<td class="td-l">意外住院医疗保险金</td>
<td class="td-r">1000</td>
</tr>

<tr>
<td class="td-l">自驾(驾驶+乘坐)意外身故/伤残</td>
<td class="td-r">5000</td>
</tr>

<tr>
<td class="td-l">法定节假日意外身故/伤残</td>
<td class="td-r">5000</td>
</tr>

</tbody>
</table>
</div>
</div>
<!-- 底部 -->
<div class="wrap">
<div class="footer">

</div>
</div>
<!-- 弹窗 -->
<div id="mask" class="mask"></div>
<!-- 活动规则 -->
<div id="activity-rules-box" class="popup-box activity-rules-box">
<span class="popup-close-btn popup-msg-close"></span>
<h3 class="popup-title">活动规则</h3>
<div class="popup-msg activity-rules-msg">


<p><span idx="1">1.</span>参与活动即可获得100元的滴滴出行红包，包括快车、专车、出租车等红包；</p >


<p><span idx="1">2.</span>每个客户受赠交通意外保障以一份为限，保险对象为25-50周岁，身体健康，能正常工作和劳动；</p >


<p><span idx="1">3.</span>本保险仅提供电子保单，保单生效后客户会自动收到短信通知；</p >


<p><span idx="1">4.</span>投保成功后，请保存好电子保单号，以方便查询及理赔；</p >


<p><span idx="1">5.</span>保险公司将有工作人员电话回访，为您确认免费保障生效事宜；</p >


<p><span idx="1">6.</span>本介绍内容仅供参考，详细内容请参阅保险合同之保险条款，并以保险合同之规定内容为准。</p >

</div>
</div>
<!-- 用户协议 -->
<div class="popup-box" id="user-agreement-box">
<span class="popup-close-btn popup-msg-close"></span>
<h3 class="popup-title">用户协议</h3>
<div class="popup-msg" id="user-agreement-msg"></div>
</div>
<!-- 过场动画 -->
<div id="cutscenes_mask" class="cutscenes_mask"></div>
<div id="cutscenes_box" class="cutscenes_box">
<div id="red_packet_animation" class="animation_element">
<div class="gold_img gold_img_01"></div>
<div class="gold_img gold_img_02"></div>
<div class="gold_img gold_img_03"></div>
<div class="box_bgimg_red_packet_open"></div>
<div class="box_bgimg_red_packet"></div>
<div class="star_atmosphere"></div>
</div>
<div id="travel_animation" class="animation_element">
<div class="company_logo">
<img id="cutscenes-img" src="https://static.heiniubao.com/static/images/cutscenes/wap_ZM.png" alt="" class="md">
</div>
<div class="box_bgimg_travel">
<span class="row row_01"></span>
<span class="row row_02"></span>
<span class="row row_03"></span>
<span class="row row_04"></span>
<div class="pen"></div>
</div>
</div>
<p id="note" class="note tc">滴滴红包生成中...</p>
<div class="progress_bar md">
<div class="bar_active"></div>
</div>
</div>
<input id="init-msg" type="hidden" value="滴滴红包生成中...">
<input id="packet-msg" type="hidden" value="滴滴红包已生成">
<input id="security-msg" type="hidden" value="出行保障生成中...">
<!-- 弹窗验证码 -->
<div id="mask-captcha" class="mask"></div>
<div id="captcha-box" class="captcha-box">
<div id="captcha-close-btn" class="captcha-close-btn"></div>
<h3 class="captcha-title">请输入4位验证码</h3>
<div class="captcha-text clx">
<div class="fl text">发送至<span id="captcha-phone-num"></span></div>
<input type="button" id="send" class="send fr" value="获取验证码">
</div>
<div id="captcha-num-box" class="captcha-num-box clx">
<span class="input-captcha-item fl"></span>
<span class="input-captcha-item fl"></span>
<span class="input-captcha-item fl"></span>
<span class="input-captcha-item fl"></span>
</div>
<input id="random" value="" type="hidden" />
</div>
<div id="keyboard-box" class="keyboard-box">
<table>
<tr>
<td class="num border-top border-left">1</td>
<td class="num border-top">2</td>
<td class="num border-top border-right">3</td>
</tr>
<tr>
<td class="num border-left">4</td>
<td class="num">5</td>
<td class="num border-right">6</td>
</tr>
<tr>
<td class="num border-left">7</td>
<td class="num">8</td>
<td class="num border-right">9</td>
</tr>
<tr>
<td class="border-bottom border-left bg-col">&nbsp;</td>
<td class="num border-bottom">0</td>
<td class="del border-bottom border-right bg-col"></td>
</tr>
</table>
</div>

<script src="https://yun.duiba.com.cn/h5-tuia/adverter.js"></script>
<script src="https://static.heiniubao.com/static/js/public/library/require.js" data-main="https://static.heiniubao.com/static/activity/panding/didi/js/wap_tongji.js?v=1.0.2" defer async="true"></script>

<script type="text/javascript">
var allCount = 5000000;
function toThousands(num) {
var result = [ ], counter = 0;
num = (num || 0).toString().split('');
for (var i = num.length - 1; i >= 0; i--) {
counter++;
result.unshift(num[i]);
if (!(counter % 3) && i != 0) { result.unshift(','); }
}
return result.join('');
}
document.getElementById("totalNum").innerText = toThousands(allCount);
</script>
<div style="display:none;">
<script type="text/javascript" src="https://static.heiniubao.com/static/js/statistic.js"></script>
<noscript><p><img src="//121.40.16.150/piwik/piwik.php?idsite=2" style="border:0;" alt="" /></p ></noscript>
</div>
</body>
</html>

<script>
  // document.querySelector("#judge-btn").onclick=function(){
  //   alert(1)
  //   //https://www.100alpha.com/activity_mgb/tuiaddcpc1?a_cid=null&a_tuiaId=taw-24154914650516
  // }
</script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="/js/common_qg.js"></script>
<script>

    setTimeout(function () {

        set_ajax({position: 1, elm: '#judge-btn', href: 'https://www.100alpha.com/activity_mgb/tuiaddcpc1?a_cid=null&a_tuiaId=taw-24154914650516'});

    }, 200)
</script>