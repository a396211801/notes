<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title"></h3>
                    <div class="box-tools">
                        <form class="form-inline">
                            <div class="form-group input-group-sm">
                                <p class="form-control-static">日期范围：</p>
                                <input id="dateStart" readonly type="text" class="form-control dateControl" style="width: 84px;" name="start_date" value="<?php if(fn_get_val('start_date')){ echo fn_get_val('start_date');}else{ echo date('Y-m-d', strtotime('-7 days'));} ?>" >
                                <p class="form-control-static">-</p>
                                <input id="dateEnd" readonly type="text" class="form-control dateControl" style="width: 84px;" name="end_date" value="<?php if(fn_get_val('end_date')){ echo fn_get_val('end_date');}else{ echo date('Y-m-d',time());} ?>">
                                <select class="form-control" id="timeSlot">
                                    <option value="0">时间段</option>
                                    <option value="month">本月</option>
                                    <option value="lastweek">上周</option>
                                    <option value="quarter">本季度</option>
                                </select>
                                <input type="text" name="name" value="<?php echo fn_get_val('name')?>" class="form-control" placeholder="ID/广告位名/用户名">
                                
                                <select class="form-control" name="type">
                                    <option value="0">广告位类型</option>
                                    <?php
                                    foreach($base_info['advert']['type'] as $k=>$v) {
                                        ?>
                                        <option value="<?php echo $k ?>"
                                            <?php if($k == fn_get_val('type')){ echo ' selected="selected"';}  ?>>
                                            <?php echo $v ?>
                                        </option>
                                        <?php
                                    }
                                    ?>
                                </select>
                                <button type="submit" class="btn btn-default btn-sm"><i class="fa fa-search"></i>搜索</button>
                                <button type="button" class="btn btn-default btn-sm update" data-table="report_advert_position">更新数据</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>广告位id</th>
                            <th>广告位名称</th>
                            <th>用户名称</th>
                            <th>投放类型</th>
                            <th>UV（累计）</th>
                            <th>IP（累计）</th>
                            <th>曝光量（累计）</th>
                            <th>点击量（累计）</th>
                            <th>点击率</th>
                            <th>实际收益（累计）</th>
                            <th>用户收益（累计）</th>
                            <th>利润</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        if(isset($list['list']) && $list['list']) {
                        foreach ($list['list'] as $k=>$v) {
                        ?>
                        <tr>
                            <td><?php echo $v['adw_id'];?></td>
                            <td>
                                <a href="/Admin/Report/reportAdvertpositionDetaile?adw_id=<?php echo $v['adw_id'];if(fn_get_val('start_date')){echo '&start_date=' . fn_get_val('start_date');};if(fn_get_val('end_date')){echo '&end_date=' . fn_get_val('end_date');}?>" class="colorLink">
                                <?php echo $v['adw_name']?>
                                </a>
                            </td>
                            <td><?php echo $v['user_name']?></td>
                            <td><?php echo $v['type']?></td>
                            <td><?php echo $v['uv']?></td>
                            <td><?php echo $v['ip']?></td>
                            <td><?php echo $v['pv']?></td>
                            <td><?php echo $v['click']?></td>
                            <td><?php echo $v['click_rate']?></td>
                            <td><?php echo $v['total_money']?></td>
                            <td><?php echo $v['user_money']?></td>
                            <td><?php echo $v['profit']?></td>
                        </tr>
                        <?php }} else { echo '<tr>
                    <td colspan="13"><div style="text-align: center;">暂无数据</div></td>
                </tr>';}?>
                        </tbody>
                    </table>

                </div>

                <div class="box-footer clearfix">
                    <div class="pull-right">
                        <ul class="pagination"></ul>
                    </div>
                </div>
            </div>

<div class="callout">
    <h4>当前条件下共计</h4>
    <div>
        总UV
        <span class="text-danger"><?php echo isset($list['total']['sum_uv']) ? $list['total']['sum_uv'] : 0?></span>
        总IP
        <span class="text-danger"><?php echo isset($list['total']['sum_ip']) ? $list['total']['sum_ip'] : 0?></span>
        曝光量
        <span class="text-danger"><?php echo isset($list['total']['sum_pv']) ? $list['total']['sum_pv'] : 0?></span>
        点击量
        <span class="text-danger"><?php echo isset($list['total']['sum_click']) ? $list['total']['sum_click'] : 0?></span>
        实际收益
        <span class="text-danger"><?php echo isset($list['total']['sum_total_money']) ? $list['total']['sum_total_money'] : 0.00?></span>
        用户收益
        <span class="text-danger"><?php echo isset($list['total']['sum_user_money']) ? $list['total']['sum_user_money'] : 0.00?></span>
        利润
        <span class="text-danger"><?php echo isset($list['total']['sum_profit']) ? $list['total']['sum_profit'] : 0.00?></span>
    </div>
</div>


    
</div>

<div id="totalpage" data-totalpage="<?php echo $list['count']; ?>" style="display: none;"></div>
<script type="text/javascript" src="/admin/js/app/report.js"></script>