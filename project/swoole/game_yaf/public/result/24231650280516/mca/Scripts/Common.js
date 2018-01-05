function onChangeInput(obj) {
    if (obj.value.length > 0) {
        obj.nextElementSibling.style.display = "block";
    }
    else {
        obj.nextElementSibling.style.display = "none";
    }
}
function onTextBlur(obj) {
    obj.nextElementSibling.style.display = "none";
}
function onTextClear(obj) {
    obj.previousElementSibling.value = "";
    obj.previousElementSibling.focus();
}
function onTextFocus(obj) {
    if (obj.value.length > 0)
        obj.nextElementSibling.style.display = "block";
    else
        obj.nextElementSibling.style.display = "none";
}

function reEval(fn) {
    var Fn = Function;  //一个变量指向Function，防止有些前端编译工具报错
    return new Fn('return ' + fn)();
}

 //领用合约弹出页
function onModalClick() {
    var clientHeight=jq(window).height()-jq("header").height();
    var bodyHeight=jq("body").height()-jq("header").height();
    if(clientHeight>bodyHeight)
    {
        jq("#modalDetail").height(clientHeight);
    }
    else{
        jq("#modalDetail").height(bodyHeight);
    }

    jq("#modalPanal").css("marginTop", jq("body").scrollTop() + 25 );
    jq("#modalDetail").css("display" ,"block");
}
function onDetailCloseClick() {
    jq("#modalDetail").css("display" ,"none");
}

//下拉框值改变时设置颜色
function ChangeColor(obj) { 
    if (obj.selectedIndex === 0) {
        obj.style.color = '#999'; 
    } 
    else { obj.style.color = '#38528B'; } 
}

//用户输入错误时输入框变红
function ErrorInput(obj){
   obj.css("border","solid 1px #c71717");
}

//用户输入正确
function CorrectInput(obj){
   obj.css("border","none");
}

function TextToUpper(obj) {
    if (!!obj && !!obj.value && obj.value.trim() !== "") {
        obj.value = obj.value.toUpperCase();
    }
}
function onTextBlurAndToUpper(obj) {
    obj.nextElementSibling.style.display = "none";
    if (!!obj && !!obj.value && obj.value.trim() !== "") {
        obj.value = obj.value.toUpperCase();
    }
}
