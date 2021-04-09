package com.hccnnet.reviewsys.controller;

import com.hccnnet.reviewsys.domain.WorkReport;
import com.hccnnet.reviewsys.service.IWorkReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

/**
 * Created by trcay on 2018/9/22.
 */
@Controller
@RequestMapping(value = "/workReport")
public class WorkReportController {

    @Autowired
    IWorkReportService workReportService;


    /**
     * 实习报告表接口
     *
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value = "/tbWorkReport", method = RequestMethod.GET)
    public @ResponseBody
    HashMap tbEmployees(HttpServletRequest request, HttpServletResponse response, @RequestParam("page") String page, @RequestParam("limit") String limit) {

        HashMap map = new HashMap();
        int start = (Integer.valueOf(page) - 1) * Integer.valueOf(limit);
        int offset = Integer.valueOf(limit);
        List<WorkReport> workReportList = workReportService.selectAllWr(start, offset);
        map.put("code", 0);
        map.put("msg", "");
        int count = workReportService.selectAllWrCount();
        map.put("count", count);
        map.put("data", workReportList);
        return map;
    }



    /**
     * 人事通过实习报告表id查看实习报告详情接口
     * @param request
     * @param response
     * @param wId
     * @return
     */
    @RequestMapping(value = "/checkWrById", method = RequestMethod.GET)
    public
    String doCheckWr(HttpServletRequest request, HttpServletResponse response, @RequestParam("wId") Integer wId, Model model) {

        WorkReport workReport = workReportService.selectByPrimaryKey(wId);
        model.addAttribute("workReport",workReport);
        return  "wrCheck";
    }

}
