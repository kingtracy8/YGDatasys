package com.hccnnet.reviewsys.service.impl;

import com.hccnnet.reviewsys.IDao.WorkReportMapper;
import com.hccnnet.reviewsys.domain.WorkReport;
import com.hccnnet.reviewsys.service.IWorkReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by trcay on 2018/9/7.
 */
@Service("workReportService")
public class WorkReportService implements IWorkReportService {


    @Autowired
    WorkReportMapper workReportMapper;

    @Override
    public Integer insertSelective(WorkReport workReport) {
        return workReportMapper.insertSelective(workReport);
    }

    @Override
    public Integer selectCommitDuplicate(int employeeId, int deptId) {
        return workReportMapper.selectCommitDuplicate(employeeId,deptId);
    }

    @Override
    public List<WorkReport> selectAllWr(Integer start, Integer offset) {
        return workReportMapper.selectAllWr(start,offset);
    }

    @Override
    public Integer selectAllWrCount() {
        return workReportMapper.selectAllWrCount();
    }

    @Override
    public WorkReport selectByPrimaryKey(Integer wId) {
        return workReportMapper.selectByPrimaryKey(wId);
    }
}
