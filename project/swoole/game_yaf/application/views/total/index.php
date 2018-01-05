<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="image/x-icon" href="//yun.yuyiya.com/tuia/tuia.ico">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="format-detection" content="telephone=no"/>
    <title>数据统计</title>
    <style type="text/css">
        .box h1 {
            text-align: center;
            font-size: 24px;
        }

        .box .txt {
            height: 19px;
        }

        .box table {
            border: 1px solid #3C3C3C;
            font-size: 12px;
            text-align: center;
            min-width: 1000px;
        }

        .box table th {
            font-weight: normal;
            border-left: 1px solid #3C3C3C;
        }

        .box table th:nth-of-type(1) {
            border-left: none;
        }

        .box table td:nth-of-type(1) {
            border-left: none;
        }

        .box table td {
            height: 30px;
            line-height: 30px;
            border-left: 1px solid #3C3C3C;
            border-top: 1px solid #3C3C3C;
        }
    </style>
    <script src="/js/jquery-2.1.3.min.js"></script>
    <script src="/js/laytpl.js"></script>
</head>

<body>
<div class="box">
    <h1>点击统计数</h1>
    <table border="0" cellspacing="0" cellpadding="0" id="content_list">
        <thead>
        <tr>
            <th>点击方式</th>
            <th>2244(娃娃机)</th>
            <th>2324(砸金蛋)</th>
            <th>2390(刷红包)</th>
            <th>2419(捞奖品)</th>
            <th>2421(转盘)</th>
            <th>2426(打金蛋)</th>
            <th>2427(筛子)</th>
            <th>3151(砸鸭子)</th>
            <th>4000(转盘)</th>
            <th>4002(转盘红包)</th>
        </tr>
        </thead>
        <tbody></tbody>
    </table>
</div>
<script type="text/template" id="content_list_tpl">
    <tr>
        <td style="width:290px;">{{d.name}}</td>
        {{# if(d.o==0 || d.o){ }}

        {{# if(d.number==0 || d.number){ }}
        <td colspan='5'>{{d.o}}</td>
        <td colspan='6'>{{d.number}}</td>
        {{# }else{ }}
        <td colspan='10'>{{d.o}}</td>
        {{# } }}
        {{# }else{ }}
        <td>{{d.a}}</td>
        <td>{{d.b}}</td>
        <td>{{d.c}}</td>
        <td>{{d.d}}</td>
        <td>{{d.e}}</td>
        <td>{{d.f}}</td>
        <td>{{d.g}}</td>
        <td>{{d.h}}</td>
        <td>{{d.t}}</td>
        <td>{{d.l}}</td>
        {{# } }}
    </tr>
</script>
<script>
    $(function () {
        var average = <?php echo isset($_GET['average']) ? $_GET['average'] : 0;?>;

        function load_list() {
            if (average) {
                average = 1;
            }
            $.ajax({
                url: '/total/getData/',
                type: 'post',
                'data': {
                    'date': '<?php echo isset($_GET['date']) && $_GET['date'] ? $_GET['date'] : date("Y-m-d"); ?>',
                    'average': average
                },
                dataType: 'json',
                'success': function (d) {
                    var table_obj = $("#content_list tbody");
                    table_obj.html('');
                    if (d.code == 0) {
                        var tpl = $('#content_list_tpl').html();
                        $.each(d.data, function (k, v) {
                            laytpl(tpl).render(v, function (string) {
                                table_obj.append(string);
                            });
                        });
                    }
                },
            });
        }

        load_list()
    })
</script>

</body>

</html>