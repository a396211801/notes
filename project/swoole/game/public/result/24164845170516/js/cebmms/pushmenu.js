jQuery(function () {
    $('#menu-trigger').click(function () {
        if (!$('.dLeft').hasClass('mobile-menu-left')) {
            $('.head').addClass('mobile-left');
            $('.dLeft').addClass('mobile-menu-left');
        } else {
            $('.dLeft').removeClass('mobile-menu-left');
            $('.head').removeClass('mobile-left');
        }        
    });
    
	$("#push-select-menu-id .card-recommend").click(function(){

		$("#card-section-id .card-section-recommend").addClass("card-current");
		$("#card-section-id .card-section-business").removeClass("card-current");
		$("#card-section-id .card-section-fashion").removeClass("card-current");
	})

	$("#push-select-menu-id .card-business").click(function(){

		$("#card-section-id .card-section-business").addClass("card-current");
		$("#card-section-id .card-section-recommend").removeClass("card-current");
		$("#card-section-id .card-section-fashion").removeClass("card-current");
	})

	$("#push-select-menu-id .card-fashion").click(function(){

		$("#card-section-id .card-section-fashion").addClass("card-current");
		$("#card-section-id .card-section-business").removeClass("card-current");
		$("#card-section-id .card-section-recommend").removeClass("card-current");
	})	

	
	var scripts = [
		'/js/cebmms/jquery.event.move.js',
		'/js/cebmms/jquery.event.swipe.js'
	];

	$.getScript(scripts[0]);

	$.getScript(scripts[1], function() {
		$('.my-slider').unslider('initSwipe');
	});
    
});



$(function() {
	 $('#dd1').show();
 });


function comSub(id){
	
	var pro_code = $('#pro_code').val();
	
	if(id == 2541){
		window.location.href="http://bk.jd.com/m/card/wapCitic/39/apply.html?bankNo=90008&netId=XMVXZHTG03SJ02BKJD";
	}else if(id == 2542){
		window.location.href="http://bk.jd.com/m/card/wapCitic/40/apply.html?bankNo=90008&netId=XMVXZHTG03SJ02BKJD";
	}else{
	    window.location.href="/cebmms/apply/ps/card-index.htm?req_card_id="+id+"&pro_code="+pro_code+"&c2c_recom_flag="+$("#c2c_recom_flag").val();
	}
}
 

function cardDetail(id){
	if(id == 2541){
		window.location.href="http://bk.jd.com/m/card/wapCitic/39/apply.html?bankNo=90008&netId=XMVXZHTG03SJ02BKJD";
	}else if(id == 2542){
		window.location.href="http://bk.jd.com/m/card/wapCitic/40/apply.html?bankNo=90008&netId=XMVXZHTG03SJ02BKJD";
	}else{
			window.location.href="/cebmms/apply/ps/card-detail.htm?card_id="+id+"&pro_code="+$('#pro_code').val()+"&c2c_recom_flag="+$("#c2c_recom_flag").val();
	}
}

function cardDetailPic(id,card_cebmms_haibao_url){
	
	if(id == 2541){
		window.location.href="http://bk.jd.com/m/card/wapCitic/39/apply.html?bankNo=90008&netId=XMVXZHTG03SJ02BKJD";
	}else if(id == 2542){
		window.location.href="http://bk.jd.com/m/card/wapCitic/40/apply.html?bankNo=90008&netId=XMVXZHTG03SJ02BKJD";
	}else{
		if("" != card_cebmms_haibao_url){
			window.location.href = card_cebmms_haibao_url;
		}else{
			window.location.href="/cebmms/apply/ps/card-detail.htm?card_id="+id+"&pro_code="+$('#pro_code').val()+"&c2c_recom_flag="+$("#c2c_recom_flag").val();
		}
	}
}

function apply(id){
	
	var pro_code = $('#pro_code').val();
	
	if(id == 2541){
		window.location.href="http://bk.jd.com/m/card/wapCitic/39/apply.html?bankNo=90008&netId=XMVXZHTG03SJ02BKJD";
	}else if(id == 2542){
		window.location.href="http://bk.jd.com/m/card/wapCitic/40/apply.html?bankNo=90008&netId=XMVXZHTG03SJ02BKJD";
	}else{
	    window.location.href="/cebmms/apply/ps/card-index.htm?req_card_id="+id+"&pro_code="+pro_code+"&c2c_recom_flag="+$("#c2c_recom_flag").val();
	}
}






