package com.hccnnet.reviewsys.IDao;

import com.hccnnet.reviewsys.domain.WorkReport;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface WorkReportMapper {
    int deleteByPrimaryKey(Integer wId);

    int insert(WorkReport record);

    int insertSelective(WorkReport record);

    WorkReport selectByPrimaryKey(Integer wId);

    int updateByPrimaryKeySelective(WorkReport record);

    int updateByPrimaryKey(WorkReport record);

    Integer selectCommitDuplicate(int employeeId,int deptId);


    List<WorkReport> selectAllWr(@Param("start") Integer start, @Param("offset") Integer offset);

    Integer selectAllWrCount();
}