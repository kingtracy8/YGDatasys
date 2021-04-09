package com.hccnnet.reviewsys.controller;

import com.hccnnet.reviewsys.domain.Employees;
import com.hccnnet.reviewsys.domain.Evaluation;
import com.hccnnet.reviewsys.domain.WorkReport;
import com.hccnnet.reviewsys.service.IDepartmentsService;
import com.hccnnet.reviewsys.service.IEmployeesService;
import com.hccnnet.reviewsys.service.IEvaluationService;
import com.hccnnet.reviewsys.service.IWorkReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * Created by trcay on 2018/9/6.
 */
@Controller
@RequestMapping(value = "/employees")
public class EmployeesController {

    @Autowired
    IEmployeesService employeesService;
    @Autowired
    IDepartmentsService departmentsService;
    @Autowired
    IWorkReportService workReportService;
    @Autowired
    IEvaluationService evaluationService;

    /**
     * 新员工提交实习报告
     *
     * @param request
     * @param response
     * @param workReport 提交的实习报告实体
     * @return
     */
    @RequestMapping("/commitWR")
    @Transactional(propagation = Propagation.REQUIRED)
    public @ResponseBody
    HashMap doRegister(HttpServletRequest request, HttpServletResponse response, @RequestBody WorkReport workReport) {

        HashMap map = new HashMap();
        int flag = -1;
        int employeeId = (int) request.getSession().getAttribute("employeeId");
        workReport.setEpId(employeeId);

        String eName = workReport.getEpName();
        String deptName = null;
        Integer deptId = null;
        String t1Name = null;
        String t2Name = null;
        Integer t1Id = null;
        Integer t2Id = null;
        String leaderName = null;
        Integer leaderId = null;

        //填写了不存在的员工
        try {

            deptName = workReport.getDeptName();

            //通过部门名称找到部门id
            deptId = departmentsService.selectByDeptName(deptName);
            workReport.setDeptId(deptId);

            //判断用户是否重复提交了同一部门的实习报告
            int count = workReportService.selectCommitDuplicate(employeeId, deptId);
            if (count > 0) {
                flag = 2;       //count>1 表示该员工该部门已经提交过实习报告 flag = 2 告知前端重复提交
                map.put("flag", flag);
                return map;
            }


            t1Name = workReport.getT1Name();
            t1Id = employeesService.selectIdByName(t1Name);
            workReport.setT1Id(t1Id);

            t2Name = workReport.getT2Name();
            t2Id = employeesService.selectIdByName(t2Name);
            workReport.setT2Id(t2Id);

            leaderName = workReport.getLeaderName();
            leaderId = employeesService.selectIdByName(leaderName);
            workReport.setLeaderId(leaderId);


        } catch (NullPointerException e) {
            flag = 3;       // flag = 2 告知前端导师名称或部门等填写错误
            map.put("flag", flag);
            return map;
        }


        try {

            //在提交实习报告的时候生成一张导师评价表  9月13日
            Evaluation evaluation = new Evaluation();
            evaluation.seteId(employeeId);
            evaluation.seteName(eName);
            evaluation.setDeptId(deptId);
            evaluation.setDeptName(deptName);
            evaluation.setT1Id(t1Id);
            evaluation.setT1Name(t1Name);
            evaluation.setT2Id(t2Id);
            evaluation.setT2Name(t2Name);
            evaluation.setDeptLeaderId(leaderId);
            evaluation.setDeptLeaderName(leaderName);

            evaluationService.insertSelective(evaluation);

        } catch (Exception e) {
            flag = 4; //表示生成评价表异常
            map.put("flag", flag);
            return map;
        }


        flag = workReportService.insertSelective(workReport);

        map.put("flag", flag);
        return map;
    }

    /**
     * 员工管理表格接口
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/tbEmployees", method = RequestMethod.GET)
    public @ResponseBody
    HashMap tbEmployees(HttpServletRequest request, HttpServletResponse response, @RequestParam("page") String page, @RequestParam("limit") String limit) {

        HashMap map = new HashMap();
        int start = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        int offset = Integer.valueOf(limit);
        List<Employees> employeesList = employeesService.selectAllep(start,offset);
        map.put("code", 0);
        map.put("msg", "");
        int count = employeesService.selectAllCount();
        map.put("count",count);
        map.put("data", employeesList);
        return map;

    }

    @RequestMapping("/UpdateEpSingle")
    @Transactional(propagation = Propagation.REQUIRED)
    public @ResponseBody
    HashMap doUpdateUserSingle(HttpServletRequest request, HttpServletResponse response, @RequestBody Employees employees) {

        HashMap map = new HashMap();

        int flag = 0;
        try {
           flag = employeesService.updateByPrimaryKeySelective(employees);
        } catch (Exception e) {
            flag = -1;
            throw new RuntimeException();
        }
        map.put("flag", flag);
        return map;
    }


}
