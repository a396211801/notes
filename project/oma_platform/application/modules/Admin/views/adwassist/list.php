<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title"></h3>
                    <div class="box-tools">
                        <form class="form-inline">
                            <div class="form-group input-group-sm">
                                <a href="/Admin/Adwassist/add" class="btn btn-default btn-sm">新建辅助规则</a>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>广告位名称</th>
                            <th>辅助类型</th>
                            <th>跳转概率</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php if (isset($list)): ?>
                            <?php foreach ($list as $value): ?>
                                <tr>
                                    <td><?php echo $value['id']; ?></td>
                                    <td><?php echo $value['adw_name'] . "--" . $value['adw_id'] ?></td>
                                    <td><?php echo $value['show_type'] == 1 ? "直跳" : "后退" ?></td>
                                    <td><?php echo $value['show_type'] == 1 ? $value['show_rate']."%" : "-" ?></td>
                                    <td>
                                        <a href="/admin/Adwassist/edit?id=<?php echo $value['id']; ?>"
                                           class="layui-btn layui-btn-normal layui-btn-xs">编辑</a>
                                        <a href="javascript:void(0);" data-id="<?php echo $value['id']; ?>"
                                           class="layui-btn layui-btn-danger layui-btn-xs" data-event="del">删除</a>
                                    </td>
                                </tr>
                            <?php endforeach;endif; ?>
                        </tbody>
                    </table>
                </div>
                <div class="box-footer clearfix">
                    <div class="pull-right">
                        <ul class="pagination">
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="totalpage" data-totalpage="<?php echo $count; ?>" style="display: none;"></div>
<script type="text/javascript">
    layui.use(["layer"], function () {
        var $ = layui.jquery;
        var layer = layui.layer;
        $("[data-event='del']").on("click", function () {
            var id = $(this).attr("data-id");
            $.ajax({
                url: "/admin/tpl/del",
                type: "post",
                data: {tid: id},
                dataType: "json",
                success: function (res) {
                    if (res.ret == 0) {
                        layer.msg(res.msg, {icon: 1});
                        setTimeout(function () {
                            window.history.go(0);
                        }, 1500)
                    } else {
                        layer.msg(res.msg, {icon: 2});
                    }
                }
            })
        })
    })
</script>
<script type="application/javascript" src="/admin/js/app/common.js"></script>