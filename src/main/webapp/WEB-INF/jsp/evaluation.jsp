<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>请对实习生评价</title>
    <link rel="stylesheet" href="../../js/css/layui.css">
    <script src="../../js/jquery-3.2.1.min.js"></script>
    <script src="../../js/layui.js"></script>


    <script>

        $(function () {

            $.ajax({
                    url: "http://localhost:8080/evaluation/evaluationInfoById?elId=" + GetQueryString("elId"),       //去请求有过滤的电脑列表，只传入一个id
                    type: "GET",
                    dataType: 'json',
                    contentType: 'application/json;charset=UTF-8', //contentType很重要
                    success: function (result) {

                    $("#deptName").val(result.deptName);
                    $("#eName").val(result.eName);

                    //页面初始化
                    $("#elId").val(GetQueryString("elId"));
                    $("#t1Id").val(result.t1Id);
                    $("#t2Id").val(result.t2Id);
                    $("#deptLeaderId").val(result.deptLeaderId);
                    $("#duty").val(result.duty);
                    $("#positive").val(result.positive);
                    $("#discipline").val(result.discipline);
                    $("#extraction").val(result.extraction);
                    $("#plan").val(result.plan);
                    $("#discipline").val(result.discipline);
                    $("#cooperation").val(result.cooperation);
                    $("#expression").val(result.expression);
                    $("#understanding").val(result.understanding);
                    $("#other").val(result.other);
                    $("#total").val(result.total);
//                    初始化评语
                    $("#t1Review").val(result.t1Review);
                    $("#t1Name").val(result.t1Name);
                    $("#t1Checktime").val(result.t1Checktime);

                    $("#t2Review").val(result.t2Review);
                    $("#t2Name").val(result.t2Name);
                    $("#t2Checktime").val(result.t2Checktime);

                    $("#deptLeaderName").val(result.deptLeaderName);
                    $("#deptLeaderReview").val(result.deptLeaderReview);
                    $("#deptLeaderChecktime").val(result.deptLeaderChecktime);

                    var eId = GetQueryString("eId");
//                    如果当前身份是指导老师，不能操作分数,只能填写自己的一栏
                    if (result.t1Id == eId) {

                        $("#duty").attr('disabled', 'true');
                        $("#positive").attr('disabled', 'true');
                        $("#discipline").attr('disabled', 'true');
                        $("#extraction").attr('disabled', 'true');
                        $("#understanding").attr('disabled', 'true');
                        $("#expression").attr('disabled', 'true');
                        $("#plan").attr('disabled', 'true');
                        $("#cooperation").attr('disabled', 'true');
                        $("#other").attr('disabled', 'true');
                        $("#total").attr('disabled', 'true');


                        $("#t2Name").attr('disabled', 'true');
                        $("#t2Review").attr('disabled', 'true');
                        $("#t2Ischeck").attr('disabled', 'true');
                        $("#t2Checktime").attr('disabled', 'true');
                        $("#deptLeaderName").attr('disabled', 'true');
                        $("#deptLeaderReview").attr('disabled', 'true');
                        $("#deptLeaderIscheck").attr('disabled', 'true');
                        $("#deptLeaderChecktime").attr('disabled', 'true');

                        //并且设置这些内容为非必填
                        $("#duty").removeAttr('lay-verify');
                        $("#positive").removeAttr('lay-verify');
                        $("#discipline").removeAttr('lay-verify');
                        $("#extraction").removeAttr('lay-verify');
                        $("#understanding").removeAttr('lay-verify');
                        $("#expression").removeAttr('lay-verify');
                        $("#plan").removeAttr('lay-verify');
                        $("#cooperation").removeAttr('lay-verify');
                        $("#other").removeAttr('lay-verify');
                        $("#total").removeAttr('lay-verify');

                        $("#t2Name").removeAttr('lay-verify');
                        $("#t2Review").removeAttr('lay-verify');
                        $("#t2Ischeck").removeAttr('lay-verify');
                        $("#t2Checktime").removeAttr('lay-verify');
                        $("#deptLeaderName").removeAttr('lay-verify');
                        $("#deptLeaderReview").removeAttr('lay-verify');
                        $("#deptLeaderIscheck").removeAttr('lay-verify');
                        $("#deptLeaderChecktime").removeAttr('lay-verify');




                    } else if (result.t2Id == eId) {

                        $("#duty").attr('disabled', 'true');
                        $("#positive").attr('disabled', 'true');
                        $("#discipline").attr('disabled', 'true');
                        $("#extraction").attr('disabled', 'true');
                        $("#understanding").attr('disabled', 'true');
                        $("#expression").attr('disabled', 'true');
                        $("#plan").attr('disabled', 'true');
                        $("#cooperation").attr('disabled', 'true');
                        $("#other").attr('disabled', 'true');
                        $("#total").attr('disabled', 'true');

                        $("#t1Name").attr('disabled', 'true');
                        $("#t1Review").attr('disabled', 'true');
                        $("#t1Ischeck").attr('disabled', 'true');
                        $("#t1Checktime").attr('disabled', 'true');
                        $("#deptLeaderName").attr('disabled', 'true');
                        $("#deptLeaderReview").attr('disabled', 'true');
                        $("#deptLeaderIscheck").attr('disabled', 'true');
                        $("#deptLeaderChecktime").attr('disabled', 'true');

                        //并且设置这些内容为非必填
                        $("#duty").removeAttr('lay-verify');
                        $("#positive").removeAttr('lay-verify');
                        $("#discipline").removeAttr('lay-verify');
                        $("#extraction").removeAttr('lay-verify');
                        $("#understanding").removeAttr('lay-verify');
                        $("#expression").removeAttr('lay-verify');
                        $("#plan").removeAttr('lay-verify');
                        $("#cooperation").removeAttr('lay-verify');
                        $("#other").removeAttr('lay-verify');
                        $("#total").removeAttr('lay-verify');

                        $("#t1Name").removeAttr('lay-verify');
                        $("#t1Review").removeAttr('lay-verify');
                        $("#t1Ischeck").removeAttr('lay-verify');
                        $("#t1Checktime").removeAttr('lay-verify');
                        $("#deptLeaderName").removeAttr('lay-verify');
                        $("#deptLeaderReview").removeAttr('lay-verify');
                        $("#deptLeaderIscheck").removeAttr('lay-verify');
                        $("#deptLeaderChecktime").removeAttr('lay-verify');

                    } else if (result.deptLeaderId == eId) {

                        $("#t1Name").attr('disabled', 'true');
                        $("#t1Review").attr('disabled', 'true');
                        $("#t1Ischeck").attr('disabled', 'true');
                        $("#t1Checktime").attr('disabled', 'true');

                        $("#t2Name").attr('disabled', 'true');
                        $("#t2Review").attr('disabled', 'true');
                        $("#t2Ischeck").attr('disabled', 'true');
                        $("#t2Checktime").attr('disabled', 'true');

              //领导必须打分
//                        $("#duty").removeAttr('lay-verify');
//                        $("#positive").removeAttr('lay-verify');
//                        $("#discipline").removeAttr('lay-verify');
//                        $("#extraction").removeAttr('lay-verify');
//                        $("#understanding").removeAttr('lay-verify');
//                        $("#expression").removeAttr('lay-verify');
//                        $("#plan").removeAttr('lay-verify');
//                        $("#cooperation").removeAttr('lay-verify');
//                        $("#other").removeAttr('lay-verify');
//                        $("#total").removeAttr('lay-verify');
                        //并且设置这些内容为非必填
                        $("#t1Name").removeAttr('lay-verify');
                        $("#t1Review").removeAttr('lay-verify');
                        $("#t1Ischeck").removeAttr('lay-verify');
                        $("#t1Checktime").removeAttr('lay-verify');
                        $("#t2Name").removeAttr('lay-verify');
                        $("#t2Review").removeAttr('lay-verify');
                        $("#t2Ischeck").removeAttr('lay-verify');
                        $("#t2Checktime").removeAttr('lay-verify');


                    }

//                    document.getElementById('duty').readOnly = true;

                }
            });


            function GetQueryString(name) {
                var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
                var r = window.location.search.substr(1).match(reg);
                if (r != null)return decodeURI(r[2]);
                return null;        //防止中文乱码用decodeURI替换unescape
            }

//            console.log(GetQueryString("elId"));
        });

    </script>


</head>
<body>
<%--获得指导老师的id--%>
<%
    int employeeId = (int) request.getSession().getAttribute("employeeId");
%>
</blockquote>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>请对实习生评价</legend>
</fieldset>


<form class="layui-form" action="">

    <div class="layui-form-item" style="display: none">
        <div class="layui-inline">
            <label class="layui-form-label">elId</label>
            <div class="layui-input-inline">
                <input type="text" name="elId" id="elId" style="background: rgba(41,127,251,0.36)" disabled
                       lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>
<%--获取t1 t2 leader 的id  隐藏起来--%>
    <div class="layui-form-item" style="display: none">
        <div class="layui-inline">
            <label class="layui-form-label">t1Id</label>
            <div class="layui-input-inline">
                <input type="text" name="t1Id" id="t1Id" style="background: rgba(41,127,251,0.36)" disabled
                        autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item" style="display: none">
        <div class="layui-inline">
            <label class="layui-form-label">t2Id</label>
            <div class="layui-input-inline">
                <input type="text" name="t2Id" id="t2Id" style="background: rgba(41,127,251,0.36)" disabled
                       autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item" style="display: none">
        <div class="layui-inline">
            <label class="layui-form-label">deptLeaderId</label>
            <div class="layui-input-inline">
                <input type="text" name="deptLeaderId" id="deptLeaderId" style="background: rgba(41,127,251,0.36)" disabled
                       autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>


    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">评估部门</label>
            <div class="layui-input-inline">
                <input type="text" name="deptName" id="deptName" style="background: rgba(41,127,251,0.36)" disabled
                       lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">见习者</label>
            <div class="layui-input-inline">
                <input type="text" name="eName" id="eName" style="background: rgba(41,127,251,0.36)" disabled
                       lay-verify="required" autocomplete="off" class="layui-input">
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
            <input type="text" name="duty" id="duty" lay-verify="required" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">积极主动性</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为对分配的工作任务不讲条件，主动积极，愿意多做工作，主动进行改进，向困难挑战。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-10</label>
        <div class="layui-input-inline">
            <input type="text" name="positive" id="positive" lay-verify="required" autocomplete="off"
                   class="layui-input">
        </div>
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">纪律</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为认同与严格遵守公司各种工作规章制度，如劳动纪律、业务操作章程等，注重自律与自控。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-10</label>
        <div class="layui-input-inline">
            <input type="text" name="discipline" id="discipline" lay-verify="required" autocomplete="off"
                   class="layui-input">
        </div>
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">萃取</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为主动吸收及使用新知识、新资料、新技术，不继提升对岗位的掌握及胜任能力。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-15</label>
        <div class="layui-input-inline">
            <input type="text" name="extraction" id="extraction" lay-verify="required" autocomplete="off"
                   class="layui-input">
        </div>
        <div class="layui-colla-item">
            <h2 class="layui-colla-title">理解</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为善于倾听，能充分理解上级指示，干脆利落完成目标工作，不需要反复请示上级及上级反复指示。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-15</label>
        <div class="layui-input-inline">
            <input type="text" name="understanding" id="understanding" lay-verify="required" autocomplete="off"
                   class="layui-input">
        </div>

        <div class="layui-colla-item">
            <h2 class="layui-colla-title">表达</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为文字和语言表达流畅，用词准确、有感染力和说服力。善于把自己的思想、情感、想法和意图等，<br>通过文字、图形、表情和动作等清晰明确地表达出来，让他人理解、体会和掌握。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-15</label>
        <div class="layui-input-inline">
            <input type="text" name="expression" id="expression" lay-verify="required" autocomplete="off"
                   class="layui-input">
        </div>

        <div class="layui-colla-item">
            <h2 class="layui-colla-title">计划与组织</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为通过合理规则，把有效资源应用在优先目标、需求及机会上，有效提高效率及控制工作。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-10</label>
        <div class="layui-input-inline">
            <input type="text" name="plan" id="plan" lay-verify="required" autocomplete="off" class="layui-input">
        </div>

        <div class="layui-colla-item">
            <h2 class="layui-colla-title">协作配合</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为通过有效沟通、交流推动与内部客户合作，取得共识，使协作各方密切配合，协同一致，实现目标；<br>能够充分考虑别人的处境，主动协助上级、同事做好工作。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-10</label>
        <div class="layui-input-inline">
            <input type="text" name="cooperation" id="cooperation" lay-verify="required" autocomplete="off"
                   class="layui-input">
        </div>

        <div class="layui-colla-item">
            <h2 class="layui-colla-title">其他方面</h2>
            <div class="layui-colla-content layui-show">
                <p>表现为有较好的心理受压能力和自我调节能力；仪表简单、朴素、庄重；自觉维护企业和个人的良好形象。</p>
            </div>
        </div>
        <label class="layui-form-label">得分:0-5</label>
        <div class="layui-input-inline">
            <input type="text" name="other" id="other" lay-verify="required" autocomplete="off" class="layui-input">
        </div>
        <br>
        <div class="layui-inline">
            <label class="layui-form-label">总分:</label>
            <div class="layui-input-inline">
                <input type="text" name="total" id="total" lay-verify="required" autocomplete="off" class="layui-input">
            </div>
        </div>

    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">导师1评语:</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" name="t1Review" id="t1Review" class="layui-textarea"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">导师1签名:</label>
            <div class="layui-input-inline">
                <input type="text" name="t1Name" id="t1Name" lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">日期</label>
            <div class="layui-input-inline">
                <input type="text" name="t1Checktime" id="t1Checktime" lay-verify="date" placeholder="yyyy-MM-dd"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">导师2评语:</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" name="t2Review" id="t2Review" class="layui-textarea"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">导师2签名:</label>
            <div class="layui-input-inline">
                <input type="text" name="t2Name" id="t2Name" lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">日期</label>
            <div class="layui-input-inline">
                <input type="text" name="t2Checktime" id="t2Checktime" lay-verify="date" placeholder="yyyy-MM-dd"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label">部门领导:</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入内容" name="deptLeaderReview" id="deptLeaderReview"
                      class="layui-textarea"></textarea>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">部门领导签名:</label>
            <div class="layui-input-inline">
                <input type="text" name="deptLeaderName" id="deptLeaderName" lay-verify="required" autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">日期</label>
            <div class="layui-input-inline">
                <input type="text" name="deptLeaderChecktime" id="deptLeaderChecktime" lay-verify="date"
                       placeholder="yyyy-MM-dd"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit="" lay-filter="updateEvaluation">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>

</form>


</body>
<script>
    layui.use(['form', 'layedit', 'laydate', 'table', 'element'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , table = layui.table
            , element = layui.element
            , laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#t1Checktime'
        });
        laydate.render({
            elem: '#t2Checktime'
        });
        laydate.render({
            elem: '#deptLeaderChecktime'
        });

        form.on('submit(updateEvaluation)', function (data) {
//            layer.alert(JSON.stringify(data.field), {
//                title: '最终的提交信息'
//            });

//            console.log(JSON.stringify(data.field));

            $.ajax({
                url: "http://localhost:8080/evaluation/updateReview",
                type: "POST",
                data: JSON.stringify(data.field), //转JSON字符串
                dataType: 'json',
                contentType: 'application/json;charset=UTF-8', //contentType很重要
                success: function (result) {
                    if (result.flag == 1) {

//                        layer.open({
//                            type: 1
//                            ,offset: 'b'
//                            ,content: '<div style="padding: 20px 100px;">'+ '提交成功'+'</div>'
//                        });
                        //非比我用这种最土的方法  0.0  ...    update by: linsong.wei 2018-09-13 16:09:17
                        alert('提交成功!');
                        //获得父控件的弹层并设置关闭时间
                        var index = parent.layer.getFrameIndex(window.name);
                        setTimeout(function () {
                            parent.layer.close(index)
                        }, 100);
                    } else {
                        alert("提交失败！请重试！");
                    }
                }, error: function (XMLHttpRequest, textStatus) {
                    alert("操作失败！请重试！");
                }
            });


            return false;
        });


    });


</script>
</html>
