<div class="section fl">
    <!--头部-->
    <div class="top">
        <h2>结算报表</h2>
    </div>
    <!--内容部分-->
    <div class="cont accountCont backWhite">
        <span>付款规则</span>
        <p class="fontSize_12">
            每月前5个工作日内结算上一个月收益。<br />
            当税前金额超过800元、且无法提供发票时，我们联盟将进行代扣税10%。如果税前收入低于800元，将不做代扣税。<br />
            提供发票时，请在每月10号前邮寄发票给我们。（<a href="javascript:;" class="colorLink">企业资质材料下载</a>）<br />
            当月邮寄发票后请在平台提交发票信息（包含发票编号和公司名称）<br />
        </p>
    </div>
    <div class="tableCont1 cont tableCont fontSize_12 relative backWhite">
        <table border="0" cellspacing="0" cellpadding="0" class="W">
            <tr>
                <th>日期</th>
                <th>发票</th>
                <th>税前收入</th>
                <th>代扣税</th>
                <th>无效流量扣款</th>
                <th>税后收入</th>
                <th>状态</th>
            </tr>

            <?php
                if(isset($list) && $list) {
                    foreach ($list as $k=>$v) {
            ?>
            <tr>
                <td><?php echo date("Y-m-d",$v['date']); ?></td>
                <td><?php echo $v['has_invoice_name']; ?></td>
                <td><?php echo $v['money']; ?></td>
                <td><?php echo $v['pay_tax']; ?></td>
                <td><?php echo $v['invaild_money']; ?></td>
                <td><?php echo $v['real_money']; ?></td>
                <td><?php echo $v['status_name']; ?></td>
            </tr>
            <?php
                }}
            ?>
        </table>
        <!--页码-->
        <div id="settlement-pagination" class="pagination"></div>

    </div>
</div>


<script>
    var count = <?php echo $count; ?>;
</script>
<script type="text/javascript" src="/js/app/settlement.js"></script>