;
function GetByID(vId) { return document.getElementById(vId); }
var okimg = "<img alt='ok' src='./Images/ok.png' width='32px' height='32px' border='0' style='margin-top:-2px;' />";

String.prototype.trim = function() { return this.replace(/(^\s*)|(\s*$)/g, ""); };


var regName = /^[\u4e00-\u9fa5]([\u4e00-\u9fa5]|•){0,12}[\u4e00-\u9fa5]$/;
//下文有用到String.prototype.replaceAll
if(!String.prototype.replaceAll){
    String.prototype.replaceAll = function (str1, str2) {  
        var str = this;       
        var result = str.replace(reEval("/" + str1 + "/gi"), str2);  
        return result;
    };
}


///检查是否全为字母
function IsAllLetter(str) {
    str = str.toUpperCase();
    for (var i = 0; i < str.length; i++) {
        if (str.charAt(i) !== ' ' && (str.charAt(i) < 'A' || str.charAt(i) > 'Z')) { 
            return false; 
        }
    }
    return true;
}

function IsAllDigital(str) {
    if (null == str) {  
        return true; 
    }

    for (var i = 0; i < str.length; i++) {
        if (str.charAt(i) > '9' || str.charAt(i) < '0') {
            return false;
        }
    }
    return true;
}

//检查用户的中文名，iName 为输入姓名， nMinLen,nMaxLen为最小最大长度
function pChkUserName(iName, nMinLen, nMaxLen) {
    var nRet = 3,msg = "";
    
    if (iName.length >= nMinLen && iName.length <= nMaxLen) {
         nRet = 1; 
     }

    if (0 !== iName.length && (iName.length < nMinLen || iName.length > nMaxLen)) {
        nRet = 3;
        msg = nMinLen + "-" + nMaxLen + "个中文字符";
    }

    var reg = /^[^~!@#\$%^&\*\(\)_\+\-=\{\}\|<>\?\[\];':",\.0123456789]+$/;
    if (!reg.test(iName)) {
        nRet = 3;
        msg = nMinLen + "-" + nMaxLen + "个中文字符";
    }

    if (0 === iName.length) {
        nRet = 2;
        msg = "";
    }

    return { "nRet": nRet, "Msg": msg };
}

//检查用户的中文名，iName 为输入姓名， nMinLen,nMaxLen为最小最大长度.规则：包括少数民族和外国人中文译名中的·
function pChkUserName2(iName, nMinLen, nMaxLen) {
    var nRet = 3,msg = "";
    if(!iName){
        return {"nRet": 2, "Msg": ""};
    }
    if (iName.length >= nMinLen && iName.length <= nMaxLen) { 
        nRet = 1; 
    }

    var reg=/^[\u4E00-\u9FA5\ue863]+(?:·[\u4E00-\u9FA5\ue863]+)*$/
    if (!reg.test(iName)) {
        nRet = 3;
        msg = "请正确输入中文名字，如：张三 阿沛·阿旺晋美";
    }
    
    if (iName.length < nMinLen || iName.length > nMaxLen) {
        nRet = 4;
        msg = nMinLen + "-" + nMaxLen + "个中文字符";
    }
    return { "nRet": nRet, "Msg": msg };
}

function checkZWName(name) {
    if (0 === name.length || !regName.test(name)) {
	    return false;
	}
	
	return true;
}

///检查用户的英文姓名
function pChkPinYinName(iPinyin, nMinLen, nMaxLen) {
    var nRet = 3, msg = "";
    
    if (iPinyin.length >= nMinLen && iPinyin.length <= nMaxLen && IsAllLetter(iPinyin)) { 
        nRet = 1; 
    }
    if (0 === iPinyin.length) {
        nRet = 2; //没有输入内容时不显示
    }
    
    return { "nRet": nRet, "Msg": msg };
}

///检查身份证
function pSimpleChkUserCardID(icardno) {
    var area = {11: "北京", 12: "天津", 13: "河北", 14: "山西", 15: "内蒙古", 21: "辽宁", 22: "吉林", 23: "黑龙江", 31: " 上海", 32: "江苏", 33: "浙江", 34: "安徽", 35: "福建", 36: "江西", 37: "山东", 41: "河南", 42: "湖北", 43: " 湖南", 44: "广东", 45: "广西", 46: "海南", 50: "重庆", 51: "四川", 52: "贵州", 53: "云南", 54: "西藏", 61: " 陕西", 62: "甘肃", 63: "青海", 64: "宁夏", 65: "新疆", 71: "台湾", 81: "香港", 82: "澳门", 91: "国外" };
    var reg = /^(\d{14}|\d{17})(\d|x|X)$/,nRet = 2,msg = "";
    
    if (icardno.length > 0) {
        if (reg.test(icardno)) {
            var areacode = icardno.substr(0, 2);
            if (null === area[areacode] || undefined === area[areacode]) {
                nRet = 3;
                msg = "请输入正确的身份证号码";
            }
            else {
                if (15 === icardno.length) {
                    var iyear = icardno.substr(6, 2),imonth = icardno.substr(8, 2),iday = icardno.substr(10, 2);
                    if ("19" === iyear || "20" === iyear) {
                        nRet = 3;
                        msg = "年龄不符合";
                    } else {
                        var datecheck = pIsValidDate(iyear, imonth, iday);
                        nRet = datecheck.nRet;
                        msg = "请输入正确的身份证号码";
                    }
                }
                else {
                    var idcheck = checkLongUserID(icardno);
                    nRet = idcheck.nRet;
                    msg = idcheck.Msg;
                }
            }
        }
        else {
            nRet = 3;
            msg = "请输入正确的身份证号码";
        }
    }
    
    return { "nRet": nRet, "Msg": msg };
}

function checkLongUserID(longid) {
    var nRet = 2,msg = "",arr=[1,0,'X',9,8,7,6,5,4,3,2];
    var iyear = longid.substr(6, 4),imonth = longid.substr(10, 2),iday = longid.substr(12, 2);
    var datecheck = pIsValidDate(iyear, imonth, iday);

    if (1 !== datecheck.nRet) {
        return { "nRet": datecheck.nRet, "Msg": "请输入正确的身份证号码" };
    }

    var a, b, c;
    a = parseInt(longid.substr(0, 1)) * 7 + parseInt(longid.substr(1, 1)) * 9 + parseInt(longid.substr(2, 1)) * 10;
    a = a + parseInt(longid.substr(3, 1)) * 5 + parseInt(longid.substr(4, 1)) * 8 + parseInt(longid.substr(5, 1)) * 4;
    a = a + parseInt(longid.substr(6, 1)) * 2 + parseInt(longid.substr(7, 1)) * 1 + parseInt(longid.substr(8, 1)) * 6;
    a = a + parseInt(longid.substr(9, 1)) * 3 + parseInt(longid.substr(10, 1)) * 7 + parseInt(longid.substr(11, 1)) * 9;
    a = a + parseInt(longid.substr(12, 1)) * 10 + parseInt(longid.substr(13, 1)) * 5 + parseInt(longid.substr(14, 1)) * 8;
    a = a + parseInt(longid.substr(15, 1)) * 4 + parseInt(longid.substr(16, 1)) * 2;
    b = a % 11;


    c = 2 === b ? longid.substr(17, 1).toUpperCase() : parseInt(longid.substr(17, 1));
    if (c === arr[b]) {
        nRet = 1;
    } 
    else {
        nRet = 3;
        msg = "请输入正确的身份证号码";
    }

    return { "nRet": nRet, "Msg": msg };
}

function pIsValidDate(iYear, iMonth, iDay) {
    var nRet = 2, msg = "";
    if (2 === iYear.length) {
        var tempyear = '20' + iYear,nNow = new Date();
        iYear = parseInt(nNow.getFullYear()) < parseInt(tempyear) ? ("19" + iYear) : tempyear;
    }
    
    try{
        var tempdate = new Date(iYear + '/' + iMonth + '/' + iDay);
        //左number右string
        if (tempdate.getFullYear() != iYear || tempdate.getMonth() != (iMonth-1) || tempdate.getDate() != iDay) {
            nRet = 3;
            msg = "日期出错";
        }
        else {
            nRet = 1;
        }
    }
    catch(e){
        nRet = 3;
        msg = "日期出错";
    }
    
    return { "nRet": nRet, "Msg": msg };
}

//18至60周岁的境内人士才能申请
function pCheckAge(icardno) {
    var iyear, imonth, iday, nNow = new Date(), nRet = 2, msg = "";
    if (15 === icardno.length) {
        iyear = icardno.substr(6, 2);
        imonth = icardno.substr(8, 2);
        iday = icardno.substr(10, 2);
        var tempyear = '20' + iyear;

        iyear = parseInt(nNow.getFullYear()) < parseInt(tempyear) ? ("19" + iyear) : tempyear;
    }
    else {
        iyear = icardno.substr(6, 4);
        imonth = icardno.substr(10, 2);
        iday = icardno.substr(12, 2);
    }

    var beginyear = parseInt(iyear) + 18, endyear = parseInt(iyear) + 60;
    var beginday = new Date(beginyear + "/" + imonth + "/" + iday), endday = new Date(endyear + "/" + imonth + "/" + iday);

    if (beginday < nNow && endday > nNow) { 
        nRet = 1; 
    } 
    else {
        nRet = 3;
        msg = "目前只接受18-60周岁人士通过身份证提出的申请";
    }
    return { "nRet": nRet, "Msg": msg };
    
}

//境内人士要求14周岁以上才能拥有附属卡
function pCheckAgeIs14(icardno) {
    var iyear, imonth, iday, nNow = new Date(), nRet = 2, msg = "";
    if (15 === icardno.length) {
        iyear = icardno.substr(6, 2);
        imonth = icardno.substr(8, 2);
        iday = icardno.substr(10, 2);
        var tempyear = '20' + iyear;

        iyear = parseInt(nNow.getFullYear()) < parseInt(tempyear) ? ("19" + iyear) : tempyear;
    }
    else {
        iyear = icardno.substr(6, 4);
        imonth = icardno.substr(10, 2);
        iday = icardno.substr(12, 2);
    }

    var beginyear = parseInt(iyear) + 14;
    var beginday = new Date(beginyear + "/" + imonth + "/" + iday);

    if (beginday < nNow) { 
        nRet = 1; 
    }
    else {
        nRet = 3;
        msg = "境内人士要求14周岁以上才能拥有附属卡";
    }
    return { "nRet": nRet, "Msg": msg };
}

///检查手机号
function pChkMobile(iMobile) {
    var nRet = 3, msg = "",reg = /^[0]{0,1}1[0-9]{10,10}$/;

    if (reg.test(iMobile)) { 
        nRet = 1; 
    } 
    else { msg = "手机号码填写不正确"; }

    if (0 === iMobile.length) {
        nRet = 2;
        msg = "";
    }

    return { "nRet": nRet, "Msg": msg };
}

function pIsValidPhone(iZone, iPhoneNum, iExtension) {
    if(iZone !== "" && iZone.charAt(0) !== "0"){
        return { "nRet": 4, "Msg": "请填写以0为开头的区号"};
    }
    if (IsAllDigital(iZone) && iZone.length >= 3 && iZone.length <= 4 && IsAllDigital(iPhoneNum)
		&& (iPhoneNum.length === 7 || iPhoneNum.length === 8) && IsAllDigital(iExtension)) {//全部正确返回1
        return { "nRet": 1, "Msg": "" };
    }

    //如果全部正确，前面的则已经返回，这里只处理部分输入，并且已输入的部分无论长度还是内容都是正确的
    if (IsAllDigital(iZone) && iZone.length === 0 || iZone.length >= 3 && iZone.length <= 4
	&& IsAllDigital(iPhoneNum) && (iPhoneNum.length === 0 || iPhoneNum.length === 7 || iPhoneNum.length === 8)
	&& IsAllDigital(iExtension)) {
        return { "nRet": 2, "Msg": "" };
    }

    return { "nRet": 3, "Msg": "电话号码位数不正确" };
}

///检查Email
function pChkEmail(iEmail) {
    var nRet = 1,msg = "";
    var reg = /^[\.a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;

    if (0 === iEmail.length) {
        nRet = 2;
    } else {
        if (!reg.test(iEmail)) {
            nRet = 3;
            msg = "邮箱格式不正确";
        }
    }

    return { "nRet": nRet, "Msg": msg };
}

//验证夺宝通行证
function pChkPromoteCode(iPromoteCode) {
    var nRet = 3;

    if (0 === iPromoteCode.length) { 
        nRet = 2; 
    }
    else if (iPromoteCode.length === 12) {
        var nSum = 0;
        for (var i = 0; i < iPromoteCode.length - 1; i++) {
            nSum += (i + 1) * (parseInt(iPromoteCode.charAt(i)) + 1); //加1的目的是防止某位为0时，其特征不能在运算和中体现出来
        }

        if (nSum % 10 === parseInt(iPromoteCode.charAt(11))) {
            nRet = 1; 
        }
    }

    return { "nRet": nRet, "Msg": "" };
}


//校验地址，该函数允许用户输入中文，英文，数字及# - _
function pChkAddr(iText, nMinLen, nMaxLen) {
    var nRet = 3, msg = "请填写" + nMinLen + "-" + nMaxLen + "个汉字";

    if (iText.length >= nMinLen && iText.length <= nMaxLen) { 
        nRet = 1; 
    }

    if (0 !== iText.length && (iText.length < nMinLen || iText.length > nMaxLen)) { 
        nRet = 3;  
    }

   
    var reg = /^[A-ZＡ-Ｚa-zａ-ｚ0-9０-９/／\\＼（）()、＃#_＿－\-\u4E00-\u9FA5]{1}[A-ZＡ-Ｚa-zａ-ｚ0-9０-９/／\\＼\u0020（）()、＃#_＿－\-\u4E00-\u9FA5]*$/;  
    
    if (!reg.test(iText)) { 
        nRet = 3; 
     }

    if (0 === iText.length) {
        nRet = 2; //没有输入内容时不显示
    }

    return { "nRet": nRet, "Msg": msg };
}

//该函数允许用户输入中文，英文，数字等内容
function pChkText(iText, nMinLen, nMaxLen) {
    var nRet = 3, msg = "请填写" + nMinLen + "-" + nMaxLen + "个汉字";

    if (iText.length >= nMinLen && iText.length <= nMaxLen) {
         nRet = 1; 
    }

    if (0 !== iText.length && (iText.length < nMinLen || iText.length > nMaxLen)) { 
        nRet = 3;  
    }

    var reg = /^[A-ZＡ-Ｚa-zａ-ｚ0-9０-９＆&（）()、－\-\u4E00-\u9FA5]+$/;   
    if (!reg.test(iText)) {  
        nRet = 3; 
    }

    if (0 === iText.length) {
        nRet = 2; //没有输入内容时不显示
    }

    return { "nRet": nRet, "Msg": msg };
}
//检查车牌号
function pChkCarNo(carNo){
      
    var reg=/^[渝沪津京辽吉黑冀晋陕鲁皖苏浙豫鄂湘赣台闽云琼川贵粤甘青宁蒙藏新桂]{1}[A-Za-z]{1}[A-Za-z0-9]{5,6}$|^[粤]{1}[Zz]{1}[A-Za-z0-9]{4}[港澳]{1}$/ ;  
    var nRet = 1,msg="";
    carNo =!carNo?"":carNo.trim().replace(" ","");
     if(!reg.test(carNo)){
        nRet = 2;
        msg="车牌校验未通过";
    }   
    return { "nRet": nRet, "Msg": msg };
}
//检查车牌号新版
function pCheckCarNo(carNo){  
    var reg=/^[渝沪津京辽吉黑冀晋陕鲁皖苏浙豫鄂湘赣台闽云琼川贵粤甘青宁蒙藏新桂]{1}[A-Za-z]{1}[A-Za-z0-9]{5,6}$|^[粤]{1}[Zz]{1}[A-Za-z0-9]{4}[港澳]{1}$/ ;                 
    var nRet = 1,msg="";
    carNo = jq.trim(carNo).replaceAll(" ","");
    if(!reg.test(carNo)){
        nRet = 2;
        msg="车牌校验未通过";
    }   
    return { "nRet": nRet, "Msg": msg };
}
//检查会员号

function pChkMemNo(memNo){
    var nRet = 1, msg="";    
    if(memNo.trim().length === 0){
        nRet = 1;
    }
    else if(escape(memNo).indexOf("%u") > -1){
        nRet = 2;
        msg = "会员号中不能含有中文";
    }   
    else if(memNo.length < 5 || memNo.length > 16){
        nRet = 3;
        msg = "会员号长度有误";
    } 
    return { "nRet": nRet, "Msg": msg};
}


//检查一般输入
function pChkInput(iinput, nMinLen, nMaxLen) {
    var nRet = 3, msg = "";

    if (iinput.length >= nMinLen && iinput.length <= nMaxLen) { 
        nRet = 1; 
    }

    if (0 !== iinput.length && (iinput.length < nMinLen || iinput.length > nMaxLen)) {
        nRet = 3;
        msg = nMinLen + "-" + nMaxLen + "个字符";
    }

    var reg = /^[^~!@#\$%^&\*\(\)_\+\-=\{\}\|<>\?\[\];':·`",\.]+$/;
    if (!reg.test(iinput)) {
        nRet = 3;
        msg = nMinLen + "-" + nMaxLen + "个字符";
    }

    if (0 === iinput.length) {
        nRet = 2;
        msg = "";
    }

    return { "nRet": nRet, "Msg": msg };
}


function sleep(n) {
    var start = new Date().getTime();
    while (true) {
        if (new Date().getTime() - start > n) 
            break;
    }
} 
