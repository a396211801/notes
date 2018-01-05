/**
 * Created by admin on 2017/4/11.
 */
$(function () {
   /* window.alert = function (src) {
        var htmls = '<div class="alertall">' +
            '<div class="alertTitle">提示</div>' +
            '<div class="alertBody">'+src+'</div>' +
            '<div class="alertOK">确定</div>' +
            '</div>';
        $("#alerts").html(htmls);

        $(".alertOK").click(function(){
            $('.alertall').css("display","none");
        });
    };*/
   var httpAdress='http://new.yytaomeng.com';
   //var httpAdress='http://139.224.67.182:8080';
   //var httpAdress='http://192.168.1.131:80';
  // var httpAdress='http://192.168.1.131:81';
    var GetQueryString = function (key) {
        // key为url变量名称
        var urlGets = location.search.substr(1);
        if (urlGets.length > 0) {
            start = urlGets.indexOf(key + '=');
            if (start != -1) {
                start = start + key.length + 1;
                end = urlGets.indexOf('&', start);
                if (end == -1) {
                    end = urlGets.length
                }
                return decodeURIComponent(urlGets.substring(start, end));
            }
        }
        return "";
    };

    function hintShow(){
        $('.hint').css("display",'block');
        setTimeout(function(){
            $('.hint').addClass('a-fadein');
            $('.hint').css("display",'none');
            setTimeout(function(){
                $('.hint').removeClass('a-fadein');
            },1500)
        },1500)
    }
    //验证码
    function mtime(na){
        var num=60;
        var ff=setInterval(function(){
            num--;
            na.disabled=true;
            na.innerHTML=num+'s后尝试';
            na.style.background='gray';
            if(num==0){
                clearInterval(ff);
                na.disabled=false;
                na.innerHTML='获取验证码';
                na.style.background='#F26100';
            }
        },1000)
    }
    $('#btnClick').click(function(){
        var phone=$('#phone').val();
        var password=$('#password').val();
        var yzm=$('#yzm').val();
        var reg = /^1[34578]\d{9}$/;
        var a = reg.test(phone);
        if(phone==""||phone==undefined){
            $('.hint').html("请输入手机号码");
            hintShow();
        }else if(a){
            if(password==""){
                $('.hint').html("请输入密码");
                hintShow();
            }else if(yzm==""){
                $('.hint').html("请输入验证码");
                hintShow();
            }else{
                var code = GetQueryString("abc");
                $.ajax({
                    type: 'get',
                    url:httpAdress+ '/api/user/register',
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'jsonp',
                    jsonpCallback: "successCallback",
                    data: {
                        'phone': phone,
                        'passwd':password,
                        'checknum':yzm,
                        'abc': code,
                        'type':1,
                        'channel':3,
                        'validcode':'0'
                    },success:function(data){
                        console.log(data);
                        if(data.status==1){
                            $('#registerSuccess').css('display','flex');
                        }else if(data.status==2){
                            $('#registerBefor').css('display','flex');
                        }else{
                            $('.hint').html(data.msg);
                            hintShow();
                        }
                    }
                })
            }
        }else{
            $('.hint').html("手机号码有误");
            hintShow();
        }
    });
    /*--------------------关闭按钮---------------------------*/
    $('.close').click(function(){
       $(this).parent().parent().parent(".register_success").css('display','none');
        $('.info_item #gainYzm').attr('disabled',false);
        $('.info_item #gainYzm').css('background','none');
        $('.jkw_info_item #gainYzm').attr('disabled',false);
        $('.jkw_info_item #gainYzm').css('background','#F26100');
        var getChecknum = document.getElementById('gainYzm');
        getChecknum.disabled=false;
        getChecknum.innerHTML='获取验证码';
        getChecknum.style.background='#F26100';
    });
    /*-------------------发送验证码------------------------*/
    $('#gainYzm').click(function(){

        var phone=$('#phone').val();
        var reg = /^1[34578]\d{9}$/;
        var a = reg.test(phone);
        if(phone==""||phone==undefined){
            $('.hint').html("请输入手机号码");
            hintShow();
        }
        else if(a){
            var getChecknum = document.getElementById('gainYzm');
            getChecknum.disabled=true;
            getChecknum.style.background='gray';
            $.ajax({
                url:httpAdress + '/api/user/getSMSCode',
                type: 'get',
                data: {
                    'phone':phone,
                    'type':1,
                    'validcode':'0'
                },
                contentType: "application/json; charset=utf-8",
                dataType: 'jsonp',
                jsonp: "callback",
                jsonpCallback: "successCallback",
                success: function(data) {
                    console.log(data);
                    if(data.status==1){
                        ems();
                        mtime(getChecknum);
                    }else if(data.status==2){
                        $('#registerBefor').css('display','flex');
                        /*if(data.msg=="该用户已注册。"){

                        }else{
                            $('.hint').html(data.msg);
                            $('.info_item #gainYzm').attr('disabled',false);
                            $('.info_item #gainYzm').css('background','none');
                            $('.jkw_info_item #gainYzm').attr('disabled',false);
                            $('.jkw_info_item #gainYzm').css('background','#F26100');
                        }*/
                    }
                },
                error: function(error) {
                    console.log(error);
                    $('.hint').html("获取失败，请重试！");
                    hintShow();
                }
            })
        }else{
            $('.hint').html("手机号码有误");
            hintShow();
        }
    });

    function ems(){
        $.ajax({
            type: 'get',
            url:httpAdress+ '/api/page/updatebyappkey',
            contentType: 'application/json; charset=utf-8',
            dataType: 'jsonp',
            jsonpCallback: "successCallback",
            data: {
                app_key:'sms'
            },success:function(data){
                console.log(data);
            }
        });
    }
    /*------------------跳转链接--------------------------*/
    $('.urlPost').click(function(){
        var code = GetQueryString("abc");
        $.ajax({
            type: 'get',
            url:httpAdress+ '/api/page/updatebyappkey',
            contentType: 'application/json; charset=utf-8',
            dataType: 'jsonp',
            jsonpCallback: "successCallback",
            data: {
                app_key:code
            },success:function(data){
                console.log(data);
            }
        });
        window.location.href="http://a.app.qq.com/o/simple.jsp?pkgname=com.zqxq.jiekuanwang";
    });
    $('.tuiAllUrlPost').click(function(){
        TuiaAdverter.init(function() {
            var code = GetQueryString("abc");
            $.ajax({
                type: 'get',
                url:httpAdress+ '/api/page/updatebyappkey',
                contentType: 'application/json; charset=utf-8',
                dataType: 'jsonp',
                jsonpCallback: "successCallback",
                data: {
                    app_key:code
                },success:function(data){
                    console.log(data);
                }
            });
            window.location.href="http://a.app.qq.com/o/simple.jsp?pkgname=com.zqxq.jiekuanwang";
        }, {
            location: "btn"
        })
    });

    var numb=3863;
    function number(){
        numb=numb+1;
        var n=numb.toString();
        var numlist=n.split('');
        if(numlist.length==4){
            $('#number').html("0");
            $('#number1').html(numlist[0]);
            $('#number2').html(numlist[1]);
            $('#number3').html(numlist[2]);
            $('#number4').html(numlist[3]);
        }else{
            $('#number').html(numlist[0]);
            $('#number1').html(numlist[1]);
            $('#number2').html(numlist[2]);
            $('#number3').html(numlist[3]);
            $('#number4').html(numlist[4]);
        }
        setTimeout(number,2000)
    }
    number();
});