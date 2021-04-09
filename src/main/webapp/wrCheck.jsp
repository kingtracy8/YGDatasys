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
    <link rel="stylesheet" href="/js/css/layui.css">
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/layui.js"></script>
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
                <input type="text" name="epName" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">性别</label>
            <div class="layui-input-block">
                <input type="radio" name="gender" value="男" title="男" checked="">
                <input type="radio" name="gender" value="女" title="女">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">毕业院校</label>
            <div class="layui-input-inline">
                <input type="text" name="school" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">专业</label>
            <div class="layui-input-inline">
                <input type="text" name="profession" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>


    <div class="layui-form-item">


        <div class="layui-inline">
            <label class="layui-form-label">指导老师1</label>
            <div class="layui-input-inline">
                <input type="text" name="t1Name" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>


        <div class="layui-inline">
            <label class="layui-form-label">实习部门</label>
            <div class="layui-input-block">
                <select name="deptName" lay-filter="aihao">
                    <option value=""></option>
                    <option value="人力资源部">人力资源部</option>
                    <option value="企业信息化中心" selected="">企业信息化中心</option>
                    <option value="市场部">市场部</option>
                    <option value="新兴业务运营中心">新兴业务运营中心</option>
                    <option value="渠道运营中心">渠道运营中心</option>
                </select>
            </div>
        </div>

    </div>

    <div class="layui-form-item">


        <div class="layui-inline">
            <label class="layui-form-label">指导老师2</label>
            <div class="layui-input-inline">
                <input type="text" name="t2Name" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>


        <div class="layui-inline">
            <label class="layui-form-label">部门领导</label>
            <div class="layui-input-inline">
                <input type="text" name="leaderName" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>

    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">实习内容</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" name="content" class="layui-textarea"></textarea>
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">实习心得</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" name="experience" class="layui-textarea"></textarea>
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">实习人对指导老师评语</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容"  name="comments" class="layui-textarea"></textarea>
        </div>
    </div>



    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">分数</label>
            <div class="layui-input-inline">
                <input type="text" name="fraction" lay-verify="required|number" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">日期</label>
            <div class="layui-input-inline">
                <input type="text" name="completeTime" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
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
