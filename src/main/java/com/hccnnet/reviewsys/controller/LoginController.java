package com.hccnnet.reviewsys.controller;

import com.hccnnet.reviewsys.domain.Employees;
import com.hccnnet.reviewsys.service.IEmployeesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;


/**
 * Created by trcay on 2018/9/6.
 */
@Controller
@RequestMapping(value = "/reviewsys")
public class LoginController {


    @Autowired
    IEmployeesService employeesService;

    /**
     * 检查form表单提交的用户名和密码是否正确
     *
     * @param request
     * @param response
     * @return 登陆成功跳转到后台管理首页
     */
    @RequestMapping(value = "/platform", method = RequestMethod.POST)
    public String
    doCheckFormLogin(HttpServletRequest request, HttpServletResponse response) {
        String Url = null;
        //当数据库没有数据的时候会抛出空指针异常

        String name = request.getParameter("userName");
        String pass = request.getParameter("userPassword");


        List<Employees> employeesList = employeesService.selectByUserName(name);

        if (employeesList.size() > 0) {
            for (int i = 0; i < employeesList.size(); i++) {
                String userName = employeesList.get(i).getUserName();
                String userPassword = employeesList.get(i).getUserPassword();
                if (name.equals(userName) && pass.equals(userPassword)) {
                    Url = "home";
                    request.getSession().setAttribute("userName", request.getParameter("userName"));
                    //如果验证成功 直接跳转 否则for循环会影响最终的结果
                    //把身份放入Session
                    String identity = String.valueOf(employeesList.get(i).getIdentity());
                    request.getSession().setAttribute("identity", identity);
                    request.getSession().setAttribute("employeeId", employeesList.get(i).getEpId());
                    //用employeeId去查部门id  update by linsong.wei 2018-09-23 18:53:09
                    int employeeId = employeesList.get(i).getEpId();
                    int deptId = employeesService.selectDeptIdById(employeeId);
                    request.getSession().setAttribute("deptId", deptId);
                    return Url;
                } else {
                    Url = "error";
                    request.getSession().setAttribute("userName", request.getParameter("error"));
                }
            }
        } else {
            Url = "error";
        }
        return Url;
    }
}
