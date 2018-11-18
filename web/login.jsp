<%--
  Created by IntelliJ IDEA.
  User: jiaojian
  Date: 2018/11/18
  Time: 11:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
    <script src="../static/js/jquery-3.3.1.min.js" ></script>
</head>
<body>

<!-- 登陆框 -->
<div class='content'>
    <div class='logo'><i style='font-size:90px;' class="iconfont icon-denglu"></i></div>
    <div class='inputBox mt50 ml32'>
        <input type="text" id="username" autofocus="autofocus" autocomplete="off" maxlength="60"
               placeholder="请输入账号/邮箱/手机号">
        <i style='font-size:20px;margin-left:-32px;opacity:0.8;' class='iconfont icon-yonghuming'></i>
    </div>
    <div class='inputBox mt50 ml32'>
        <input type="password" id="password" autofocus="autofocus" autocomplete="off" maxlength="60"
               placeholder="请输入密码">
        <i style='font-size:20px;margin-left:-32px;opacity:0.8;' class='iconfont icon-mima'></i>
    </div>

    <div class='mt50 ml32'>
        <button class="login_btn" onclick="login()" >登陆</button>
    </div>
</div>

<script>

    function login() {
        var username = $("#username").val();
        var password = $("#password").val();
        alert(username + "," + password);
    }
    $.ajax({
        type:"post",
        url:"controller/loginController.jsp",
        data:{"username":username,"password":password},
        error:function{
            alert("登陆出错")；
        }success:function(data){

            //返回成功执行回调函数
        }
    })

</script>

</body>
</html>
