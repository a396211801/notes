<div class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title"></h3>
                    <div class="box-tools">
                        <form class="form-inline">
                            <div class="form-group input-group-sm">

                                <input type="text" name="user_name" class="form-control" value="<?php echo fn_get_val('user_name'); ?>">
                                <select class="form-control" name="fc_type">
                                    <option value="-1">财务对象</option>
                                    <?php
                                    foreach($base_info['user']['fc_type'] as $k=>$v) {
                                        ?>
                                        <option value="<?php echo $k ?>" <?php if($k == fn_get_val('fc_type')){ echo ' selected=""selected';} ?>><?php echo $v ?></option>
                                        <?php
                                    }
                                    ?>
                                </select>
                                <select class="form-control" name="fc_has_invoice">
                                    <option value="-1">发票</option>
                                    <?php
                                    foreach($base_info['user']['fc_has_invoice'] as $k=>$v) {
                                        ?>
                                        <option value="<?php echo $k ?>"
                                            <?php if($k == fn_get_val('fc_has_invoice')){ echo ' selected=""selected';} ?>>
                                            <?php echo $v ?>
                                        </option>
                                        <?php
                                    }
                                    ?>
                                </select>
                                <button type="submit" class="btn btn-default btn-sm"><i class="fa fa-search"></i>搜索</button>
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
                            <th>当前分成比</th>
                            <th>总收入</th>
                            <th>打款次数</th>
                            <th>已结算金额</th>
                            <th>待结算金额</th>
                            <th>操作（设置分成比）</th>
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
                                    <td><?php echo $v['rate']; ?></td>
                                    <td><?php echo $v['total_money']; ?></td>
                                    <td><?php echo $v['pay_times']; ?></td>
                                    <td><?php echo $v['total_pay_money']; ?></td>
                                    <td><?php echo $v['total_not_pay_money']; ?></td>
                                    <td>设置</td>
                                </tr>
                                <?php
                            }}
                        ?>
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
<div id="totalpage" data-totalpage="<?php echo $count; ?>" style="display: none;"></div>
<script type="text/javascript" src="/admin/js/app/finance.js"></script>