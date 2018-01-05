 var ajax = null, abtn = jq("#divBtnQuery input"), btnSMS = jq("#btnNewSendSMS");
 abtn.checkagree = false;
    
/*实名制请求及获取相关变量*/
var chkRealNameRec = '0';
var rnInterval = null;
//最多等待5s
var rnCount = 10;

 
 jq(function(){
    
    var oHead = jq("head");
    var s1 = document.createElement("script"); s1.type = "text/javascript"; s1.src = "./Scripts/CmbAddrmob.js"; oHead.append(s1);
    
     try {
            var unitname = jq("#divUnitName input");
            jq("#divName input").on("focus",function () { if (typeof (EventTrack) === "function") {EventTrack('/mca/CCAName.htm', '新户申请姓名');} if (jq("#divName input").val().length > 0) {jq("#cross_Name").css("display","block");}});
            jq("#divCardId input").on("focus",function () { if (typeof (EventTrack) === "function") {EventTrack('/mca/CCACardId.htm', '新户申请身份证号');} if (jq("#divCardId input").val().length > 0){jq("#cross_ID").css("display","block");} });
            jq("#tbxMobile").on("focus",function () { if (typeof (EventTrack) === "function") {EventTrack('/mca/CCAMobile.htm', '新户申请手机号');} if (jq("#tbxMobile").val().length > 0){ jq("#cross_Tel").css("display","block");} });
            if (0 !== jq("#tbxSMSCode").length) {
                jq("#tbxSMSCode").on("focus",function () { if (typeof (EventTrack) === "function"){ EventTrack('/mca/CCASMSCode.htm', '新户申请手机验证码');} if (jq("#tbxSMSCode").val().length > 0){ jq("#cross_SMS").css("display","block"); } });
                btnSMS.on("click",SMSCodeCheck);
            } else { jq("#DivSMSBtn").css("display","none"); }
            jq("#selpro").on("focus", function () { if (typeof (EventTrack) === "function") {EventTrack('/mca/CCAselpro.htm', '新户申请省份选择');} });
            jq("#selcity").on("focus", function () { if (typeof (EventTrack) === "function"){EventTrack('/mca/CCAselcity.htm', '新户申请城市选择'); }});
            jq("#selqu").on("focus", function () { if (typeof (EventTrack) === "function"){ EventTrack('/mca/CCAselqu.htm', '新户申请城区选择');} });
            jq("#divSelEdu select").on("focus", function () { if (typeof (EventTrack) === "function"){ EventTrack('/mca/CCAseledu.htm', '新户申请学历选择');} });
            jq("#divAddrOther input").on("focus",function () { if (typeof (EventTrack) === "function"){ EventTrack('/mca/CCAaddrother.htm', '新户申请详细地址'); }if (jq("#divAddrOther input").val().length > 0) {jq("#cross_Detail").css("display","block");} });
            unitname.on("focus", function () {  if (typeof (EventTrack) === "function") {EventTrack('/mca/CCAUnitName.htm', '新户申请单位名称');} if (unitname.val().length > 0) {jq("#cross_Work").css("display","block");} });
            jq("#divSelDuty select").on("focus",function () { if (typeof (EventTrack) === "function"){ EventTrack('/mca/CCAselDuty.htm', '新户申请职务选择'); }});
            jq("#divSelEdu select").on("change",function () { ChangeColor(this); });
            jq("#divSelDuty select").on("change",function () { ChangeColor(this); });

            if (jq("#lnkBack").length>0) {
                jq("#lnkBack").on("click", function () { if (typeof (EventTrack) === "function") {EventTrack('/mca/CCAPreContractBack.htm', '新户申请返回按钮');} });
            }

            jq("#lnkAgreement").on("click",function () { if (typeof (EventTrack) === "function"){ EventTrack('/mca/CCAPreContractAgreement.htm', '新户申请阅读章程');} });
        } catch (ex) { }
        
      //身份证校验
      var CardIdJDom=jq("#divCardId input");
      CardIdJDom.on("change",CardIdCheck);
      
      //同步输入框和后台控件的内容,电话
        jq("#tbxMobile").on("change",function () {
            var phone = jq("#tbxMobile").val();
            hidtbxmobileJDom.val(phone);
        });
        
        //短信验证码输入框不需要初始化时从后台同步数据，只需同步输入框和后台控件的内容
        if (0 !== jq("#tbxSMSCode").length) {
            jq("#tbxSMSCode").on("change", function () {
                var smscode = jq("#tbxSMSCode").val();
                hidtbxsmscodeJDom.val(smscode);
                //发起实名制查询
                if ("" !== jq("#divName input").val() && "" !== jq("#tbxMobile").val() && "" !== jq("#divCardId input").val()) {
                    if (smscode.length == 6 && IsAllDigital(smscode)) {
                        try {
                            ajax = new XmlHttp();
                            var url = "./Service/CWAService.asmx/CheckRealName", paradata = "{\"cardid\":\"" + jq("#divCardId input").val() + "\",\"name\":\"" + jq("#divName input").val() + "\",\"mobile\":\"" + jq("#tbxMobile").val() + "\",\"smscode\":\"" + smscode + "\"}";
                            ajax.postopen(url, function () { }, function () { }, paradata);
                            chkRealNameRec = '1'; /*设置实名制查询记录*/
                        } catch (e) { }
                    }
                }
            });
        }
        //领用合约
        jq("#ckAgree").on("click", function () {
            if (abtn.checkagree) { 
                jq(this).removeClass("sel"); 
                jq(this).addClass("nosel"); 
                abtn.checkagree = false;
                if (typeof (EventTrack) == "function") {
                    EventTrack('/mca/CCAPreContractUnCkAgree.htm', '新户申请我已阅读反向勾选'); 
                }
            }
            else { 
                jq(this).removeClass("nosel"); 
                jq(this).addClass("sel");
                abtn.checkagree = true; 
            }
        });
        

 });
 
 //发起身份证校验函数
 function CardIdCheck(){
    try {
        ajax = new XmlHttp();
        var data;
        if (jq("#divCardId input").val().substr(4, 1) == "*") {
            data = hididJDom.val();
        }
        else {
            data =jq("#divCardId input").val();
        }
        var rtnobj = pSimpleChkUserCardID(data);
        if (1 == rtnobj.nRet) {

            jq("#NotNewDiv").css("display","none");
            jq("#hidisNew").val("0");
            Enabledbtn();
            var url = "./Service/CWAService.asmx/QueryOldNew", paradata = "{\"cardtype\":\"01\",\"cardid\":\"" + data + "\"}";
            ajax.postopen(url, successQueryOldNew, pageAjaxFail, paradata);
        }
    } catch (ex) { }
 }
 
//身份证校验成功回调函数
function successQueryOldNew() {
    if (0 == ajax.rtncode) {
        var data = ajax.rtnmsg, ashortcid = 15 == jq("#divCardId input").val().length, aisnew = "Y" == data.IsNew, aisstuold = "Y" == data.IsStuOld;
        var atotal = !aisnew || ashortcid, acon = aisnew && ashortcid;    //显示错误语句，已持卡或15位身份证
        if(atotal && !aisstuold)
        {
            jq("#NotNewDiv").css("display","block");
        }
        else{
             jq("#NotNewDiv").css("display","none");
        }
        var tempnew = (aisnew || aisstuold) ? "0" : "1";   //用于允许申请
        jq("#hidisNew").val(tempnew);
        (!atotal || aisstuold) ? Enabledbtn() : Disabledbtn();
        //异步获取跳转链接
        if (acon) {
            jq("#topconmsg").html("<em>!</em>请使用第二代身份证号码进行申请。");
        }
        else {
            try {
                ajax = new XmlHttp();
                var name = jq("#divName input").val().trim();
                var cardId = jq("#divCardId input").val().trim();
                var args = '{"name":"' + name + '","cardId":"' + cardId + '"}';
                var url = "./Service/CWAService.asmx/EncryptData";
                ajax.postopen(url, successEncryptData, pageAjaxFail, args);
            } catch (ex) { }
        }
    }
}

function successEncryptData() {
        var cardsel = hidcardselJDom.val().trim();
        var href = cardsel === "" ? "oapply.aspx?cardsel=uc" : "oapply.aspx?cardsel=" + cardsel;
        href += "&WT.mc_id=";
        href += sourceAdJDom.val().trim();
        href += "&nto=";
        href += ajax.rtncode;
        var str=jq("#hidmgmflag").val()== "" ?"<em>!</em>已持卡用户请<a href = " + href + ">点击这里</a>办卡。" : "<em>!</em>您已持有招行信用卡，无法参加推荐新户办卡活动；若您想加办卡片，请<a  href = " + href + ">点击这里</a>。";
        jq("#topconmsg").html(str);
}


//提交检验
function CheckPage() {
    try {
        Disabledbtn();//设置提交按钮变灰，不可点击，防止重复点击       
        if (typeof (EventTrack) == "function") {EventTrack('/mca/CCA_Submit_btn.htm', '新户申请提交按钮');}
        if ("1" === jq("#hidisNew").val()) {
            Disabledbtn(); 
            jq("#NotNewDiv").css("display","-webkit-box");
            if (jq("#hidmgmflag").val() === "") { 
                jq("#topconmsg").html ("<em>!</em>已持卡用户请<a href = '#'>点击这里</a>办卡。"); 
            }
            else { 
                jq("#topconmsg").html("<em>!</em>您已持有招行信用卡，无法参加推荐新户办卡活动；若您想加办卡片，请<a  href = '#'>点击这里</a>。");
            }
            return false;
        }
        var txbNameJDom=jq("#divName input");
        var rtnobj = pChkUserName(txbNameJDom.val(), 2, 14);
        if (txbNameJDom.val().indexOf("*") > -1 && txbNameJDom.val() == hidnameJDom.val()) { }//支付宝渠道的进件要求隐蔽姓氏  
        else if (rtnobj.nRet != 1) { 
            ShowErrmsg("请准确输入姓名，2-14个中文字符。"); 
            ErrorInput(txbNameJDom);
            Enabledbtn(); 
            return false; 
        }
        else { CorrectInput(txbNameJDom) }

        var txbCardIdJDom=jq("#divCardId input");
        if (txbCardIdJDom.val().indexOf("*") > -1 && txbCardIdJDom.val() == hididJDom.val()) { }
        else
        {
            rtnobj = pSimpleChkUserCardID(txbCardIdJDom.val());
            if (rtnobj.nRet != 1) { 
                ShowErrmsg("请准确输入18位身份证号码。"); 
                ErrorInput(txbCardIdJDom);
                Enabledbtn(); return false; 
            } 
            else {CorrectInput(txbCardIdJDom); }
            
            rtnobj = pCheckAge(txbCardIdJDom.val());
            if (rtnobj.nRet != 1) { 
                ShowErrmsg("目前只接受18-60周岁人士通过身份证提出的申请"); 
                ErrorInput(txbCardIdJDom);
                Enabledbtn(); return false; 
            }
             else { CorrectInput(txbCardIdJDom); }
        }

        rtnobj = pChkMobile(jq("#tbxMobile").val());
        if (jq("#tbxMobile").val().length == 11 && jq("#tbxMobile").val().indexOf("*") > -1 && jq("#tbxMobile").val() == hidphoneJDom.val()) { }
        else if (rtnobj.nRet != 1) { 
             ShowErrmsg("请准确输入11位手机号码。");
             ErrorInput(jq("#tbxMobile"));
             Enabledbtn(); return false;
        }
        else {CorrectInput(jq("#tbxMobile")); }

        if (jq("#tbxSMSCode").length>0) {
            var smscode = jq("#tbxSMSCode").val();
            if (6 != smscode.length || !IsAllDigital(smscode)) { ShowErrmsg("请准确输入短信验证码。"); ErrorInput( jq("#tbxSMSCode")); Enabledbtn(); return false; } else { CorrectInput(jq("#tbxSMSCode")); }
        }
        
        hidproJDom.val(jq("#selpro").val());
        hidcityJDom.val(jq("#selcity").val());
        hidquJDom.val(jq("#selqu").val());
        hidhaskabuJDom.val(jq("#temphaskabu").val());
        
        if ("" == jq("#selcity").val()) { ShowErrmsg("请选择你所在城市"); Enabledbtn(); return false; }
        if (jq("#selqu option").size() > 0 && "" == jq("#selqu").val()) { ShowErrmsg("请选择你所在城市的区"); Enabledbtn(); return false; }

        rtnobj = pChkAddr(jq("#divAddrOther input").val(), 5, 24);
        if (rtnobj.nRet != 1) { ShowErrmsg("请正确填写公司地址，5－24个字。"); ErrorInput(jq("#divAddrOther input")); Enabledbtn(); return false; } else { CorrectInput(jq("#divAddrOther input"));  }

        if ("非在职人员暂不受理" ===  jq("#divUnitName input").val()) { ShowErrmsg("请准确输入单位名称，2-24个字。"); ErrorInput(jq("#divUnitName input")); Enabledbtn(); return false; } else {  CorrectInput(jq("#divUnitName input")); }
        rtnobj = pChkText( jq("#divUnitName input").val(), 2, 24);
        if (rtnobj.nRet != 1) { ShowErrmsg("请准确输入单位名称，2-24个字。"); ErrorInput(jq("#divUnitName input")); Enabledbtn(); return false; } else { CorrectInput(jq("#divUnitName input")); }
       
        if ("0" ===  jq("#divSelEdu select").val()) { ShowErrmsg("请选择您的学历"); ErrorInput(jq("#divSelEdu select")); Enabledbtn(); return false; } else { CorrectInput(jq("#divSelEdu select"));}
        
        if ("" === jq("#divSelDuty select").val()) { ShowErrmsg("请选择您的职务"); ErrorInput(jq("#divSelDuty select")); Enabledbtn(); return false; } else { CorrectInput(jq("#divSelDuty select")); }
        
        if (!abtn.checkagree) { ShowErrmsg("请确认领用合约。"); Enabledbtn(); return false; }
        
        if ("undefined" !== typeof (BCore)) {
            hidcJDom.val(BCore.tools.Tools.getCookie('bfd_g'));
        }
        //发起实名制结果同步查询
        onLoading();
        //若发起过实名制查询
        if (chkRealNameRec == "1")
        {
            ajax = new XmlHttp();
            rnInterval = setInterval(function () {
                rnCount--;
                if (rnCount > 0)
                {
                     var url = "./Service/CWAService.asmx/GetRealNameRlt",
                     arg = "{\"cardid\":\"" + jq("#divCardId input").val() + "\",\"name\":\"" + jq("#divName input").val() + "\",\"mobile\":\"" + jq("#tbxMobile").val() + "\"}";
                     ajax.postopen(url, successRealNameRlt, RealNameRltAjaxFail, arg);
                }
                else
                {
                    window.clearInterval(rnInterval);
                    __doPostBack(btnUniqName, ''); //这里用服务器控件name属性   
                    return true;
                }
             }, 500);
             rnInterval();
        }
        //增加提交延时后可将原有的webtrends触发等待时间200ms注释
        //sleep(200);
        //由于设置按钮不可点击，服务器onclick方法不执行，这里手动执行提交form   
        __doPostBack(btnUniqName, ''); //这里用服务器控件name属性   
        return true;
    } catch (exc) { }
}

 //出結果后終止轮询
function successRealNameRlt() {
    if (0 == ajax.rtncode) {
        window.clearInterval(rnInterval);//清理定时器会阻断后面js执行，故增加提交方法
        __doPostBack(btnUniqName, ''); //这里用服务器控件name属性   
        return true;
    }
    else {
        if (rnCount == 0) {
            window.clearInterval(rnInterval);
            __doPostBack(btnUniqName, ''); //这里用服务器控件name属性   
            return true;
        }
    }
}

function RealNameRltAjaxFail() {
    if (rnCount == 0){
        window.clearInterval(rnInterval);
        __doPostBack(btnUniqName, ''); //这里用服务器控件name属性   
        return true;
    }
}

//短信发送获取验证码
function SMSCodeCheck() {
    CorrectInput(jq("#tbxMobile"));
    if (typeof (EventTrack) == "function"){ EventTrack('/mca/CCASMSSend_btn.htm', '新户申请短信发送按钮');}
    btnSMS.unbind("click"); 
    try {
        var mobilePhoneNo = jq("#tbxMobile").val();
        var rtnobj = pChkMobile(mobilePhoneNo);
        //这里由于页面上做了脱敏处理，所以也要做一下校验。否则可能出现未识别客户改动电话号码，却仍然从缓存中取电话号码发短信的情况。
        if (mobilePhoneNo.length === 11 && mobilePhoneNo.indexOf("*") > -1 && mobilePhoneNo === hidphoneJDom.val()) {
            mobilePhoneNo = ""; //如果是外部渠道进件，手机号需脱敏展示。这里发验证码时从对象中取手机号
        }
        else if (rtnobj.nRet != 1) {
            ShowErrmsg("请填写正确的手机号");
            ErrorInput(jq("#tbxMobile"));
            btnSMS.on("click",SMSCodeCheck);
            return false;
        }
        var hasimg = jq("#DivImgCode").css("display") != "none" ? "1" : "0";
        var extraCode = jq("#captcha").val();
        ajax = new XmlHttp();
        var url = "./Service/CWAService.asmx/SendNewSMSCode", paradata = "{\"mobile\":\"" + mobilePhoneNo + "\",\"extracode\":\"" + extraCode + "\",\"hasimg\":\"" + hasimg + "\"}";
        ajax.postopen(url, successSMSCode, pageAjaxFail, paradata);
    } catch (exc) { ShowErrmsg(exc.message); }
}

//短信发送成功回调
function successSMSCode() {
    if (0 == ajax.rtncode) {
        var lefttime = 60;
        btnSMS.attr("disabled",true);
        btnSMS.css("color","#858689");
        btnSMS.val("重新获取(60)");
        var btntextchange = setInterval(function () {
            lefttime--;
            btnSMS.val("重新获取(" + lefttime + ")");
            if (0 == lefttime) {
                btnSMS.val("重新获取");
                btnSMS.attr("disabled",false);
                btnSMS.on("click",SMSCodeCheck);
                clearInterval(btntextchange);
            }
        }, 1000);
        jq("#DivImgCode").css("display", "none");
        jq("#errmsg").css("display","none");
    }
    else if (20 == ajax.rtncode) {
        btnSMS.on("click",SMSCodeCheck) ;
        jq("#DivImgCode").css("display","-webkit-box");
        RefreshImg();
        ShowErrmsg(ajax.rtnmsg);
    }
    else {
        btnSMS.on("click",SMSCodeCheck);
        jq("#DivImgCode").css("display", "none");
        ShowErrmsg(ajax.rtnmsg);
    }
}

//刷新附加码
function RefreshImg() {
    jq("#captcha").val("");
    var guid = "";
    for (var i = 1; i <= 32; i++) {
        var n = Math.floor(Math.random() * 16.0).toString(16);
        guid += n;
    }
    jq("#imgaddcode").attr("src","~/cmb/antifloodimgs.ashx?rnd=" + guid);
}

 //区域临时保存函数
function QuChange() {
   var data = new Array();
   var name = jq("#divName input").val().trim(),
         cardId = jq("#divCardId input").val().trim(),
         phone = jq("#tbxMobile").val().trim(),
         smsHtml = jq("#tbxSMSCode"),
         province = jq("#selpro").val().trim(),
         city = jq("#selcity").val().trim(),
         distinct = jq("#selqu").val().trim(),
         haskabu = jq("#temphaskabu").val();

    if ("" === distinct || "" === city || "" === province){ return;}
    var rtnobj = null;

    //姓名判断
    if (name.indexOf("*") > -1 && name !== hidnameJDom.val()){ return;}
    rtnobj = pChkUserName(name, 2, 14);
    if (rtnobj.nRet != 1){ return;}

    //身份证判断
    if (cardId.indexOf("*") > -1 && cardId !== hididJDom.val()) {return;}
    rtnobj = pSimpleChkUserCardID(cardId);
    if (rtnobj.nRet != 1){ return;}

    //电话判断
    if (phone.length != 11 || (phone.indexOf("*") > -1 && phone != hidphoneJDom.val())){ return;}
    rtnobj = pChkMobile(phone);
    if (rtnobj.nRet != 1) { return;}

    //短信验证
    if (smsHtml.length>0 && (6 != smsHtml.val().trim().length || !IsAllDigital(smsHtml.val().trim()))) {return;}
    if (haskabu === ""){ haskabu = "0";}
    
    //参数过多，将数据封装到一个数组里
    data.push(name);
    data.push(cardId);
    data.push(phone);
    data.push(province);
    data.push(city);
    data.push(distinct);
    data.push(haskabu);
    if (smsHtml.length>0) data.push(smsHtml.val().trim());

    //ajax传递
    var ajax = new XmlHttp();
    var url = "./Service/CWAService.asmx/TempSave",
         arg = '{"dataArgs": "' + data.join(",") + '"}';
    ajax.postopen(url, function () { }, pageAjaxFail, arg);
}

 
function Enabledbtn() { 
     if ("0" === jq("#hidisNew").val()) { 
        abtn.attr("disabled",false);
        abtn.removeClass("btndisabled"); 
     }
}
 
function Disabledbtn() { 
     abtn.attr("disabled", "disabled"); 
     abtn.addClass("btndisabled"); 
}
 
 //ajaxFail
function pageAjaxFail(message) { ShowErrmsg(message); }
 
//显示错误信息
function ShowErrmsg(errmsg) {
    jq("#errmsg").html("<em>!</em>" + errmsg);
    jq("#errmsg").css("display","block");
    jq("#errmsg")[0].scrollIntoView();
}

function changeCityFlag() { } //do nothing,used by CmbAddrmob.js

//提交加载中
function onLoading(){
    jq("#J_loadModal").height(jq("body").height());
    jq("#J_loading").css("margin-bottom","150px");
    jq("#J_loadModal").css("display","block");
}