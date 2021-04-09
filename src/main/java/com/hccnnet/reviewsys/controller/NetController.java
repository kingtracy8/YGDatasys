package com.hccnnet.reviewsys.controller;

import com.hccnnet.reviewsys.domain.net_statistics;
import com.hccnnet.reviewsys.service.INetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Administrator on 2021/4/2.
 */
@Controller
@RequestMapping(value = "/net")
public class NetController {

    @Autowired
    INetService iNetService;

    @RequestMapping(value = "/tbinterface", method = RequestMethod.GET)
    public @ResponseBody
    HashMap EvaluationList(HttpServletRequest request, HttpServletResponse response, @RequestParam("page") String page, @RequestParam("limit") String limit) {
        HashMap map = new HashMap();

        List<net_statistics> net_list = iNetService.selectAll();
        int start = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        int offset = Integer.valueOf(limit);

        map.put("code", 0);
        map.put("msg", "");
        int count = iNetService.selectCount();
        map.put("count",count);
        map.put("data", net_list);
        return map;
    }

}
