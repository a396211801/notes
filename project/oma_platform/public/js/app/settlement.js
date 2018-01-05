/**
 * 结算报表
 */
 
layui.use(['layer', 'laypage'],function() {
	var laypage = layui.laypage;

	var page = urlArgs();
	
	laypage.render({
		elem: 'settlement-pagination'
		, count: count //数据总数
		, curr: page.p //当前页
	    , jump: function(obj, first){
	    	// 当前页就跳出
			if (obj.curr == page.p) {
                return;
            }
            if (page.p == undefined){
            	page.p = 1;
            	return;
            }
			window.location.href = '?p=' + obj.curr;
		}
	});
})