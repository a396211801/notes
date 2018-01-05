<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title"></h3>
                    <div class="box-tools">
                        <form class="form-inline" method="get" action="/Admin/Advert/advertH5List">
                            <div class="form-group input-group-sm">

                                <input type="text" class="form-control" name="ad_name" placeholder="广告名称"
                                       value="<?php echo fn_get_val('ad_name', '') ?>">
                                <select name="put_onoff" class="form-control">
                                    <option value="">状态</option>
                                    <option value="0" <?php if (fn_get_val('put_onoff', 0) == 0) {
                                        echo "selected";
                                    } ?> >关闭
                                    </option>
                                    <option value="1" <?php if (fn_get_val('put_onoff', 1) == 1) {
                                        echo 'selected';
                                    } ?> >开启
                                    </option>
                                </select>
                                <button type="submit" class="btn btn-default btn-sm"><i class="fa fa-search"></i>搜索
                                </button>
                                <a href="/admin/advert/edit" class="btn btn-sm btn-default">新建H5广告</a>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <form action="" class="layui-form">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>广告id</th>
                                <th>广告名称</th>
                                <th>广告图片</th>
                                <th>广告类型</th>
<!--                                <th>广告尺寸</th>-->
                                <th>投放周期</th>
                                <th>广告状态</th>
                                <th>广告开关（开启、关闭）</th>
                                <th>操作（修改、删除）</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if (isset($list['list'])) {
                                foreach ($list['list'] as $i => $value) {
                                    ?>
                                    <tr>
                                        <td><?php echo $value['id']; ?></td>
                                        <td><?php echo $value['ad_name']; ?></td>
                                        <td><img style="height: 50px;" src="<?php echo $value['put_pic']; ?>" alt=""/>
                                        </td>
                                        <td><?php echo $value['business_type']; ?></td>
<!--                                        <td><img style="height: 50px;" src="--><?php //echo $value['put_pic']; ?><!--" alt=""/>-->
                                        </td>
                                        <td><?php echo $value['put_begin_date'] . '-' . $value['put_end_date']; ?></td>
                                        <td><?php echo $value['put_status']; ?></td>
                                        <td>
                                            <input type="checkbox" name="zzz" data-id="<?php echo $value['id']; ?>"
                                                   lay-filter="switchTest" lay-skin="switch" lay-text="开启|关闭"
                                                <?php if ($value['put_onoff'] == "开启") echo "checked" ?>
                                            >
                                        </td>
                                        <td>
                                            <a href="/admin/advert/edit?id=<?php echo $value['id']; ?>" title="修改"
                                               data-status="1" class="layui-btn layui-btn-normal layui-btn-xs">修改</a>
                                            <a href="javascript:void(0);" data-id="<?php echo $value['id']; ?>"
                                               class="delAdvert layui-btn layui-btn-danger layui-btn-xs"
                                               title="删除">删除</a>
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
                    </form>
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

    layui.use(['form'], function () {
        var form = layui.form;
        //监听指定开关
        form.on('switch(switchTest)', function (data) {
            var id = $(this).data('id');
            var url = '';
            if (!this.checked) {
                url = '/ts/api/v1/advert_put_off';
            } else {
                url = '/ts/api/v1/advert_put_on';
            }
            $.ajax({
                url: url,
                type: 'GET',
                data: {
                    aid: id,
                },
                success: function (res) {
                    setTimeout(function () {
                        location.reload()
                    }, 1300)
                }
            })
        });
    })


    $(function () {
        var count = <?php echo $list['count']; ?>;
        var curPage = urlArgs()['p'] || 1;

        $('.pagination').bootstrapPaginator({
            currentPage: curPage,
            totalPages: count,
            size: "small",
            bootstrapMajorVersion: 3,
            alignment: "right",
            numberOfPages: 5,
            itemTexts: function (type, page, current) {
                switch (type) {
                    case "first":
                        return "首页";
                    case "prev":
                        return "上一页";
                    case "next":
                        return "下一页";
                    case "last":
                        return "末页";
                    case "page":
                        return page;
                }
            },
            onPageClicked: function (event, originalEvent, type, page) {
                if (!!location.search) {
                    if (!!location.search.match(/([?|&]p=)\d{1,}/))
                        window.location.href = location.search.replace(/([?|&]p=)\d{1,}/, '$1' + page)
                    else
                        window.location.href = location.search + '&p=' + page
                    return false;
                }
                window.location.href = '?p=' + page;
            },
        });

        $(".changeStatus").click(function () {
            var id = $(this).data('id'),
                status = $(this).data('status'),
                _this = $(this),
                url = '/admin/user/frozenUser';
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
                    layer.msg(res.msg)
                    setTimeout(function () {
                        location.reload()
                    }, 1500)
                }
            })
        });


        $(".delAdvert").click(function () {
            var id = $(this).data('id');
            layer.confirm('你确定要删除？', {
                btn: ['确定', '取消'] //按钮
            }, function () {
                url = '/admin/advert/delAdvert';
                if (!id) {
                    layer.msg('参数错误', {icon: 2});
                    return false;
                }
                $.ajax({
                    url: url,
                    type: 'post',
                    data: {
                        id: id, status: 1,
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
        })
    })
</script>