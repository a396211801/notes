/**
 * report.js
 */


layui.use(['laytpl'], function(){
    var laytpl = layui.laytpl;
    
	$('#dateStart').datepicker({
        autoclose: true,
        todayHighlight: true,
        format:"yyyy-mm-dd" 
    }).on("changeDate", function(e) {
        $('#dateEnd').datepicker('setStartDate', e.target.value)
    });

	$('#dateEnd').datepicker({
        autoclose: true,
        todayHighlight: true,
        format:"yyyy-mm-dd" 
    }).on("changeDate", function(e) {
        $('#dateStart').datepicker('setEndDate', e.target.value)
    });
		
	
	$('#timeSlot').change(function(){
		var val = $(this).find('option:selected').val();
        // 设置初始值，防止第二次点击一样的时候么有反应
        $(this).val(0);
        // 下面设置日期时有一个bug，有时设置月初和季初不会显示出来， 故又设置边界，又设置其值。
		switch (val) {
			case 'month':
				// 本月
				$('#dateStart').datepicker('setDate', getMonthStartDate())
				$('#dateEnd').datepicker('setDate', getMonthEndDate())
                $('#dateStart').val(getMonthStartDate())
                $('#dateEnd').val(getMonthEndDate())
				break;
			case 'lastweek':
				// 上周
				$('#dateStart').datepicker('setDate', getLastWeekStartDate())
				$('#dateEnd').datepicker('setDate', getLastWeekEndDate())
                $('#dateStart').val(getLastWeekStartDate())
                $('#dateEnd').val(getLastWeekEndDate())
				break;
			case 'quarter':
				// 本季度
				$('#dateStart').datepicker('setDate', getQuarterStartDate())
				$('#dateEnd').datepicker('setDate', getQuarterEndDate())
                $('#dateStart').val(getQuarterStartDate())
                $('#dateEnd').val(getQuarterEndDate())
				break;
			default:
				layer.msg("时间段类型错误！", {
                    icon: 2,
                    time: 2000
                })
				break;
		}
	})

	



	var curPage = urlArgs()['p'] || 1
		, totalPage = $('#totalpage').data('totalpage') || 1
    	;
    
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
    
    // 
    $('#searchTplDedail').click(function(){
        loadTplDetail();
        loadListData();
    })

    //
    function loadTplDetail(page){
        page = page || 1;
        var params = {};
        params.tpl_id = urlArgs()['tpl_id']; 
        params.start_date = $('#dateStart').val();
        params.end_date = $('#dateEnd').val();
        params.name = $('input[name=name]').val();
        params.p = page;
        if( params.tpl_id ){
            var countBox = $('#detail');
            $.ajax({
                url: '/Admin/Report/reportTplDetail',
                type: 'post',
                data: params,
                success: function(res){
                    res = JSON.parse(res);
                    if(res.ret == 1){
                        // layer.msg(res.msg)
                        var list = res.data.list;
                        var count = res.data.count;
                        list.map(function(item){
                            item.date = fmtDate(item.date);
                        })
                        laytpl($('#tpl-detail').html()).render(list, function(html){
                            countBox.html(html)
                        });
                        $('#detail-pagination').bootstrapPaginator({
                            currentPage: page,
                            totalPages: count,
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
                               loadTplDetail(page);
                               // history.pushState(null, null, "#lp="+page)
                            },
                        });
                    }else{
                        layer.msg(res.msg)
                    }
                },
                error: function(err){
                    
                }
            })
        } 
    }

    
    //广告数据统计
    function loadListData(page){
        page = page || 1;
        var params = {};
        params.tpl_id = urlArgs()['tpl_id'];
        params.start_date = $('#dateStart').val();
        params.end_date = $('#dateEnd').val();
        params.name = $('input[name=name]').val();
        params.p = page;
        if( params.tpl_id ){
            var countBox = $('#ad-data-list');
            $.ajax({
                url: '/Admin/Report/getAdvertData',
                type: 'post',
                data: params,
                success: function(res){
                    res = JSON.parse(res);
                    if(res.ret == 1){
                        // layer.msg(res.msg)
                        var list = res.data.list;
                        var count = res.data.count;
                        list.map(function(item){
                            item.date = fmtDate(item.date);
                        })
                        laytpl($('#tpl-list').html()).render(list, function(html){
                            countBox.html(html)
                        });
                        $('#ad-data-pagination').bootstrapPaginator({
                            // currentPage: page,
                            totalPages: count,
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
                               loadListData(page);
                               // history.pushState(null, null, "#lp="+page)
                            },
                        });
                    }else{
                        layer.msg(res.msg)
                    }
                },
                error: function(err){
                    
                }
            })
        }
    }




    loadTplDetail();
    loadListData();


    // 修改收益
    $(".modify-profit").click(function(){
        var id = $(this).data("id");
        // 未获取到id
        if( !id ){
            layer.msg( "未知错误！" ,  {
                icon: 2,
                time: 2000
            });
            return false;
        }
        // prompt层
        layer.prompt({title: '输入收益', formType: 0}, function(money, index){
            // 判断是否是输入的数字，只能是数字
            if( /^[0-9]+(\.[0-9]{1,})?$/.test(money) ){
                var patt1 = money.split('.')[1];
                if( patt1 && patt1.length > 2 ){
                    layer.msg("小数点后精确到2位！");
                    return false;
                }
                $.ajax({
                    url : '/Admin/report/updateIncome',
                    type: 'post',
                    data: {
                        id   : id,
                        money: money
                    },
                    success: function(res){
                        res = JSON.parse(res);
                        if(res.ret == 0){
                            layer.msg( res.msg ,  {
                                icon: 1,
                                time: 1000
                            }, function(){
                                layer.close(index);
                            });
                            location.reload();
                        }
                    }
                })
            }else{
                layer.msg("请输入纯数字！");
            }
        });
    })




})

layui.use(['laytpl'], function(){
    $('.update').click(function(){
        var ss = location.search;
        var table = $('.update').attr('data-table');
        var type = $('.update').attr('data-type');
        if (table == '' || table == null ) {
            layer.msg('参数错误', {icon: 2});
            return false;
        }
        var url = '';
        switch(table)
        {
            case 'report_advert':
                url = '/admin/report/reportadvert' + ss;
                break;
            case 'report_advert_position':
                url = '/admin/report/reportadvertposition' + ss;
                break;
            case 'report_advert_position_h5':
                url = '/admin/report/reportAdvertpositionDetaile' + ss;
                break;
            case 'report_tpl':
                url = '/admin/report/reporttpl' + ss;
                break;
            default:
                url = '/admin/report/reportadvertposition' + ss;
        }
        if (type == 1) {
            url = '/admin/report/reportAdvertDetaile' + ss;
        }
        if (type == 2) {
            url = '/admin/report/reporttpldetail' + ss;
        }
        $.ajax({
            url: "/admin/report/updateTable",
            type: "post",
            data: {'table':table},
            dataType: "json",
            success: function (res) {
                if (res.ret == 0) {
                    layer.msg(res.msg, {icon: 1});
                    setTimeout(function () {
                        window.location.href = url;
                    }, 1500)
                } else {
                    layer.msg(res.msg, {icon: 2});
                }
            }
        });
        return false;
    })
})