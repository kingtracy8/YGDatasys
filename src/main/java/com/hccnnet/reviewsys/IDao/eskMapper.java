package com.hccnnet.reviewsys.IDao;

import com.hccnnet.reviewsys.domain.esk;
import org.springframework.stereotype.Repository;

@Repository
public interface eskMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(esk record);

    int insertSelective(esk record);

    esk selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(esk record);

    int updateByPrimaryKey(esk record);
}