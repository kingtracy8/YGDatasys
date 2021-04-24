package com.hccnnet.reviewsys.service;

import com.hccnnet.reviewsys.domain.esk;

import java.util.List;

/**
 * Created by Administrator on 2021/4/20.
 */
public interface IEskService {

    esk selectByPrimaryKey(Integer id);

    List<esk> selectAll(Integer start,Integer offset);

    Integer selectCount();

    List<esk> selectAllEskFilter(Integer start,Integer offset,String content,String code,String result,String remark);

    Integer insertEsk(esk record);

    int insertSelective(esk record);
}
