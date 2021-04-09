<%--
  Created by IntelliJ IDEA.
  User: trcay
  Date: 2018/9/24
  Time: 11:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>部门评价表查看</title>
    <link rel="stylesheet" href="../../js/css/layui.css">
    <script src="../..//js/jquery-3.2.1.min.js"></script>
    <script src="../..//js/layui.js"></script>

    <script>

        $(function () {



            $("#deptName").val("<c:out value="${evaluation.deptName}"></c:out>");
            $("#epName").val("<c:out value="${evaluation.eName}"></c:out>");
            $("#duty").val("<c:out value="${evaluation.duty}"></c:out>");
            $("#positive").val("<c:out value="${evaluation.positive}"></c:out>");
            $("#discipline").val("<c:out value="${evaluation.discipline}"></c:out>");
            $("#extraction").val("<c:out value="${evaluation.extraction}"></c:out>");
            $("#t2Name").val("<c:out value="${evaluation.t2Name}"></c:out>");
            $("#understanding").val("<c:out value="${evaluation.understanding}"></c:out>");
            $("#expression").val("<c:out value="${evaluation.expression}"></c:out>");
            $("#plan").val("<c:out value="${evaluation.plan}"></c:out>");
            $("#cooperation").val("<c:out value="${evaluation.cooperation}"></c:out>");
            $("#other").val("<c:out value="${evaluation.other}"></c:out>");
            $("#total").val("<c:out value="${evaluation.total}"></c:out>");
            $("#t1Name").val("<c:out value="${evaluation.t1Name}"></c:out>");
            $("#t1Review").val("<c:out value="${evaluation.t1Review}"></c:out>");
            $("#date").val("<c:out value="${evaluation.t1Checktime}"></c:out>");
            $("#t2Review").val("<c:out value="${evaluation.t2Review}"></c:out>");
            $("#date1").val("<c:out value="${evaluation.t2Checktime}"></c:out>");
            $("#deptLeaderName").val("<c:out value="${evaluation.deptLeaderName}"></c:out>");
            $("#deptLeaderReview").val("<c:out value="${evaluation.deptLeaderReview}"></c:out>");
            $("#date2").val("<c:out value="${evaluation.deptLeaderChecktime}"></c:out>");


        });

    </script>

</head>
<body>
</blockquote>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>部门评价表查看</legend>
</fieldset>


<form class="layui-form" action="">

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">评估部门</label>
            <div class="layui-input-inline">
                <input type="text" name="deptName" id="deptName"  disabled lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">见习者</label>
            <div class="layui-input-inline">
                <input type="text" name="epName" id="epName"  disabled lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-collapse" lay-accordion="">
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">责任心</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为爱岗敬业，做事积极主动、认真负责、迎难而上、善始善终，勇于主动思考解决问题，对企业具有较强的主人翁精神。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-10</label>
        <div class="layui-input-inline">
            <input type="text" name="duty" id="duty" lay-verify="required" autocomplete="off" class="layui-input" disabled>
        </div>
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">积极主动性</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为对分配的工作任务不讲条件，主动积极，愿意多做工作，主动进行改进，向困难挑战。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-10</label>
        <div class="layui-input-inline">
            <input type="text" name="positive" id="positive" lay-verify="required" autocomplete="off" class="layui-input" disabled>
        </div>
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">纪律</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为认同与严格遵守公司各种工作规章制度，如劳动纪律、业务操作章程等，注重自律与自控。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-10</label>
        <div class="layui-input-inline">
            <input type="text" name="discipline" id="discipline" lay-verify="required" autocomplete="off" class="layui-input" disabled>
        </div>
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">萃取</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为主动吸收及使用新知识、新资料、新技术，不继提升对岗位的掌握及胜任能力。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-15</label>
        <div class="layui-input-inline">
            <input type="text" name="extraction" id="extraction" lay-verify="required" autocomplete="off" class="layui-input" disabled>
        </div>
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">理解</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为善于倾听，能充分理解上级指示，干脆利落完成目标工作，不需要反复请示上级及上级反复指示。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-15</label>
        <div class="layui-input-inline">
            <input type="text" name="understanding" id="understanding" lay-verify="required" autocomplete="off" class="layui-input" disabled>
        </div>

        <div class="layui-colla-item">
            <h2 class="layui-colla-title">表达</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为文字和语言表达流畅，用词准确、有感染力和说服力。善于把自己的思想、情感、想法和意图等，<br>通过文字、图形、表情和动作等清晰明确地表达出来，让他人理解、体会和掌握。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-15</label>
        <div class="layui-input-inline">
            <input type="text" name="expression" id="expression" lay-verify="required" autocomplete="off" class="layui-input" disabled>
        </div>

        <div class="layui-colla-item">
            <h2 class="layui-colla-title">计划与组织</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为通过合理规则，把有效资源应用在优先目标、需求及机会上，有效提高效率及控制工作。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-10</label>
        <div class="layui-input-inline">
            <input type="text" name="plan" id="plan" lay-verify="required" autocomplete="off" class="layui-input" disabled>
        </div>

        <div class="layui-colla-item">
            <h2 class="layui-colla-title">协作配合</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为通过有效沟通、交流推动与内部客户合作，取得共识，使协作各方密切配合，协同一致，实现目标；<br>能够充分考虑别人的处境，主动协助上级、同事做好工作。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-10</label>
        <div class="layui-input-inline">
            <input type="text" name="cooperation" id="cooperation" lay-verify="required" autocomplete="off" class="layui-input" disabled>
        </div>

        <div class="layui-colla-item">
            <h2 class="layui-colla-title">其他方面</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为有较好的心理受压能力和自我调节能力；仪表简单、朴素、庄重；自觉维护企业和个人的良好形象。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-5</label>
        <div class="layui-input-inline">
            <input type="text" name="other" id="other" lay-verify="required" autocomplete="off" class="layui-input" disabled>
        </div>
        <br>
        <div class="layui-inline">
            <label class="layui-form-label">总分:</label>
            <div class="layui-input-inline">
                <input type="text" name="total" id="total" lay-verify="required" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>

    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">导师1评语:</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容"  name="t1Review" id="t1Review" class="layui-textarea" disabled></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">导师1签名:</label>
            <div class="layui-input-inline">
                <input type="text" name="t1Name" id="t1Name" lay-verify="required" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">日期</label>
            <div class="layui-input-inline">
                <input type="text" name="t1Checktime" id="date"  lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">导师2评语:</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容"  name="t2Review"  id="t2Review" class="layui-textarea" disabled></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">导师2签名:</label>
            <div class="layui-input-inline">
                <input type="text" name="t2Name" id="t2Name" lay-verify="required" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">日期</label>
            <div class="layui-input-inline">
                <input type="text" name="t2Checktime" id="date1" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">部门领导:</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容"  name="deptLeaderReview" id="deptLeaderReview" class="layui-textarea" disabled></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">部门领导签名:</label>
            <div class="layui-input-inline">
                <input type="text" name="deptLeaderName" id="deptLeaderName" lay-verify="required" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">日期</label>
            <div class="layui-input-inline">
                <input type="text" name="deptLeaderChecktime" id="date2" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input" disabled>
            </div>
        </div>
    </div>


</form>




</body>
<script>
    layui.use(['form', 'layedit', 'laydate', 'table','element'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , table = layui.table
            ,element = layui.element
            , laydate = layui.laydate;
    });

</script>
</html>
