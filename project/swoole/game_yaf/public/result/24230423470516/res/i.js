function CheckInput() {
    var tname = $("#txtName").val();
    var tmobile = $("#txtMobile").val();
    var tAddress = $("#txtAddress").val();
    var tAddressHan = tAddress.replace(/([^\u4e00-\u9fa5])/g, "");
    var ttime = $("#ordertime").val();    
    var regName = /^[\u4e00-\u9fa5]{2,20}$/;
    if (tname.length < 2 || tname.length > 20||!regName.test(tname)) {
        alert("请填写正确的姓名！");
        $("#txtName").focus()
        return false;
    }
    if (tmobile.length!=11||tmobile.substr(0,1)!=1||tmobile.substr(1,1)==1||tmobile.substr(1,1)==2) {
        alert("请填写正确的手机号！");
        $("#txtMobile").focus()
        return false;
    }
    if (tAddress.length < 2 || tAddress.length > 100 || tAddressHan.length<4) {
        alert("请填写正确的地址！");
        $("#txtAddress").focus()
        return false;
    }
    if (ttime == "未选择") {
        alert("请选择方便接听时间！");
        $("#ordertime").focus()
        return false;
    }
    return true;
}