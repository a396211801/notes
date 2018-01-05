(function () {
    var util = {};

    util.completeUrl = "http://new.yytaomeng.com/";
   // tool.completeUrl = "http://192.168.1.128:81/";

    //路径拼接后半段列表
    var interfaceList = [
    ];
    //post请求方法
    util.ajax = function (key, data, success) {
        $.ajax({
            url: key.indexOf('http://') >= 0 ? key : util.interfaceUrl(key),
            data: data ? data : {},
            dataType: 'json',
            type: 'POST',
            jsonpCallback: "successCallback",
            async: true,
            header:{

            },
            success: success ? success : function () {

                }
        });
    };
    //get请求
    util.getAjax = function (key, data, success) {
        $.ajax({
            url: key.indexOf('http://') >= 0 ? key : util.interfaceUrl(key),
            data: data ? data : {},
            dataType: 'json',
            async: true,
            type: 'GET',
            contentType: "application/json; charset=utf-8",
            jsonpCallback: "successCallback",
            success: function (data) {
                if (data.status == 1) {
                    success(data.content);
                } else {
                    console.log('请求错误');
                }
            },
            error: function (e) {
                console.log(e);
            }
        });
    };
    //获取接口名称
    util.getInterface = function (key) {
        var value = '';
        $.each(interfaceList, function (n, val) {
            if (val.id == key) {
                value = util.completeUrl + val.val;
                return false;
            }
        });
        return value;
    };

    //拼接借口路劲
    util.httpGetInterface = function (httpsUrl,interfaceLists,key) {
        var value = '';
        $.each(interfaceLists, function (n, val) {
            if (val.id == key) {
                value = httpsUrl + val.val;
                return false;
            }
        });
        return value;
    };

    //拼接接口路径
    util.interfaceUrl = function (url) {
        var completeUrls = url.indexOf('http://') >= 0 ? url : util.getInterface(url);
        return completeUrls;
    };

    //报错了
    util.error = function (data) {

    };
    // 判断是否为空
        util.isNull = function (str) {
            var value=str.lastIndexOf(" ");
            console.log(value);
          /*      while (value.lastIndexOf(" ") >= 0) {
                    value = value.replace(" ", "");
        }
        while (value.lastIndexOf("&nbsp;") >= 0) {
            value = value.replace("&nbsp;", "");
        }
        console.log(value.length);
        if (value.length == 0) {
            return 1;
        } else {
            return 0;
        }*/
    };
    util.phone = function (val) {
        var test = /^1[34578]\d{9}$/;
        if (test.test(val)) {
            return 1;
        } else {
            return 0;
        }
    };
    util.tel=function(val){
        var phone = /^0\d{2,3}-?\d{7,8}$/;
        if(phone.test(val)){
            return 1;
        }else{
            return 0;
        }
    };
    util.isNum = function (val) {
        var test = /^[0-9]*$/;
        if(test.test(val)){
            return 1;
        }
        else{
            return 0;
        }
    };
    util.isIdCard=function (cardid) {
        //身份证正则表达式(18位)
        var isIdCard2 = /^[1-9]\d{5}(19\d{2}|[2-9]\d{3})((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])(\d{4}|\d{3}X)$/i;
        var stard = "10X98765432"; //最后一位身份证的号码
        var first = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2]; //1-17系数
        var sum = 0;
        if(!isIdCard2.test(cardid)) {
            mui.toast('请输入有效的身份证号');
            throw "1";
        }
        var year = cardid.substr(6, 4);
        var month = cardid.substr(10, 2);
        var day = cardid.substr(12, 2);
        var birthday = cardid.substr(6, 8);
       /* if(birthday != dateToString(new Date(year + '/' + month + '/' + day))) { //校验日期是否合法
            return false;
        }*/
        for(var i = 0; i < cardid.length - 1; i++) {
            sum += cardid[i] * first[i];
        }
        var result = sum % 11;
        var last = stard[result]; //计算出来的最后一位身份证号码
        if(cardid[cardid.length - 1].toUpperCase() == last) {
            return true;
        } else {
            mui.toast('请输入有效的身份证号');
            throw "1";
        }
    }
    // 16进制编码转中文UTF-8 格式
    /*  function utf8to16(str) {
     var out, i, len, c;
     var char2, char3;
     out = "";
     len = str.length;
     i = 0;
     while (i < len) {
     c = str.charCodeAt(i++);
     switch (c >> 4) {
     case 0:
     case 1:
     case 2:
     case 3:
     case 4:
     case 5:
     case 6:
     case 7:
     out += str.charAt(i - 1);
     break;
     case 12:
     case 13:
     char2 = str.charCodeAt(i++);
     out += String.fromCharCode(((c & 0x1F) << 6) | (char2 & 0x3F));
     break;
     case 14:
     char2 = str.charCodeAt(i++);
     char3 = str.charCodeAt(i++);
     out += String.fromCharCode(((c & 0x0F) << 12) |
     ((char2 & 0x3F) << 6) |
     ((char3 & 0x3F) << 0));
     break;
     }
     }
     return out;
     }*/

    //获取路径传参
    //需要解析的问号传参，获取路径，调用接口
    /*   var url = location.search; //获取url中"?"符后的字串
     var a =tool.GetRequest(url);*/

    /*    tool.GetRequest = function (url) {
     var theRequest = new Object();
     if (url.indexOf("?") != -1) {
     var str = url.substr(1);
     strs = str.split("&");
     for (var i = 0; i < strs.length; i++) {
     var val = utf8to16(unescape(strs[i].split("=")[1]));

     theRequest[strs[i].split("=")[0]] = val;
     }
     }
     return theRequest;
     };*/


    //获取路径传参根据key查询参数值
    util.GetQueryString = function (key) {
        // key为url变量名称
        var urlGets = location.search.substr(1);
        if (urlGets.length > 0) {
            start = urlGets.indexOf(key + '=');
            if (start != -1) {
                start = start + key.length + 1;
                end = urlGets.indexOf('&', start);
                if (end == -1) {
                    end = urlGets.length
                }
                return decodeURIComponent(urlGets.substring(start, end));
            }
        }
        return "";
    };
    window.util = util;
})();