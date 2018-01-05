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
                                <input type="text" class="form-control" name="name" value="<?php echo fn_get_val('name')?>" placeholder="模板名称">
                                <button type="button" id="searchTplDedail" class="btn btn-default btn-sm"><i class="fa fa-search"></i>搜索</button>
                                <button type="button" class="btn btn-default btn-sm update" data-table="report_advert" data-type="2">更新数据</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th>日期</th>
                            <th>模板名称</th>
                            <th>模板类型</th>
                            <th>游戏模板UV</th>
                            <th>用户游戏点击平均值</th>
                            <th>开始游戏按钮点击</th>
                            <th>马上使用按钮点击</th>
                            <th>下方奖品列表点击</th>
                            <th>我的奖品按钮点击</th>
                            <th>结束页PV</th>
                            <th>1号位立即参与点击</th>
                            <th>2号位立即参与点击</th>
                            <th>规则按钮点击</th>
                            <th>详情页立即使用点击</th>
                        </tr>
                        </thead>
                        <tbody id="detail"></tbody>
                    </table>
                </div>
                <div class="box-footer clearfix">
                    <div class="pull-right">
                        <ul id="detail-pagination"></ul>
                    </div>
                </div>
            </div>
            
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">广告数据统计</h3>
                </div>
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover merge-cell text-center">
                        <thead> 
                        <tr>
                            <th rowspan="2">时间</th>
                            <th colspan="5">广告统计</th>
                            <th colspan="3">我的奖品列表</th>
                        </tr>
                        <tr>
                            <th>PV</th>
                            <th>UV</th>
                            <th>IP</th>
                            <th>点击量</th>
                            <th>点击率(UV计算)</th>
                            <th>展现量</th>
                            <th>点击量</th>
                            <th>点击率</th>
                        </tr>
                        </thead>
                        <tbody id="ad-data-list">
                            
                        </tbody>
                    </table>
                </div>
                <div class="box-footer clearfix">
                    <div class="pull-right">
                        <ul id="ad-data-pagination"></ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script id="tpl-list" type="text/html">
    {{# layui.each(d, function(index, item){  }}
    <tr>
        <td>{{item.date}}</td>
        <td>{{item.pv}}</td>
        <td>{{item.uv}}</td>
        <td>{{item.ip}}</td>
        <td>{{item.click}}</td>
        <td>{{item.click_rate}}</td>
        <td>{{item.my_prize_pv}}</td>
        <td>{{item.o_ck_5}}</td>
        <td>{{item.my_prize_rate}}</td>
    </tr>
    {{#  }); }}
    {{# if(d.length === 0){ }}
    <tr>
        <td colspan="9"  class="text-center">暂无数据</td>
    </tr>
    {{#  } }}
</script>
<script id="tpl-detail" type="text/html">
    {{# layui.each(d, function(index, item){  }}
    <tr>
        <td>{{item.date}}</td>
        <td>{{item.tpl_name}}</td>
        <td>{{item.tpl_type_name}}</td>
        <td>{{item.uv}}</td>
        <td>{{item.avg_click}}</td>
        <td>{{item.o_ck_1}}</td>
        <td>{{item.o_ck_2}}</td>
        <td>{{item.o_ck_3}}</td>
        <td>{{item.o_ck_4}}</td>
        <td>{{item.o_pv_1}}</td>
        <td>{{item.o_ck_6}}</td>
        <td>{{item.o_ck_7}}</td>
        <td>{{item.o_ck_8}}</td>
        <td>{{item.o_ck_5}}</td>
    </tr>
    {{#  }); }}
    {{# if(d.length === 0){ }}
    <tr>
        <td colspan="14" class="text-center">暂无数据</td>
    </tr>
    {{#  } }}
</script>

<div id="totalpage" data-totalpage="<?php echo isset($list['count']) ? $list['count'] : 0; ?>" style="display: none;"></div>
<script type="text/javascript" src="/admin/js/app/report.js"></script>