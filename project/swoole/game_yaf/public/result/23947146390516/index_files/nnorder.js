function setCookie(name,value,expires){
var exp=new Date();
exp.setTime(exp.getTime()+expires*24*60*60*1000); //天
document.cookie=name+"="+escape(value)+";expires="+exp.toGMTString();//+";domain=.com;path=/";
} 
function readcookie(name){
	var oRegex=new RegExp(name+'=([^;]+)','i');
	var oMatch=oRegex.exec(document.cookie);
	if(oMatch&&oMatch.length>1)return unescape(oMatch[1]);
	else return '';
}

//获取url中"?"符后的字串
function GetRequest() {
	var url = location.search;
	var theRequest = new Object();
	if (url.indexOf("?") != -1) {
		var str = url.substr(1);
		strs = str.split("&");
		for(var i = 0; i < strs.length; i ++)theRequest[strs[i].split("=")[0]]=unescape(strs[i].split("=")[1]);
	}
	return theRequest;
}

//获取url中"?"符后的字串
function GetRequesta(aaa) {
	var bbb= aaa.indexOf('?');
	var url=aaa.substr(bbb);
	var theRequest = new Object();
	if (url.indexOf("?") != -1) {
		var str = url.substr(1);
		strs = str.split("&");
		for(var i = 0; i < strs.length; i ++)theRequest[strs[i].split("=")[0]]=unescape(strs[i].split("=")[1]);
	}
	return theRequest;
}

function getfrom(){
var myDate = new Date();
myDate.getYear();
myDate.getFullYear();
myDate.getMonth();
myDate.getDate();
myDate.getDay();
myDate.getTime();
myDate.getHours();
myDate.getMinutes();
myDate.getSeconds();
var truedate = myDate.getMonth()+1;
var nnnum=""; 
for(var i=0;i<3;i++)nnnum+=Math.floor(Math.random()*10);

document.form.orderid.value='no.'+myDate.getFullYear()+truedate+myDate.getDate()+myDate.getHours()+myDate.getMinutes()+myDate.getSeconds()+nnnum;

var Request = new Object();
Request = GetRequest();
var fromurl,fromurla,nowurl,nowurla;
fromurl = document.referrer;
fromurla = Request['f'];
nowurl = document.URL;
nowurla = Request['n'];

if (nowurla != null && nowurla != "") nowurl=nowurla;
if (fromurla != null && fromurla != "")fromurl=fromurla;
//alert(nowurl);

var getstr = new Object();
getstr = GetRequesta(nowurl);
var gzid=getstr["gzid"];
//alert(getstr["gzid"]);

var getci=new Object();
getci = GetRequesta(decodeURI(decodeURI(fromurl)));

if (fromurl != null && fromurl != "") {
	setCookie("fromurl",fromurl,7)
	document.write("<input type=hidden name=fromurl value='"+fromurl+"'>");
}else{
	document.write("<input type=hidden name=fromurl value='"+readcookie("fromurl")+"'>");
}

if (nowurl != null && nowurl != "") {
	setCookie("nowurl",nowurl,7)
	document.write("<input type=hidden name=nowurl value='"+nowurl+"'>");
}else{
	document.write("<input type=hidden name=nowurl value='"+readcookie("nowurl")+"'>");
}

var keyword="";
if (keyword != null && keyword != "") {
	setCookie("keyword",keyword,7)
	document.write("<input type=hidden name=keyword value='"+keyword+"'>");
}else{
	document.write("<input type=hidden name=keyword value='"+readcookie("keyword")+"'>");
}

if (gzid != null && gzid != "") {
	setCookie("gzid",gzid,7)
	document.write("<input type=hidden name=gzid value='"+gzid+"'>");
}else{
	document.write("<input type=hidden name=gzid value='"+readcookie("gzid")+"'>");
}
}