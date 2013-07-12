
/// <reference path="jquery-1.4.1-vsdoc.js" />
function denglu() {
    var Name = $("#txtUserName").attr("value");
    var Pwd = $("#txtUserPwd").attr("value");
    var Code = $("#txtUserCode").attr("value");
    $(document).ready(function () {
        $.ajax({
            type: "GET",
            url: "DefaultAjax.aspx?Name=" + Name + "&Pwd=" + Pwd + "&Code=" + Code,
            data: null,
            success: function (result) {
                if (result == "OK") {
                    alert("登录成功");
                    window.location = "main.aspx";
                }
                else if (result == "ERROR") {
                    alert("登录失败!");
                }
                else if (result == "ERRORCODE") {
                    alert("验证码错误!");
                }
            }
        });
    });
}

function qingchu() {
        $("#txtUserName").attr("");
        $("#txtUserPwd").attr("");
        $("#txtUserCode").attr("") ;
}