<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title"></h3>
                    <div class="box-tools">
                        <form class="form-inline">
                            <div class="form-group input-group-sm">
                                <a href="/admin/admin/createAccount" class="btn btn-sm btn-default">新建后台用户</a>
                                <a href="/admin/admin/createRoleGroup" class="btn btn-sm btn-default">新建权限组</a>
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
                            <th>真实姓名</th>
                            <th>状态</th>
                            <th>权限组</th>
                            <th>上次登录时间</th>
                            <th>创建时间</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        if(isset($list) && $list) {
                            foreach ($list as $k=>$v) {
                        ?>
                            <tr>
                                <td><?php echo $v['id']; ?></td>
                                <td><?php echo $v['user_name']; ?></td>
                                <td><?php echo $v['real_name']; ?></td>
                                <td><?php echo $v['status_name']; ?></td>
                                <td><?php echo $v['role_group_name']; ?></td>
                                <td><?php echo date("Y-m-d H:i:s",$v['login_time']); ?></td>
                                <td><?php echo date("Y-m-d H:i:s",$v['create_time']); ?></td>
                                <td class="f-14 td-manage">
                                    <a href="/admin/admin/editAccount?id=<?php echo $v['id']; ?>" title="编辑">编辑</a>
                                    <?php
                                        if($v['status'] == 0) {
                                    ?>
                                        <a href="javascript:;" class="changeStatus" data-id="<?php echo $v['id']; ?>" data-status="<?php echo $v['status'];?>">冻结</a>
                                    <?php
                                        } else {
                                    ?>
                                        <a href="javascript:;" class="changeStatus" data-id="<?php echo $v['id']; ?>" data-status="<?php echo $v['status'];?>">解冻</a>
                                    <?php
                                        }
                                    ?>
                                    <a href="javascript:;" class="resetPass" data-id="<?php echo $v['id']; ?>">重置密码</a>
                                    <a href="javascript:;" class="deleteAccount" data-id="<?php echo $v['id']; ?>">删除</a>
                                </td>
                            </tr>
                        <?php
                            }}
                        ?>
                        </tbody>
                    </table>
                </div>
                <div class="box-footer clearfix">
                    <div class="pull-right">
                        <ul class="pagination pagination-sm"></ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>

    var count = <?php echo $count; ?>;
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
        onPageClicked: function (event, originalEvent, type, page) { //异步换页
            window.location.href = '?p='+ page;
        },
    });
$(function(){


    // 改变状态
    $('.changeStatus').click(function(){
        var id = $(this).data('id'),
            status = $(this).data('status'),
            _this = $(this),
            url = '';//默认是冻结
        
        if( status == 0){//默认是冻结
            url = '/admin/admin/frozenAccount'
        } else if( status == 1){//解冻
            url = '/admin/admin/disFrozenAccount'
        }
    
        $.ajax({
            url: url,
            type: 'post',
            data: {
                id: id
            },
            success: function(res){
                res = JSON.parse(res);
                layer.msg(res.msg);
                if( status == 0){
                    _this.parent().parent().find('td:nth-child(4)').html('冻结');
                    _this.data('status', 1).text('解冻');
                } else {
                    _this.parent().parent().find('td:nth-child(4)').html('正常');
                    _this.data('status', 0).text('冻结');
                }
            }
        })
        return false;
    })
    // 删除
    $('.deleteAccount').click(function(){
        var id = $(this).data('id');
        $.ajax({
            url: '/admin/admin/deleteAccount',
            type: 'post',
            data: {
                id: id
            },
            success: function(res){
                res = JSON.parse(res);
                layer.msg(res.msg)
                setTimeout("location.reload();",1000)

            }
        })
    })


    // 重置密码
    $('.resetPass').click(function(){
        var id = $(this).data('id');
        $.ajax({
            url: '/admin/admin/resetPassword',
            type: 'post',
            data: {
                id: id
            },
            success: function(res){
                res = JSON.parse(res);
                layer.msg(res.msg)
            }
        })
    })

})
</script>