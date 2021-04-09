package com.hccnnet.reviewsys.service;

import com.hccnnet.reviewsys.domain.Employees;

import java.util.List;

/**
 * Created by trcay on 2018/9/6.
 */
public interface IEmployeesService {

    public Employees selectByPrimaryKey(Integer epId);

    List<Employees> selectByUserName(String userName);

    Integer selectIdByName(String epName);

    List<Employees> selectAllep(Integer start,Integer offset);

    Integer selectAllCount();

    int updateByPrimaryKeySelective(Employees record);

    Integer selectDeptIdById(Integer epId);

}
