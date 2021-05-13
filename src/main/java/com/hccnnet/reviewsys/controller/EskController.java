package com.hccnnet.reviewsys.controller;

import com.hccnnet.reviewsys.IDao.eskMapper;
import com.hccnnet.reviewsys.domain.esk;
import com.hccnnet.reviewsys.service.IEskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Administrator on 2021/4/20.
 */
@Controller
@RequestMapping("/esk")
public class EskController {

    @Autowired
    IEskService iEskService;

    @RequestMapping(value = "/esktbinterface", method = RequestMethod.GET)
    public @ResponseBody
    HashMap getEskList(HttpServletRequest request, HttpServletResponse response, @RequestParam("page") String page, @RequestParam("limit") String limit) {


        HashMap map = new HashMap();

        int start = (Integer.valueOf(page) - 1) * Integer.valueOf(limit);
        int offset = Integer.valueOf(limit);

        List<esk> eskList = iEskService.selectAll(start, offset);
        map.put("code", 0);
        map.put("msg", "");
        int count = iEskService.selectCount();
        map.put("count", count);
        map.put("data", eskList);
        return map;
    }

    /***
     * create by linsong.wei@163.com 2021/4/22 17:57
     * @param request
     * @param response
     * @param page  分页相关
     * @param limit
     * @return
     */
    @RequestMapping(value = "/esktbinterfaceFilter", method = RequestMethod.GET)
    public @ResponseBody
    HashMap eskListFilter(HttpServletRequest request, HttpServletResponse response, @RequestParam("page") String page, @RequestParam("limit") String limit) {

        HashMap map = new HashMap();

        String content = null;
        String code = null;
        String result = null;
        String remark = null;

        esk po = new esk();

        int start = (Integer.valueOf(page)-1)*Integer.valueOf(limit);
        int offset = Integer.valueOf(limit);

        try {
            content = URLDecoder.decode(request.getParameter("content"),"utf-8");//将中文转码
            System.out.println(content);
            code = URLDecoder.decode(request.getParameter("code"),"utf-8");
            result = URLDecoder.decode(request.getParameter("result"),"utf-8");
            remark = URLDecoder.decode(request.getParameter("remark"),"utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }catch (NullPointerException e){

            po.setContent("");
            po.setCode("");
            po.setResult("");
            po.setRemark("");
        }

        // 如果没有空指针异常
        if (!content.equals(null)) {
            po.setContent(content);
        }
        if (!code.equals(null)) {
            po.setCode(code);
        }
        if (!result.equals(null)) {
            po.setResult(result);
        }
        if (!remark.equals(null)) {
            po.setRemark(remark);
        }

        List<esk> eskList = iEskService.selectAllEskFilter(start,offset,po.getContent(),po.getCode(),po.getResult(),po.getRemark());
        int count = 0;
//        count = eskList.size();
        count = iEskService.selectCountFilter(start,offset,content,code,result,remark);
        map.put("count", count);
        map.put("code", 0);
        map.put("msg", "");
        map.put("data", eskList);

        return map;
    }


    @RequestMapping(value = "/addEsk", method = RequestMethod.POST)
    @Transactional(propagation = Propagation.REQUIRED)
    public @ResponseBody HashMap doAddEsk(HttpServletRequest request, HttpServletResponse response, @RequestBody esk record){

        HashMap map = new HashMap();

        int flag = iEskService.insertSelective(record);
        map.put("flag", flag);
        return map;
    }

}
