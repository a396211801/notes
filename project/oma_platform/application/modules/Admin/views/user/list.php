<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">网站主列表</h3>
                    <div class="box-tools">
                        <form action="/admin/user/list" class="form-inline" method="get" >
                            <div class="form-group input-group-sm">
                                <input type="text" name="user_name" class="form-control" placeholder="用户名" value="<?php echo fn_get_val('user_name'); ?>">
                                <button type="submit" class="btn btn-sm btn-default">搜索</button>
                                <a href="/admin/user/create" class="btn btn-sm btn-default">新建网站主</a>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>用户id</th>
                            <th>用户名</th>
                            <th>联系电话</th>
                            <th>邮箱</th>
                            <th>QQ</th>
                            <th>创建时间</th>
                            <th>账号状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php if (isset($list['list'])) {
                            foreach ($list['list'] as $i => $value) {
                                $status;
                                switch ($value['status']) {
                                    case 0;
                                        $status = '正常';
                                        break;
                                    case 1;
                                        $status = '冻结';
                                        break;
                                    case 2;
                                        $status = '删除';
                                        break;
                                    default:
                                        $status = '不正常';
                                }
                                ?>
                                <tr>
                                    <td><?php echo $value['id']; ?></td>
                                    <td><?php echo $value['user_name']; ?></td>
                                    <td><?php echo $value['phone']; ?></td>
                                    <td><?php echo $value['email']; ?></td>
                                    <td><?php echo $value['qq']; ?></td>
                                    <td><?php echo date('Y-m-d H:i:s', $value['create_time']); ?></td>
                                    <td>
                                        <span class="layui-btn layui-btn-xs <?php if ($value['status']){ echo ' layui-btn-warm'; } ?>"  ><?php echo $status; ?></span>
                                    </td>
                                    <td>
                                        <?php if ($value['status'] == 1) { ?>
                                            <a href="javascript:void(0);" title="解冻" class="changeStatus layui-btn layui-btn-danger layui-btn-xs"
                                               data-id="<?php echo $value['id']; ?>" data-status="0">解冻</a>
                                        <?php } else { ?>
                                            <a href="javascript:void(0);" title="冻结" class="changeStatus layui-btn layui-btn-danger layui-btn-xs"
                                               data-id="<?php echo $value['id']; ?>" data-status="1">冻结</a>
                                        <?php } ?>
                                        <a href="/admin/user/edit?id=<?php echo $value['id']; ?>" title="编辑" class="layui-btn layui-btn-normal layui-btn-xs"  data-status="1">编辑</a>
                                        <a href="javascript:void(0);" data-id="<?php echo $value['id']; ?>" class="changePassword layui-btn layui-btn-danger layui-btn-xs" title="重置密码">重置密码</a>


                                    </td>
                                </tr>
                            <?php }
                        } else { ?>
                            <tr>
                                <td>暂无数据</td>
                            </tr>
                        <?php } ?>
                        </tbody>
                    </table>
                </div>
                <div class="box-footer clearfix">
                    <div class="pull-right">
                        <ul class="pagination"></ul>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<div id="totalpage" data-totalpage="<?php echo $list['count']; ?>" style="display: none;"></div>
<script>
    

    $(function () {
        var count = <?php echo $list['count']; ?>;
        var curPage = urlArgs()['p'] || 1;
    
        $('.pagination').bootstrapPaginator({
            currentPage: curPage,
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
            onPageClicked: function (event, originalEvent, type, page) {
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

        $(".changeStatus").click(function () {
            var id = $(this).data('id'),
                status = $(this).data('status'),
                _this = $(this),
                url = '/admin/user/frozenUser';
            layer.confirm('你确定要冻结/解冻？', {
                btn: ['确定', '取消'] //按钮
            }, function () {
                if (!id) {
                    return false;
                }
                $.ajax({
                    url: url,
                    type: 'post',
                    data: {
                        id: id,
                        status: status,
                    },
                    success: function (res) {
                        res = JSON.parse(res);
                        layer.msg(res.msg, {icon: 1});
                        setTimeout(function () {
                            location.reload()
                        }, 1500)
                    }
                })
            }, function () {
                layer.msg('已取消', {icon: 2});
            });
        });


        $(".changePassword").click(function(){
            var id = $(this).data('id')
            url = '/admin/user/resetPsw';

            layer.confirm('你确定要重置密码？', {
                btn: ['确定', '取消'] //按钮
            }, function () {
                if(!id){
                    return false;
                }
                $.ajax({
                    url: url,
                    type: 'post',
                    data: {
                        id: id,
                    },
                    success: function(res){
                        res = JSON.parse(res);
                        layer.msg(res.msg, {icon: 1});
                    }
                })
            }, function () {
                layer.msg('已取消', {icon: 2});
            });

        })
    })
</script>