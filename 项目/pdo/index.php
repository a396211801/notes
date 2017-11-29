<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style type="text/css">
        .box {
            width: 90%;
            margin: 0 auto;
            text-align: center;
        }

        table {
            width: 100%;
            line-height: 30px;
            border: 1px solid #000;
            border-left: none;
        }

        table th {
            border-left: 1px solid #000;
        }

        table td {
            border-top: 1px solid #000;
            border-left: 1px solid #000;
        }

        p {
            text-align: right;
        }

        p a {
            text-decoration: none;
            color: #000;
            padding: 0 5px;
        }

        .red a {
            color: red;
        }
    </style>
    <script src="js/jquery-2.1.3.min.js"></script>
    <script src="js/laytpl.js"></script>
</head>
<body>
<div class="box">
    <h2>列表数据</h2>
    <table border="0" cellspacing="0" cellpadding="0" id="info_list">
        <thead>
        <tr>
            <th style=" width: 10%">Uid</th>
            <th>userName</th>
            <th>watermark</th>
            <th>sex</th>
            <th>fansNum</th>
            <th>flowNum</th>
            <th>weiboNum</th>
            <th>leaveNum</th>
            <th>time</th>
        </tr>
        </thead>
        <tbody></tbody>
    </table>
    <p id="page">
    </p>
</div>
</body>
</html>
<script type="text/html" id="info_tpl">
    <tr>
        <td style="text-align: center;" class="list_{{d.id}} {{d.cls}}"><a href="https://weibo.com/u/{{d.id}}"
                                                                           target="_blank">{{d.id}}</a></td>
        <td style="text-align: center;">{{d.userName}}
            <button class="box" style="width: 45px;" data-id="{{d.id}}">选择</button>
        </td>
        <td style="text-align: center;">{{d.watermark}}</td>
        <td style="text-align: center;">{{d.sex}}</td>
        <td style="text-align: center;">{{d.fansNum}}</td>
        <td style="text-align: center;">{{d.flowNum}}</td>
        <td style="text-align: center;">{{d.weiboNum}}</td>
        {{# if(d.leaveNum){ }}
        <td style="text-align: center;">{{d.leaveNum}}</td>
        {{# }else{ }}
        <td style="text-align: center;">无</td>
        {{# } }}
        <td style="text-align: center;">{{d.time}}</td>
    </tr>
</script>

<script>
    $(function () {

        $("#info_list").on("click", '.box', function () {
            var id = $(this).data('id');
            $.post(
                'weibo.php?a=selected', {'id': id}, function (d) {
                    if (d.code == 0) {
                        var cos = '.list_' + id;
                        $("#info_list").find(cos).addClass('red');
                    }
                }, 'json'
            );
        });
        var page = {'page': <?php echo $_GET['page'] ? (int)$_GET['page'] : 1; ?>, 'a': 'list'};

        function load_weibo_list() {
            $.ajax({
                'url': 'weibo.php',
                'type': 'get',
                'data': page,
                'dataType': "json",
                'success': function (d) {
                    var table_obj = $("#info_list tbody");
                    table_obj.html('');
                    if (d.code == 0) {
                        var tpl = $('#info_tpl').html();
                        $.each(d.data, function (k, v) {
                            console.log(v);
                            v.cls = "";
                            if (v.selected == 1) {
                                v.cls = "red";
                            }
                            laytpl(tpl).render(v, function (string) {
                                table_obj.append(string);
                            });
                        });
                    }
                    init_list_page(d.page);
                },
            });
        }

        function init_list_page(data) {
            var text = '<span>共<b>' + data.total + '</b>条记录<b>' + data.cpage + '/' + data.pagenum + '</span>';
            if (data.cpage == 1) {
                text += '<span> 首页 ';
            } else {
                text += '<span><a href="' + data.url + '?page=1">首页</a>';
            }
            if (data.prev) {
                text += '<a href="' + data.url + '?page=' + data.prev + '">上一页</a>';
            }
            if (data.next) {
                text += '<a href="' + data.url + '?page=' + data.next + '">下一页</a>';
            }
            if (data.pagenum) {
                text += '<a href="' + data.url + '?page=' + data.pagenum + '">尾页</a>';
            }
            $("#page").append('');
            $("#page").append(text);
        }

        function init_list_info() {
            load_weibo_list()
        }

        init_list_info();
    })
</script>