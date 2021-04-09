package com.hccnnet.reviewsys.service.impl;

import com.hccnnet.reviewsys.IDao.DepartmentsMapper;
import com.hccnnet.reviewsys.service.IDepartmentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by trcay on 2018/9/7.
 */
@Service("departmentsService")
public class DepartmentsService implements IDepartmentsService {

    @Autowired
    DepartmentsMapper departmentsMapper;

    @Override
    public Integer selectByDeptName(String deptName) {
        return departmentsMapper.selectByDeptName(deptName);
    }
}
