layui.use(['laytpl', 'form'], function(){
    var laytpl = layui.laytpl
        , form = layui.form
        ;

	var curPage = urlArgs()['p'] || 1
		, totalPage = $('#totalpage').data('totalpage') || 1
    	;
	// 这里是总数，要换成页数
    $('.pagination').bootstrapPaginator({
        currentPage: curPage,
        totalPages: totalPage,
        size:"small",
        bootstrapMajorVersion: 3,
        alignment:"right",
        numberOfPages:5,
        itemTexts: function (type, page, current) {
            switch (type) {
                case "first": return "首页";
                case "prev": return "上一页";
                case "next": return "下一页";
                case "last": return "末页";
                case "page": return page;
            }
        },
        onPageClicked: function (event, originalEvent, type, page) { //异步换页
            // 有条件
            if(!!location.search){
            	if( !!location.search.match(/([?|&]p=)\d{1,}/) )
                	window.location.href = location.search.replace(/([?|&]p=)\d{1,}/,'$1'+page)
                else
                	window.location.href = location.search + '&p=' + page
                return false;
            }
            window.location.href = '?p='+ page;
        },
    });
})