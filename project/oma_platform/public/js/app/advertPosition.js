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
        elem: '#end_date'
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



    // 链接弹窗
    $('.popBox').click(function(){
        var info = $(this).data('info');
        $('#infoName').text(info.name)
        $('#infoId').text(info.id)
        $('#infoType').text(info.type)
        $('#linkText').text(info.h5_url)
        $('.alertBox').show()
    })
    // 复制链接
    var clipboard = new Clipboard('#copyLink', {
        text: function(trigger) {
            return $('#linkText').text().trim();
        }
    });
    clipboard.on('success', function(e) {
        layer.msg('复制成功')
    });
    clipboard.on('error', function(e) {
         layer.msg('复制失败')
    });

 
    
})