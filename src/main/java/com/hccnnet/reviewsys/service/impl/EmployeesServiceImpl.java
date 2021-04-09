package com.hccnnet.reviewsys.service.impl;

import com.hccnnet.reviewsys.IDao.EmployeesMapper;
import com.hccnnet.reviewsys.domain.Employees;
import com.hccnnet.reviewsys.service.IEmployeesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by trcay on 2018/9/6.
 */
@Service("employeesService")
public class EmployeesServiceImpl implements IEmployeesService{

    @Autowired
    EmployeesMapper employeesMapper;

    @Override
    public Employees selectByPrimaryKey(Integer epId) {
        return employeesMapper.selectByPrimaryKey(epId);
    }

    @Override
    public List<Employees> selectByUserName(String userName) {
        return employeesMapper.selectByUserName(userName);
    }

    @Override
    public Integer selectIdByName(String epName) {
        return employeesMapper.selectIdByName(epName);
    }

    @Override
    public List<Employees> selectAllep(Integer start, Integer offset) {
        return employeesMapper.selectAllep(start,offset);
    }

    @Override
    public Integer selectAllCount() {
        return employeesMapper.selectAllCount();
    }

    @Override
    public int updateByPrimaryKeySelective(Employees record) {
        return employeesMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public Integer selectDeptIdById(Integer epId) {
        return employeesMapper.selectDeptIdById(epId);
    }
}
