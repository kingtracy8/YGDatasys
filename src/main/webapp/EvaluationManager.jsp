<%--
  Created by IntelliJ IDEA.
  User: trcay
  Date: 2018/9/23
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>部门评价表管理</title>
    <link rel="stylesheet" href="/js/css/layui.css">
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/layui.js"></script>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>部门评价表管理</legend>
</fieldset>

<div>


    <form class="layui-form" action="">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">实习生姓名</label>
                <div class="layui-input-inline">
                    <input type="text" name="eName" id="eName" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">实习部门</label>
                <div class="layui-input-inline">
                    <input type="text" name="deptName" id="deptName" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>


        <div class="layui-form-item">
            <div class="layui-input-block" style="margin-left: 28%">
                <button class="layui-btn" lay-submit="" lay-filter="DoFilter">查询</button>
                <button type="reset" class="layui-btn layui-btn-primary" lay-filter="ReSet" onclick="doReset()">重置
                </button>
            </div>
        </div>
    </form>

</div>


<table class="layui-table" lay-data="{url:'evaluation/tbEvaluation', id:'idTest',width:1320,height:400, page:true}"
       lay-filter="test">
    <thead>
    <tr>
        <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
        <th lay-data="{field:'elId', width:80}">ID</th>
        <th lay-data="{field:'eName', width:120,sort: true}">实习生姓名</th>
        <th lay-data="{field:'deptName', width:160,sort: true}">实习部门</th>
        <th lay-data="{field:'t1Name',width:130}">指导老师1</th>
        <th lay-data="{field:'t2Name',width:130}">指导老师2</th>
        <th lay-data="{field:'deptLeaderName', width:120}">部门领导</th>
        <th lay-data="{field:'total', width:120}">总分</th>
        <th lay-data="{fixed: 'right', width:160, align:'center', toolbar: '#Toolbar'}">
    </tr>
    </thead>
</table>
<script type="text/html" id="Toolbar">
    <a class="layui-btn layui-btn-xs layui-bg-red" lay-event="save">查看</a>
</script>
</body>
<script>
    layui.use(['form', 'layedit', 'laydate', 'table'], function () {
        var form = layui.form
            , layer = layui.layer
            , table = layui.table;

        //监听工具条
        table.on('tool(test)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"


            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值



            //打开评阅表
            var url = "http://localhost:8080/evaluation/checkElById?elId=" + data.elId;


            var index = layer.open({
                type: 2
                , title: '查看部门评价表'
                , offset: ['50px', '350px']
                , area: ['700px', '600px']
                , shade: 0.4
                , maxmin: true
                , content: [url, 'yes']
                , btn: ['关闭', '全部关闭']
                , yes: function () {
                    layer.close(index);
                }
                , btn2: function () {
                    layer.closeAll();
                }
                , zIndex: layer.zIndex //重点1
                , success: function (layero) {
                    layer.setTop(layero); //重点2
                }
            });


            layer.iframeAuto(index);    //自适应



        });
    });


</script>
</html>
