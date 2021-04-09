<%--
  Created by IntelliJ IDEA.
  User: trcay
  Date: 2018/9/22
  Time: 12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>实习报告管理</title>
    <link rel="stylesheet" href="/js/css/layui.css">
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/layui.js"></script>
</head>
<body>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>实习报告管理</legend>
</fieldset>

<div>


    <form class="layui-form" action="">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-inline">
                    <input type="text" name="epName" id="epName" autocomplete="off" class="layui-input">
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
            <div class="layui-inline">
                <label class="layui-form-label">毕业院校</label>
                <div class="layui-input-inline">
                    <input type="text" name="school" id="school" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <div class="layui-inline">
                <label class="layui-form-label">专业</label>
                <div class="layui-input-inline">
                    <select name="profession" lay-search="" id="profession">
                        <option value="">直接选择或搜索选择</option>
                        <option value="数学与计算机科学学院">软件工程</option>
                        <option value="外国语学院">计算机科学与技术</option>
                        <option value="化工学院">通信工程</option>
                        <option value="生命科学学院">信息与管理系统</option>
                        <option value="管理学院">市场营销</option>
                        <option value="历史学院">电子信息工程</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-block">
                    <input type="radio" name="gender" value="男" title="男">
                    <input type="radio" name="gender" value="女" title="女">
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


<table class="layui-table" lay-data="{url:'workReport/tbWorkReport', id:'idTest',width:1320,height:400, page:true}"
       lay-filter="test">
    <thead>
    <tr>
        <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
        <th lay-data="{field:'wId', width:80}">ID</th>
        <th lay-data="{field:'epName', width:160,sort: true}">姓名</th>
        <th lay-data="{field:'gender',width:80}">性别</th>
        <th lay-data="{field:'completeTime',width:130}">提交时间</th>
        <th lay-data="{field:'school', width:160}">毕业院校</th>
        <th lay-data="{field:'profession', width:170}">专业</th>
        <th lay-data="{field:'deptName', width:160}">实习部门</th>
        <th lay-data="{field:'leaderName',width:120}">部门领导</th>
        <th lay-data="{fixed: 'right', width:160, align:'center', toolbar: '#Toolbar'}">
    </tr>
    </thead>
</table>
<script type="text/html" id="Toolbar">
    <a class="layui-btn layui-btn-xs layui-bg-red" lay-event="check">查看</a>
</script>
</body>
<script>
    layui.use(['form', 'layedit', 'laydate', 'table'], function () {
        var form = layui.form
            , layer = layui.layer
            ,laydate = layui.laydate
            , table = layui.table;




        //监听工具条
        table.on('tool(test)', function (obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"


            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值




            var url = "http://localhost:8080/workReport/checkWrById?wId=" + data.wId;


            var index = layer.open({
                type: 2
                , title: '查看实习报告'
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
