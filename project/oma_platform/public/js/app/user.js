layui.use(['form'],function() {
	var form = layui.form;

	//监听提交
	form.on('submit(formUser)', function(data){
		$.ajax({
			url: '/user/editUser',
			type: 'post',
			data: data.field,
			success: function(res){
				res = JSON.parse(res);
				if( res ){
					layer.msg( res.msg );
					if( res.ret == 1 ){
						return false;
						
					}else if (res.ret == 0) {
						return false;
					}
					
				} 
			}
		})
		return false;
	});
	
	// 添加银行监听提交
	form.on('submit(formBank)', function(data){

		layer.msg(JSON.stringify(data.field))
		// $.ajax({
		// 	url: '/user/editUser',
		// 	type: 'post',
		// 	data: data.field,
		// 	success: function(res){
		// 		res = JSON.parse(res);
		// 		if( res ){
		// 			layer.msg( res.msg );
		// 			if( res.ret == 1 ){
		// 				return false;
						
		// 			}else if (res.ret == 0) {
		// 				return false;
		// 			}
					
		// 		} 
		// 	}
		// })
		return false;
	});

})