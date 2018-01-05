// 遮罩层初始化样式
function maskStyle(){
  var explainMask = $('.explain-mask'),
      h = $(document).height(),
      w =$(document).width();
    explainMask.height(h);
    explainMask.width(w);
}
maskStyle();
$(window).resize(function(){
  maskStyle();
});

// 弹窗
(function(){
  var explainMask = $('.explain-mask'),
    activityExplain = $('.activity-explain'),
    userPopup=$('.user-sevice-agreement-popup'),
    close = $('#close'),
    closeS=$('#close-s'),
    detailRules = $('#detail-rules'),
    userBtn=$('#user-btn');

  detailRules.bind('click',function(){
    var h = $(document.documentElement).scrollTop() || $(document.body).scrollTop();
    explainMask.css('display','block');
    activityExplain.css({'display':'block','top':h+100});
  });
  userBtn.bind('click',function(){
    var h = $(document.documentElement).scrollTop() || $(document.body).scrollTop();
    explainMask.css('display','block');
    userPopup.css({'display':'block','top':h+100});
  });

  close.bind('click',function(){
    explainMask.css('display','none');
    activityExplain.css('display','none');
    userPopup.css('display','none');
  });
  closeS.bind('click',function(){
    explainMask.css('display','none');
    userPopup.css('display','none');
  });
})();


// 表单验证
(function(){

  var reg = {
      email: /^\w+[-+.\w]*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/,
      idCard: /^\d{15}(\d{2}[A-Za-z0-9])?$/,
      mobile: /^1[3|4|5|7|8]\d{9}$/,
      name: /^[\u4e00-\u9fa5\u3400-\u4db5\ue000-\uf8ff]{2,21}$/,
      captcha: /^[0-9]{4}$/,
      img_captcha: /^\S{4}$/
    },
    errObj = {
      name: "姓名由2-21个汉字组成",
      idCard: "身份证填写错误",
      email: "邮箱错误",
      mobile: "手机格式错误",
      captcha: "验证码输入错误",
      img_captcha: "图形验证码输入错误"
    };

  var is_click = false;
//初始化
  var pcForm = $('#pc-form'),
      ele = $('.input-text', pcForm);

// 获取or失去焦点
  ele.each(function(index,item){

        ele.eq(index).bind('focus',function(){

          $(this).addClass('active');

        });

        ele.eq(index).bind('blur',function(){

          var name = item.name,
              value =item.value;

          $(this).removeClass('active');
          if(!reg[name].test(value)) {
            $(this).next().html(errObj[name]);
            return false;
          }
          else {
            $(this).next().html("");
          }

        });
  });

// 失去焦点判断验证码
var token = $("#token"),
    inputTextMobile = $(".input-text-mobile"),
    inputTextCaptcha = $(".input-text-captcha");

inputTextCaptcha.bind('blur',function(){

  phoneValue = inputTextMobile.val();
  captchaValue = inputTextCaptcha.val();
  var captcha_reg= /^[0-9]{4}$/;

  if(!captcha_reg.test(captchaValue))
  {
    token.val('');
    inputTextCaptcha.next().html('验证码格式错误(验证码由4位阿拉伯数字组成)');
    return false;
  }
  else if(!is_click)
  {
    salert('您还未获取验证码');
  }
  else
  {
    $.ajax({
      type: 'get',
      async: false,
      url: '/verify/phone_captcha',
      data: {phone:phoneValue,captcha:captchaValue},
      success: function(data){
        if(data.error_code != 0)
        {
          token.val('');
          salert(errObj['captcha']);
        }
        else
        {
          token.val(data.token);
        }
      }
    });
  }

});

// 提交验证
  pcForm.bind('submit', function(e){

    var valid = true;
    //表单内容格式验证
    if (valid) {

      ele.each(function(index, item) {

        var name = item.name,
            value =item.value;

        if(!reg[name].test(value)) {
          valid = false;
          salert(errObj[name]);
          return false;
        }

      });

    }
    //手机验证码验证
    if(valid) {

      var token = $("#token"),
      tokenValue = token.val();

      if(tokenValue == '')
      {
        valid = false;
        salert(errObj['captcha']);
        return false;
      }

    }
    //图形验证码验证
    if(valid) {

      var imgToken = $("#img-token"),
      imgTokenValue = imgToken.val();

      if(imgTokenValue == '')
      {
        valid = false;
        salert(errObj['img_captcha']);
        return false;
      }

    }

    if(!valid) {
      e.preventDefault();
      return false;
    }
    if(!!window.TuiaAdverter){
      TuiaAdverter.init();
    }
  });

// 获取验证码
(function(){
  var reg = {
      mobile: /^1[3|4|5|7|8]\d{9}$/
    },
    errObj = {
      mobile: "手机格式错误"
    };
  var send = $("#send"),
      num = 0,
      times = 60,
      timer = null,
      inputTextMobile = $(".input-text-mobile");

  var token = $("#token"),
      tokenValue = token.val(),
      randomValue = null;

      send.bind('click',function()
      {
        is_click = true;
        value = inputTextMobile.val();
        randomValue = $("#random").val();
        if(reg['mobile'].test(value))
        {
          send.removeAttr('disabled');
            $.ajax({
            type: 'get',
            url: '/gen/phone_captcha',
            data: {phone:value,r:randomValue},
            success: function(data){
              if(data.error_code == 0)
              {
                countDown(send,times);
              }
              else
              {
                salert('获取验证码过于频繁');
              }
            },
            error: function(){
              salert('获取验证码频繁');
            }
          });
        }
        else
        {
          salert(errObj['mobile']);
        }
      });

})();

var oKey = $("#key").val();
// 图形验证码切换
$("#switch-img").bind('click',function(){

  $.ajax({
    type: 'get',
    url: '/gen/image_captcha?captcha_key='+oKey,
    success: function(data, status, xhr) {
      var contentType = xhr.getResponseHeader("Content-Type");
      if(contentType == 'image/png')
      {
        $("#switch-img").attr("src","/gen/image_captcha?captcha_key="+oKey+"&r="+Math.random());
      }
      else
      {
        $("#switch-img").attr("src","/gen/image_captcha?captcha_key="+data.new_key+"&r="+Math.random());
      }
    }
  });

});

// 图形验证码验证
$(".input-img-captcha").bind('blur',function(){
  var keyValue = $("#key").val(),
      imgReg = /^\S{4}$/,
      imgCaptchaValue = $(".input-img-captcha").val();

      if(!imgReg.test(imgCaptchaValue)){
        salert("验证码格式错误");
      }
      else {
        $.ajax({
          type: 'get',
          async: false,
          url: '/verify/image_captcha',
          data: {captcha_key:keyValue,captcha_code:imgCaptchaValue},
          success: function(data){
            if(data.status == 0)
            {
              $("#img-token").val(data.image_captcha_token);
              oKey = data.new_key;
            }
            else
            {
              $("#img-token").val("");
              $("#key").val(data.new_key);
              oKey = data.new_key;
              $("#switch-img").attr("src","/gen/image_captcha?captcha_key="+data.new_key);
              salert(data.msg);
            }
          },
          error: function(data) {
            $("#img-token").val("");
            salert("请稍后再试");
          }
        });
      }

});

})();

//勾选复选框
(function() {
  var inputCheck = $("#input-check"),
      checkLabel = $("#check-label"),
      inputSubmit = $("#submit-btn");
  inputCheck.bind("click",function() {
    if(!inputCheck.attr("checked"))
      {
        inputSubmit.attr("disabled",true).css("background","#ccc");
        checkLabel.removeClass('active');
      }
      else
      {
        inputSubmit.attr("disabled",false).css("background","#ea4646");
        checkLabel.addClass('active');
      }
  });
})();

