package com.hccnnet.reviewsys.service.impl;

import com.hccnnet.reviewsys.IDao.EvaluationMapper;
import com.hccnnet.reviewsys.domain.Evaluation;
import com.hccnnet.reviewsys.service.IEvaluationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by trcay on 2018/9/7.
 */
@Service("evaluationService")
public class EvaluationService implements IEvaluationService{

    @Autowired
    EvaluationMapper evaluationMapper;


    @Override
    public List<Evaluation> selectByTeacherId(Integer eId,Integer start,Integer offset) {
        return evaluationMapper.selectByTeacherId(eId,start,offset);
    }

    @Override
    public Integer selectCountByTeacherId(Integer eId) {
        return evaluationMapper.selectCountByTeacherId(eId);
    }

    @Override
    public Evaluation selectByPrimaryKey(Integer elId) {
        return evaluationMapper.selectByPrimaryKey(elId);
    }

    @Override
    public int insertSelective(Evaluation record) {
        return evaluationMapper.insertSelective(record);
    }

    @Override
    public int updateByPrimaryKeySelective(Evaluation record) {
        return evaluationMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public List<Evaluation> selectAllEl(Integer start, Integer offset) {
        return evaluationMapper.selectAllEl(start,offset);
    }

    @Override
    public Integer selectAllElCount() {
        return evaluationMapper.selectAllElCount();
    }


}
