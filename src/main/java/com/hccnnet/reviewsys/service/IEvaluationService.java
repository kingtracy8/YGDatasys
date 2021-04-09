package com.hccnnet.reviewsys.service;

import com.hccnnet.reviewsys.domain.Evaluation;

import java.util.List;

/**
 * Created by trcay on 2018/9/7.
 */
public interface IEvaluationService {

    List<Evaluation> selectByTeacherId(Integer eId,Integer start,Integer offset);

    Integer selectCountByTeacherId(Integer eId);

    Evaluation selectByPrimaryKey(Integer elId);

    int insertSelective(Evaluation record);

    int updateByPrimaryKeySelective(Evaluation record);

    List<Evaluation> selectAllEl(Integer start,Integer offset);

    Integer selectAllElCount();
}
