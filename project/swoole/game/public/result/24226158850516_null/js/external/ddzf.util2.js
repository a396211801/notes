/***常用方法**/
var $T = {smsInterval:60};
XT.apply($T, 
		{
		fnumber:function (s, n){  
		   n = n > 0 && n <= 20 ? n : 2;
		   s = parseFloat((s + "").replace(/[^\d\.-]/g, "")).toFixed(n) + "";	   
		   return s;  
		},
		/**发送短信处理 @param $field 按键 @param i 倒计时 秒*/
		sendSms :function($field,i) {
			clearTimeout(this.toRefresh);
			var context = this;
			this.toRefresh = setTimeout(function(){
				if(i==0){
					clearTimeout(context.toRefresh);
					$field.removeClass("am-disabled");
					$field.html("重发动态码");
					return ;
				}
				$field.html(i+"秒");
				i = (i-1);
				$T.sendSms($field,i);
			}, 1000);
		},
		showDdzfImgCode: function(){
			if ($(".ddzf-image-code img").size() > 0) {
				$(".ddzf-image-code img").click(function() {
						$(this).attr( "src", $T.url.imageCode + "page=" + $(this).attr("page") + "&r=" + Math.random());
				});
				$(".ddzf-image-code img").trigger("click");
			}
		},
		
    	//倒计时
		countdown : function(that,num){ 
    		var timer = setInterval(function() {
    			if (num == 0) { 
    				that.removeAttr("disabled").val("重新发送").removeClass("l-disabled");
    				num = 6; 
    				clearInterval(timer)
    			} else { 
    				that.attr("disabled", true).val("重新发送(" + num + ")").addClass("l-disabled");
    				num--; 
    			}
    		},1000) 
    	},
    	
		validTelephone: function(telephone){
			var pattern = /^(1(([1-9][0-9])|(47)|[8][0123456789]))\d{8}$/g;
			return pattern.test(telephone);
		}
});

String.prototype.startWith=function(str){    
	  var reg=new RegExp("^"+str);    
	  return reg.test(this);       
} 
String.prototype.endWith=function(str){    
	var reg=new RegExp(str+"$");    
	return reg.test(this);       
} 


