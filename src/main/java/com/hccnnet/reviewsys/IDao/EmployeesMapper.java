package com.hccnnet.reviewsys.IDao;

import com.hccnnet.reviewsys.domain.Employees;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmployeesMapper {
    int deleteByPrimaryKey(Integer epId);

    int insert(Employees record);

    int insertSelective(Employees record);

    Employees selectByPrimaryKey(Integer epId);

    int updateByPrimaryKeySelective(Employees record);

    int updateByPrimaryKey(Employees record);

    List<Employees> selectByUserName(@Param("userName") String userName);

    Integer selectIdByName(@Param("epName") String epName);

    List<Employees> selectAllep(@Param("start") Integer start,@Param("offset") Integer offset);

    Integer selectAllCount();

    Integer selectDeptIdById(Integer epId);
}