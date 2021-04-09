<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>评价列表</title>
    <link rel="stylesheet" href="/js/css/layui.css">
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/layui.js"></script>
</head>
<body>
<%--获得指导老师的id--%>
<%
    int employeeId = (int) request.getSession().getAttribute("employeeId");
%>
</blockquote>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>评价列表</legend>
</fieldset>


<table class="layui-table" lay-data="{url:'/evaluation/tbinterface', id:'idTest',width:1320,height:400, page:true}"
       lay-filter="test">
    <thead>
    <tr>
        <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
        <th lay-data="{field:'elId', width:80}">ID</th>
        <th lay-data="{field:'deptName', width:160,sort: true}">部门名称</th>
        <th lay-data="{field:'eName',width:80}">实习生</th>
        <th lay-data="{field:'t1Name', width:130}">指导老师1</th>
        <th lay-data="{field:'t1Ischeck', width:120}">是否已评阅</th>
        <th lay-data="{field:'t2Name', width:130}">指导老师2</th>
        <th lay-data="{field:'t2Ischeck',width:120}">是否已评阅</th>
        <th lay-data="{field:'deptLeaderName', width:120}">部门领导</th>
        <th lay-data="{field:'deptLeaderIscheck', width:170}">部门领导是否已评阅</th>
        <th lay-data="{fixed: 'right', width:160, align:'center', toolbar: '#Toolbar'}">
    </tr>
    </thead>
</table>
<script type="text/html" id="Toolbar">
    <a class="layui-btn layui-btn-xs layui-bg-red" lay-event="save">批阅</a>
</script>
<%--隐藏指导老师1的id--%>
<div style="display: none"><a href="javascript:;" id="employeeId"><%=employeeId%></div>
</body>
<script>
    layui.use(['form', 'layedit', 'laydate', 'table'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , table = layui.table
            , laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });


        //监听工具条
        table.on('tool(test)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"


            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值

//            判断是指导老师1还是指导老师2或者是领导
//
//            console.log(jQuery.trim($("#employeeId").text()));
            var employeesId = jQuery.trim($("#employeeId").text());

            if(data.t1Id== employeesId){
                if(data.t1Ischeck == 1)
                layer.msg("您已经评阅过该员工，是否继续？");
            }else if(data.t2Id== employeesId){
                layer.msg("您是指导老师2");
            }else if(data.deptLeaderId== employeesId){
                layer.msg("您是部门领导");
            }

            var employeesId = jQuery.trim($("#employeeId").text());

            //打开评阅表
            var url = "http://localhost:8080/evaluation/doEvaluation?elId=" + data.elId+"&eId="+employeesId;
            var index = layer.open({
                type: 2
                , title: '请对实习生进行评价'
                , offset: ['50px', '350px']
                , area: ['700px', '600px']
                , shade: 0.4
                , maxmin: true
                , content: [url, 'yes']
                , btn: ['关闭', '全部关闭'] //只是为了演示
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
