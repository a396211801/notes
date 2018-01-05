/**
 * 结算报表
 */

layui.use(['layer', 'form', 'laypage', 'laydate'], function() {
	var laypage = layui.laypage
		, form = layui.form
        , laydate = layui.laydate
		;


    laydate.render({
        elem: '#start_date' 
    });
    laydate.render({
        elem: '#end_date' ,
        max: yesterday
    });

    var page = urlArgs();

    laypage.render({
        elem: 'settlement-pagination'
        , count: count //数据总数
        , curr: page.p //当前页
        , jump: function(obj, first) {
            // 当前页就跳出
            if (obj.curr == page.p) {
                return;
            }
            if (page.p == undefined){
            	page.p = 1;
            	return;
            }
            // 有条件
            if(!!location.search){
				window.location.href = location.search.replace(/&p=\d{1,}/,'') + '&p=' + obj.curr;
				return;
            }
            window.location.href = '?p=' + obj.curr;
        }
    });




    //自定义验证规则
    form.verify({
        //password: [/(.+){1,12}$/, '密码必须6到12位']
    });


    //监听提交
    form.on('submit(formDemo)', function(data) {
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