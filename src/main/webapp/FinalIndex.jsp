<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <title>登陆</title>

    <script src="js/jquery-3.2.1.min.js"></script>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <%--<meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />--%>
    <link href="style/LoginForm.css" rel='stylesheet' type='text/css'/>
    <%--<!--webfonts-->--%>
    <%--<link href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>--%>
    <%--<link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet' type='text/css'>--%>
    <%--<!--//webfonts-->--%>

    <style>
        .reg_link {
            width: 115px;
            height: 31px;
            background: url(images/lg_img/red_link.jpg);
            left: 550px;
            top: 475px;
            position: absolute;
            right: 31px;
            bottom: -31px;
            z-index: 999
        }
    </style>

</head>
<body>

<script>$(document).ready(function (c) {
    $('.close').on('click', function (c) {
        $('.login-form').fadeOut('slow', function (c) {
            $('.login-form').remove();
        });
    });
});
</script>
<!--SIGN UP-->
<h1>Welcome</h1>
<div class="login-form">
    <div class="close"></div>
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"></div>
    <div class="avtar">
        <img src="images/lg_img/avtar.png"/>
    </div>
    <form action="/reviewsys/platform" method="post">
        <input type="text" name="userName" class="text" value="" onfocus="this.value = '';"
               onblur="if (this.value == '') {this.value = 'Username';}">
        <div class="key">
            <input type="password" name="userPassword" id="userPassword" value="" onfocus="this.value = '';"
                   onblur="if (this.value == '') {this.value = 'Password';}" style="margin-bottom:20px">
        </div>
        <div class="signin">
            <input type="submit" value="Login">
        </div>
    </form>
</div>
</div>

</div>
<div class="copy-rights">
    <p>Copyright &copy; 2018 linsong.wei All rights reserved. Contact us <a
            href="https://weibo.com/u/3037977221?refer_flag=1001030101_" target="_blank" title="新浪微博">@__特雷西</a> E-mail
        <a title="E-mail" target="_blank">linsong_wei@163.com</a></p>
</div>

<script src="/js/layui.js"></script>
<script>
    layui.use('layer', function () {
        var layer = layui.layer;
    });

</script>
<script>

    $(function () {
    })

</script>


</body>
</html>
