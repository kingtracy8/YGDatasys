package com.hccnnet.reviewsys.IDao;

import com.hccnnet.reviewsys.domain.net_statistics;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface net_statisticsMapper {
    int insert(net_statistics record);

    int insertSelective(net_statistics record);

    List<net_statistics> selectAll(@Param("start") Integer start, @Param("offset") Integer offset);

    Integer selectCount();
}