/*
 *create by zdf 
 */
var bxmApi = {
    init: function () {
        this.urlHead = "";
        this.count = "/activity/getInfo";
    },
    requireApi: function (id, callback) {
        var self = this;
        var uid = self._getQueryString("uid");
        var param = {
            "appkey": self._getQueryString("appkey"),
            "business": self._getQueryString("business"),
            "token": uid,
            "modelname": "1",
        };
        var URL = this.urlHead + this.count;
        if (callback) {
            self._ajax(URL, param, function () {
                callback();
            });
        } else {
            self._ajax(URL, param);
        }
        ;
    },
    /*****获取URL参数****/
    _getQueryString: function (name) {
        var self = this;
        var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');
        var r = window.location.search.substr(1).match(reg);
        if (r != null) {
            return unescape(r[2]);
        }
        return null;
    },
    //判断设备信息 2为iOS 1为Android
    _getDeviceInfo: function () {
        var u = navigator.userAgent;
        var isiOS = !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/); //ios终端
        if (isiOS) {
            return 2; //这是iOS平台下浏览器
        } else {
            return 1;
        }
        ;
    },
    //is weixin
    isWeiXin: function () {
        var ua = window.navigator.userAgent.toLowerCase();
        if (ua.match(/MicroMessenger/i) == 'micromessenger') {
            return 1;
        } else {
            return 0;
        }
    },
    /****ajax 二次封装****/
    _ajax: function (URL, data, succallback) {
        var self = this;
        return $.ajax({
            url: URL,
            data: data || {},
            type: 'POST',
            async: true,
            success: succallback || function () {
            },
            error: function (res) {
                console.log("网络异常，请稍后重试！");
            }
        });
    },
};
bxmApi.init();
