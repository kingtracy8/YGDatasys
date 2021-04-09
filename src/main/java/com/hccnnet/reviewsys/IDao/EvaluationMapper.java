package com.hccnnet.reviewsys.IDao;

import com.hccnnet.reviewsys.domain.Evaluation;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EvaluationMapper {
    int deleteByPrimaryKey(Integer elId);

    int insert(Evaluation record);

    int insertSelective(Evaluation record);

    Evaluation selectByPrimaryKey(Integer elId);

    int updateByPrimaryKeySelective(Evaluation record);

    int updateByPrimaryKey(Evaluation record);

    List<Evaluation> selectByTeacherId(@Param("eId") Integer eId,@Param("start") Integer start,@Param("offset") Integer offset);

    Integer selectCountByTeacherId(@Param("eId") Integer eId);

    List<Evaluation> selectAllEl(@Param("start") Integer start, @Param("offset") Integer offset);

    Integer selectAllElCount();
}