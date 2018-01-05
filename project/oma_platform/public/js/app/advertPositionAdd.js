/**
 * 结算报表
 */
 
layui.use(['layer', 'form'],function() {
	var	form = layui.form;
	

	
	$('.popChooseUser').click(function(){
		$('.chooseUser').toggle();
	})
	$('#searchCustomer').on('keyup',function(){
		var val = $(this).val()
		$('.selectUser span').each(function(){
			if($(this).text().indexOf(val) != -1){
				$(this).show()
			}
			else{
				$(this).hide()
			}
		})
	})
	$('.selectUser span').click(function(){
		// customer.user_id = $(this).attr('id');
		// $('.popChooseUser').text($(this).text());
		$(this).addClass('act').siblings().removeClass('act');
	})
	$('.selectUser span').dblclick(function(){
		customer.user_id = $(this).attr('id');
		$('.popChooseUser').text($(this).text());
		$(this).addClass('act').siblings().removeClass('act');
		$('.chooseUser').toggle();
	})
	$('.sureCustomer').click(function(){
		customer.user_id = $('.selectUser span.act').attr('id');
		$('.popChooseUser').text($('.selectUser span.act').text());
		$('.chooseUser').toggle();
	})


	//监听指定开关
	form.on('radio(type)', function(data){
  		if(data.value == 1 || data.value == 2){
  			$('#redioAdStyle').hide();
  		}else{
  			$('#redioAdStyle').show();
  		}
	});
	//媒体类型
	form.on('radio(media_type)', function(data){
		
  		if(data.value == 3){
  			$('#web_url').show();
  			$('#pkg_name').hide();
  			$('#download_url').hide();
  		}else if(data.value == 2 || data.value == 1){
  			
  			$('#web_url').hide();
  			$('#pkg_name').show();
  			$('#download_url').show();
  		}
	});
   
	//监听提交
	form.on('submit(formDemo)', function(data){
		
     		
		if( data.field.type == undefined){
			layer.msg('请选择广告位类型');
			return false;
		}
		if( data.field.type == 3 && data.field.js_type == undefined){
			layer.msg('请选择JS广告样式');
			return false;
		}
		if( data.field.media_type == undefined){
			layer.msg('请选择媒体类型');
			return false;
		}
		if( data.field.media_type == 3 ){
			if(data.field.web_url == ""){
				layer.msg('请输入网站链接');
				return false;
			}
			delete data.field.pkg_name;
			delete data.field.download_url;
		} else {
			if(data.field.pkg_name == ""){
				layer.msg('请输入程序包名称');
				return false;
			}
			if(data.field.download_url == ""){
				layer.msg('请输入下载链接');
				return false;
			}
			delete data.field.web_url;
		}
		// 存在用户客户id,走修改，默认新增
		var url = '/Advertposition/add';
		if( location.href.indexOf('/advertposition/edit') != -1 ){
			url = '/Advertposition/edit';
			data.field.media_id = info.data.media_id;
			data.field.id = info.data.id;
		} 

		$.ajax({
			url: url,
			type: 'post',
			data: data.field,
			success: function(res){
				res = JSON.parse(res);
				
				if( res.ret == 1 ){
					layer.msg( res.msg, function(){
						window.location.href = '/advertposition/index'
					} );
					return false;
				}else if (res.ret == 0) {
					layer.msg( res.msg, function(){
						
					} );
					return false;
				}
					
			}
		})
		return false;
	});
})