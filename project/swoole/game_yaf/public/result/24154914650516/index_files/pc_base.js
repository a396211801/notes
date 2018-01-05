// 自定义弹窗
(function() {
  var f, c, g;
  function b(h) {
    g = $("#float_info")[0];
    if (!g) {
      g = document.createElement("div");
      g.id = "float_info";
      g.className = "err_popo";
      g.innerHTML = '<span id="float_info_msg"></span>';
      document.body.appendChild(g)
    }
    f && window.clearTimeout(f);
    a(1, h || "出现错误");

      var i = document.documentElement || document.body;
      g.style.position = "absolute";
      g.style.top = (document.documentElement.scrollTop||document.body.scrollTop) + ((document.documentElement.clientHeight || document.body.clientHeight) - g.offsetHeight) / 2 + "px"
    f = window.setTimeout(function() {
        a(0)
      },
      2000)
  }
  function a(j, h) {
    var i = g,
      l = 0,
      k = 20;
    h && ($("#float_info_msg").html(h));
    if (j) {
      i.style.opacity = "0";
      i.style.display = "block";
      c && window.clearInterval(c);
      c = window.setInterval(function() {
          if (l == 10) {
            window.clearInterval(c)
          }
          l++;
          i.style.opacity = 0.1 * l
        },
        k)
    } else {
      c && window.clearInterval(c);
      c = window.setInterval(function() {
          if (l == 10) {
            window.clearInterval(c);
            i.style.display = "none"
          }
          l++;
          i.style.opacity = 0.1 * (10 - l)
        },
        k)
    }
  }
  window.salert = b
})();

//显示隐藏

function ShowHide(eleId) {

  this.eleId = eleId;

}

ShowHide.prototype.show = function(){

  this.eleId.css('display','block');

};

ShowHide.prototype.hide = function(){

  this.eleId.css('display','none');

};

//遮罩层
function MaskLayer(layerId,layerW,layerH){

  ShowHide.apply(this,arguments);

  this.layerId = layerId;
  this.layerW = layerW;
  this.layerH = layerH;

}

MaskLayer.prototype = new ShowHide();

MaskLayer.prototype.show = function(){

  var self = this;

  self.layerId.css({'display':'block','width':self.layerW,'height':self.layerH});

};

MaskLayer.prototype.hide = function(){

  var self = this;

  self.layerId.css('display','none');

};

//弹窗

function PopupLayer(layerId){

  ShowHide.apply(this,arguments);

  this.layerId = layerId;

}

PopupLayer.prototype = new ShowHide();

PopupLayer.prototype.show = function(){

  var self = this,
      scrollH = $(document.documentElement).scrollTop() || $(document.body).scrollTop();

  self.layerId.css({'margin-top':-(self.layerId.height()/2)+scrollH,'display':'block'});

};

//倒计时

function countDown(buttonId,times){

  var timer = null;

  buttonId.attr('disabled',true);
  buttonId.val(times + "秒后重试");

 timer = setInterval(function(){

    times --;
    buttonId.val(times + "秒后重试");
    if(times <= 0)
    {
      buttonId.removeAttr('disabled');
      buttonId.val("获取验证码");
      clearInterval(timer);
      times = 60;
    }

  },1000);

}