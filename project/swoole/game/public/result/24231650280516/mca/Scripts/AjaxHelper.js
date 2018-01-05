var request = null;

function XmlHttp() { this.r = getRequest(); }

function getRequest() {
    if (null != request) { 
        return request; 
    }

    if (window.XMLHttpRequest) {
        request = new XMLHttpRequest();
        if (request.overrideMimeType) { 
            request.overrideMimeType('text/xml'); 
        }
    } else {
        if (window.ActiveXObject) {
            var versions = ["MSXML2.XMLHTTP", "Microsoft.XMLHTTP", "MSXML.XMLHTTP", "Microsoft.XMLHTTP", "Msxml2.XMLHTTP.7.0", "Msxml2.XMLHTTP.6.0", "Msxml2.XMLHTTP.5.0", "Msxml2.XMLHTTP.4.0", "MSXML2.XMLHTTP.3.0"];
            for (var i = 0; i < versions.length; i++) { 
                try { 
                    request = new ActiveXObject(versions[i]); 
                    break; 
                }
                 catch (e) { 
                    //DO NOTHING
                 } 
             }
        }
    }
    return request;
}

XmlHttp.prototype.postopen = function(url, successFun, failFun, data) {
    this.r.open('POST', url, true);
    this.r.setRequestHeader("Content-type", "application/json; charset=utf-8")
    this.r.onreadystatechange = postReadyStateChange(this, successFun, failFun);
    if (typeof (data) === "undefined") { 
        this.r.send(); 
    } 
    else { 
        this.r.send(data); 
    }
}

XmlHttp.prototype.postopensyn = function(url, successFun, failFun, data) {
    this.r.open('POST', url, false);
    this.r.setRequestHeader("Content-type", "application/json; charset=utf-8")
    this.r.onreadystatechange = postReadyStateChange(this, successFun, failFun);

    if (typeof (data) === "undefined") {
        this.r.send();
    } else {
        this.r.send(data);
    }
}

XmlHttp.prototype.getopen = function(url, successFun, failFun) {
    if (window.XMLHttpRequest) {
        this.r.open('GET', url);
        this.r.onreadystatechange = getReadyStateChange(this, successFun, failFun);
        this.r.send(null);
    } else {
        this.r.open("GET", url, true);
        this.r.onreadystatechange = getReadyStateChange(this, successFun, failFun);
        this.r.send();
    }
}

postReadyStateChange = function(obj, successFun, failFun) {
    return function() {
        if (4 === obj.r.readyState) {
            if (200 === obj.r.status) {
                try {
                    try {
                        var jres = JSON.parse(obj.r.responseText);
                        obj.rtncode = jres.d[0];
                        obj.rtnmsg = 0 == obj.rtncode ? JSON.parse(jres.d[1]) : jres.d[1];
                    }
                    catch (e) {
                        var jres = reEval("(" + obj.r.responseText + ")");
                        obj.rtncode = jres.d[0];
                        obj.rtnmsg = jres.d[1];
                        if (0 == obj.rtncode)
                            obj.rtnmsg = reEval("(" + jres.d[1] + ")");
                    }
                    successFun();
                } catch (e) { failFun(e.message); }
            } else { failFun("页面请求出错，请刷新后重试"); }
        }
    }
}

getReadyStateChange = function(obj, successFun, failFun) {
    return function() {
        if (4 === obj.r.readyState) {
            if (200 === obj.r.status) {
                try {
                    var data = reEval(obj.r.responseText);
                    if (2 == data.code) {   
                        failFun(); 
                    }
                } catch (e) { failFun(); }

                obj.text = obj.r.responseText;
                successFun();
            } else { failFun(); }
        }
    }
}

function failFun() {}

function reEval(fn) {
    var Fn = Function;  //一个变量指向Function，防止有些前端编译工具报错
    return new Fn('return ' + fn)();
}