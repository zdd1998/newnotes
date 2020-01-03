<%--
  Created by IntelliJ IDEA.
  User: zhangdd
  Date: 2019/12/31
  Time: 11:06 上午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <%
        pageContext.setAttribute("path",request.getContextPath());
    %>
    <title>小米便签</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="${path}/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- icheck bootstrap -->
    <%--    <link rel="stylesheet" href="${path}/plugins/icheck-bootstrap/icheck-bootstrap.css">--%>
    <!-- Theme style -->
    <link rel="stylesheet" href="${path}/dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a><b>小米便签</b></a>
    </div>
    <!-- /.login-logo -->
    <div class="card">
        <div class="card-body login-card-body">
            <p class="login-box-msg">登陆</p>

            <form action="" method="post">
                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="请输入登陆账号" id="userId">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-user"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="password" class="form-control" placeholder="请输入密码" id="passWord">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
            </form>
            <button class="btn btn-primary btn-block" id="login">登陆</button>
        </div>
        <!-- /.login-card-body -->
    </div>
</div>
<!-- /.login-box -->
<!-- jQuery -->
<script src="${path}/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/dist/js/adminlte.min.js"></script>
<script type="text/javascript">
    $("#login").click(function () {
        var userId=document.getElementById("userId").value;
        var passWord=document.getElementById("passWord").value;
        // console.log(admin);
        $.ajax({
            url:"http://106.12.146.17:9700/sign_in",
            type:"get",
            // contentType: "application/json",
            data:{
                name:userId,
                password:passWord,
            },
            dataType: 'json',
            success:function(data){
                console.log(data);
            },
            error: function(data) {
                console.log(data)
            }
        });
    })
</script>
</body>
</html>
