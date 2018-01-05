$(document).ready(function(){
	$("#card-info-title-item1").click(function(){
		$("#card-info-title-item1").addClass("current");
		$("#card-info-title-item2").removeClass("current");					
		$("#card-info-title-item3").removeClass("current");

		$("#card-info-details-item1").addClass("current");
		$("#card-info-details-item2").removeClass("current");
		$("#card-info-details-item3").removeClass("current");
	})
	
	$("#card-info-title-item2").click(function(){
		$("#card-info-title-item1").removeClass("current");
		$("#card-info-title-item2").addClass("current");
		$("#card-info-title-item3").removeClass("current");

		$("#card-info-details-item1").removeClass("current");
		$("#card-info-details-item2").addClass("current");
		$("#card-info-details-item3").removeClass("current");
	})

	$("#card-info-title-item3").click(function(){
		$("#card-info-title-item1").removeClass("current");
		$("#card-info-title-item2").removeClass("current");
		$("#card-info-title-item3").addClass("current");					

		$("#card-info-details-item1").removeClass("current");
		$("#card-info-details-item2").removeClass("current");
		$("#card-info-details-item3").addClass("current");					
	})				

    //
    $(".lvxingform input").each(function(){
        $(this).setDefauleValue();
    });
    //
    $("#key").setDefauleValue();	

	$(".main-menu .bt-slider a").click(function(){
		if(!$(this).hasClass("on")){
			$(this).addClass("on");
			$(this).parents(".main-menu").addClass("on");
			$(".main-box .main-list").removeClass("on")
		}else{
			$(this).removeClass("on");
			$(this).parents(".main-menu").removeClass("on");
			$(".main-box .main-list").addClass("on")
		}
	});   

	$('.input_class_checkbox').each(function(){
   	 	$(this).hide().after('<div class="class_checkbox checked" />');
   	});

	$('.class_checkbox').on('click',function(){
    	$(this).toggleClass('checked').prev().prop('checked',$(this).is('.checked'))
    	$('#card-choice-addon').toggleClass('checked');
    	
    	if(1 == $("#fuKaSelected").val()){
    		$("#fuKaSelected").val("0");
    		alert("您已取消副卡Mini的申请！");
    	}else{
    		$("#fuKaSelected").val("1");
    		alert("您已同意副卡Mini的申请！");
    	}
    	
	}); 
})


//设置input,textarea默认值
$.fn.setDefauleValue = function() {
    var defauleValue = $(this).val();
    $(this).val(defauleValue).css("color","#999");
 
    return this.each(function() {       
        $(this).focus(function() {
            if ($(this).val() == defauleValue) {
                $(this).val("").css("color","#000");//输入值的颜色
            }
        }).blur(function() {
            if ($(this).val() == "") {
                $(this).val(defauleValue).css("color","#999");//默认值的颜色
            }
        });
    });
}

