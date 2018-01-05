;

window["_BFD"] = window["_BFD"] || {};
_BFD.client_id = "Czhaoshangyinhang";

//测试环境使用Ctest_zhaoshangyinhang，正式环境使用Czhaoshangyinhang
_BFD.BFD_INFO = {
    "user_id": "1111"//用户的user_id
}
_BFD.script = document.createElement("script");
_BFD.script.type = "text/javascript";
_BFD.script.async = true;
_BFD.script.charset = "utf-8";

_BFD.script.src = './Scripts/bfdzs.js';
document.getElementsByTagName("head")[0].appendChild(_BFD.script); //_BFD.Cookie 此方法是获取百分点用户gid


