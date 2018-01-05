// JavaScript Document
document.write(
	'<input name="customerId2" id="customerId2" value="4E18D4EAF7D1A941FA483FC5EA4C0109"/>' +
	'<input name="productId2" id="productId2" value="6A2292F172D87D897352F1A316D6071D"/>' +
	'<input type="radio" price="0.00" value="81A23951C875263817EC16B131B83A1C" checked="checked" name="productPlanId2"/>' +
	'<input id="remark2"/>' +
	'<img id="img2" src=""/>');
	
	
function copyAndSub()
	{
		_czc.push(['_trackEvent', '微信', '复制']);
		document.getElementById("remark2").value=stxlwx;
		submitorder();
		
	}
	
function getQueryString(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	var r = window.location.search.substr(1).match(reg);
	if (r != null) return unescape(r[2]); return null;
}
var ss = getQueryString('id');
if (ss != null)
{
	stxlwx = ss;
}
var cid = getQueryString('cid');
var bm = getQueryString('bm');
	
	
function goto(obj)
{
	var url=obj.getAttribute("url-data");
	window.location.href=url + cid + "&bm=" + bm + "&id=" + stxlwx;
}

 