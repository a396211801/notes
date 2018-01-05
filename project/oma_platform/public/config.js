// url参数
function urlArgs() {
    var args = {};
    var query = window.location.search.substring(1);
    var pairs = query.split("&");
    for (var i = 0; i < pairs.length; i++) {
        var pos = pairs[i].indexOf("=");
        if (pos == -1) continue;
        var name = pairs[i].substring(0, pos);
        var value = pairs[i].substring(pos + 1);
        value = decodeURIComponent(value);
        args[name] = value;
    }
    return args;
}

// 提示信息预定义
function success(txt, callback){
    layer.msg(txt, {icon: 1}, callback && callback());
}
function warning(txt, callback){
    layer.msg(txt, {icon: 7}, callback && callback());
}
function error(txt, callback){
    layer.msg(txt, {icon: 2}, callback && callback());
}


// ajax 防止多次提交
window.flag = true;
jQuery.ajaxSetup({
    beforeSend: function(opt){
        if( flag == false ){
            warning('数据正在提交中，稍后再试！');
            return false;
        }
        flag = false;
        return opt;
    },
    error: function(err){
        flag = true;
        return err;
    },
    dataFilter: function(res){
        flag = true;
        return res;
    },
    success: function(res){
        flag = true;
        return res;
    },
    complete: function(res){
        flag = true;
        return res;
    }
})