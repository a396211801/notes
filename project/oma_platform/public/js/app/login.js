/**
 * 登录
 */
 
layui.use(['layer', 'form'],function() {
	var layer = layui.layer,
		form = layui.form;
	//自定义验证规则
	form.verify({
		password: [/(.+){6,12}$/, '密码必须6到12位']
	});
	//监听提交
	form.on('submit(formLogin)', function(data){
		$.ajax({
			url: '/member/login',
			type: 'post',
			data: data.field,
			success: function(res){
				res = JSON.parse(res);
				if( res ){
					layer.msg( res.msg );
					if( res.ret == 1 ){
						window.location.href = '/user/index';
					}else if (res.ret == 0) {
						return false;
					}
					
				} 
			}
		})
		return false;
	});
})