<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title></title>
    <script src="/js/lib/jquery.min.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
    </style>
</head>
<body>
<div style="display: none">
    <script src="https://s13.cnzz.com/z_stat.php?id=1271715063&web_id=1271715063" language="JavaScript"></script>
</div>
<iframe frameborder=0 style="position: absolute;width: 350px;height: 100%;min-height: 100%;" marginheight=0 marginwidth=0
        scrolling=no src="<?php echo $url; ?>"></iframe>
<script>
    (function (window) {
        var cookie = {
            set: function (name, value, day) {
                var Days = day | 1;
                var exp = new Date();
                exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
                document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString() + ";path=/";
            },
            get: function (name) {
                var arr, reg = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
                if (arr = document.cookie.match(reg))
                    return unescape(arr[2]);
                else
                    return null;
            },
            del: function (name) {
                var exp = new Date();
                exp.setTime(exp.getTime() - 1);
                var val = this.get(name);
                if (val != null)
                    document.cookie = name + "=" + val + ";expires=" + exp.toGMTString();
            }
        };
        window._cookie = cookie;
    })(window);

    function GetQueryString(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]);
        return null;
    }

    function guid() {
        return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
            var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
            return v.toString(16);
        });
    }

    var random = window._cookie.get("random");
    random = random || guid();
    window._cookie.set("random", random, 365);

    $("iframe").css("width",$("body").width());

    $.ajax({
        "url": "/ts/activity/vpCount",
        "type": "post",
        "dataType": "json",
        "data": {
            awid: GetQueryString("awid"),
            pos: "1-1",
            random: random
        },
        "success": function () {

        }
    })
</script>
</body>
</html>
