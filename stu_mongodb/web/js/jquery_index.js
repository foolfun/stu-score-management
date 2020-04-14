$(document).ready(function(){
    $("#ab").click(function(){
        $("#adiv").slideToggle();
    });
    $("#sb").click(function(){
        $("#sdiv").slideToggle();
    });
    $("#db").click(function () {
            $("#ddiv").slideToggle();
        }
    );
    $("#ub").click(function () {
        $("#udiv").slideToggle();
    });
});
function check(){
    var sid = document.form1.getElementsByName("sid")[0].value;
    var sname = document.form1.getElementsByName("sname")[0].value;
    if(sname == null || sname == "" ||sid == null || sid == ""){
        alert("请输入完整");
        return false;
    }
}

function check2() {
    var sid = document.form3.getElementsByName("sid")[0].value;
    if(sid == null || sid == ""){
        alert("学号必填");
        return false;
    }
}