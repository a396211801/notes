/**
 * Created by Administrator on 2016/8/10.
 */
(function(){
    var maxWidth = 768;
    var readyWidth = 375;
    var scale = 20;
    var wResize = function(){
        var width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth;
        if(width > maxWidth) {
            width = maxWidth;
        }
        var fontSize = (width / readyWidth * scale);
        document.getElementsByTagName('html')[0].style.fontSize=fontSize+'px';
    };
    wResize();
})();
