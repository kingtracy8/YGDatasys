package com.hccnnet.reviewsys.service;

import com.hccnnet.reviewsys.domain.WorkReport;

import java.util.List;

/**
 * Created by trcay on 2018/9/7.
 */
public interface IWorkReportService {

    Integer insertSelective(WorkReport workReport);

    Integer selectCommitDuplicate(int employeeId,int deptId);

    List<WorkReport> selectAllWr(Integer start,Integer offset);

    Integer selectAllWrCount();

    WorkReport selectByPrimaryKey(Integer wId);
}
