<%--
  Created by IntelliJ IDEA.
  User: trcay
  Date: 2018/9/24
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>实习报告查看</title>
    <link rel="stylesheet" href="../../js/css/layui.css">
    <script src="../..//js/jquery-3.2.1.min.js"></script>
    <script src="../..//js/layui.js"></script>


    <script>

        $(function () {



            $("#epName").val("<c:out value="${workReport.epName}"></c:out>");
            $("#gender").val("<c:out value="${workReport.gender}"></c:out>");
            $("#school").val("<c:out value="${workReport.school}"></c:out>");
            $("#profession").val("<c:out value="${workReport.profession}"></c:out>");
            $("#t1Name").val("<c:out value="${workReport.t1Name}"></c:out>");
            $("#deptName").val("<c:out value="${workReport.deptName}"></c:out>");
            $("#t2Name").val("<c:out value="${workReport.t2Name}"></c:out>");
            $("#leaderName").val("<c:out value="${workReport.leaderName}"></c:out>");
            $("#content").val("<c:out value="${workReport.content}"></c:out>");
            $("#experience").val("<c:out value="${workReport.experience}"></c:out>");
            $("#comments").val("<c:out value="${workReport.comments}"></c:out>");
            $("#fraction").val("<c:out value="${workReport.fraction}"></c:out>");
            $("#date").val("<c:out value="${workReport.completeTime}"></c:out>");

        });

    </script>


</head>
<body>


</blockquote>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>实习报告查看</legend>
</fieldset>

<form class="layui-form" action="">

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">姓名</label>
            <div class="layui-input-inline">
                <input type="text" name="epName" id="epName" lay-verify="required" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>
            <div class="layui-inline">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-inline">
                    <input type="text" name="gender" id="gender" lay-verify="required" autocomplete="off" class="layui-input" disabled>
                </div>
            </div>
        </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">毕业院校</label>
            <div class="layui-input-inline">
                <input type="text" name="school" id="school" lay-verify="required" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">专业</label>
            <div class="layui-input-inline">
                <input type="text" name="profession" id="profession" lay-verify="required" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>
    </div>


    <div class="layui-form-item">


        <div class="layui-inline">
            <label class="layui-form-label">指导老师1</label>
            <div class="layui-input-inline">
                <input type="text" name="t1Name" id="t1Name" lay-verify="required" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>


        <div class="layui-inline">
            <label class="layui-form-label">实习部门</label>
            <div class="layui-input-inline">
                <input type="text" name="deptName" id="deptName" lay-verify="required" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>

    </div>

    <div class="layui-form-item">


        <div class="layui-inline">
            <label class="layui-form-label">指导老师2</label>
            <div class="layui-input-inline">
                <input type="text" name="t2Name" id="t2Name" lay-verify="required" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>


        <div class="layui-inline">
            <label class="layui-form-label">部门领导</label>
            <div class="layui-input-inline">
                <input type="text" name="leaderName" id="leaderName" lay-verify="required" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>

    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">实习内容</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" name="content" id="content" class="layui-textarea" disabled></textarea>
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">实习心得</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" name="experience" id="experience" class="layui-textarea" disabled></textarea>
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">实习人对指导老师评语</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容"  name="comments" id="comments" class="layui-textarea" disabled></textarea>
        </div>
    </div>



    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">分数</label>
            <div class="layui-input-inline">
                <input type="text" name="fraction" id="fraction" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">日期</label>
            <div class="layui-input-inline">
                <input type="text" name="completeTime" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>
    </div>
</form>
</body>
<script>
    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function (value) {
                if (value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            }
            , pass: [/(.+){6,12}$/, '密码必须6到12位']
            , content: function (value) {
                layedit.sync(editIndex);
            }
        });

    });
</script>
</html>
