<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <link href="/css/metro.css" rel="stylesheet">
    </head>
    <body>

        <h1>今日数据</h1>
        <table  class="table  striped hovered cell-hovered border bordered">
            <thead>
                <tr>
                    <td>广告ID</td>
                    <td>广告标题</td>
                    <td>广告类型</td>
                    <td>广告尺寸</td>
                    <td>广告素材</td>
                    <td>最小出价[分]</td>
                    <td>投放时间</td>
                    <td>投定pv</td>
                    <td>参与竟价pv</td>
                    <td>展示成功pv</td>
                    <td>消费[分/CPM]</td>
                    <td>点击</td>
                </tr>
            </thead>
            <?php
            if (isset($_advert)&& $_advert):
                foreach ($_advert as $k => $v):
                    ?>
                    <tr>
                        <td><?php echo $v['id']; ?></td>
                        <td><?php echo $v['title']; ?></td>
                        <td><?php echo $v['ctype']; ?></td>
                        <td><?php echo $v['size']; ?></td>
                        <td><?php echo $v['file_url']; ?></td>
                        <td><?php echo $v['min_cpm_price']; ?></td>
                        <td><?php echo date('Y-m-d', $v['startdate']), '<br>', date('Y-m-d', $v['enddate']); ?> </td>
                        <td><?php echo $v['max_pv']; ?></td>
                        <td><?php echo $v['bidpv']; ?></td>
                        <td><?php echo $v['pv']; ?></td>
                        <td><?php echo $v['cost']; ?></td>
                        <td><?php echo $v['click']; ?></td>
                    </tr>
                    <?php
                endforeach;
            endif;
            ?>
        </table>
    </body>
</html>