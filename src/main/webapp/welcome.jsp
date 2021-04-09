<%--
  Created by IntelliJ IDEA.
  User: trcay
  Date: 2018/9/18
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>welcome</title>
    <link rel="stylesheet" href="/js/css/layui.css">
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/layui.js"></script>
</head>
<body>

<%
    String userName = (String) request.getSession().getAttribute("userName");
    String identity = (String) request.getSession().getAttribute("identity");
    int employeeId = (int) request.getSession().getAttribute("employeeId");
%>

<div class="layui-form">
    <table class="layui-table">
        <colgroup>
            <col width="150">
            <col width="150">
            <col width="200">
            <col>
        </colgroup>
        <thead>
        <tr>
            <th>用户名</th>
            <th>您的身份</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><c:out value="${userName}"></c:out></td>
            <td><c:if test="${identity == 1}">新员工</c:if><c:if test="${identity == 2}">指导老师</c:if><c:if
                    test="${identity == 3}">部门领导</c:if></td>
        </tr>
        </tbody>
    </table>
</div>
</body>

<script>
    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;
    });
</script>
</html>
