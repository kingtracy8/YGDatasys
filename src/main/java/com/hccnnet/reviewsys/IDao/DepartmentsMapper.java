package com.hccnnet.reviewsys.IDao;

import com.hccnnet.reviewsys.domain.Departments;
import org.apache.ibatis.annotations.Param;

public interface DepartmentsMapper {
    int deleteByPrimaryKey(Integer dId);

    int insert(Departments record);

    int insertSelective(Departments record);

    Departments selectByPrimaryKey(Integer dId);

    int updateByPrimaryKeySelective(Departments record);

    int updateByPrimaryKey(Departments record);

    Integer selectByDeptName(@Param("deptName") String deptName);
}