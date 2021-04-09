package com.hccnnet.reviewsys.IDao;

import com.hccnnet.reviewsys.domain.user;
import org.springframework.stereotype.Repository;

@Repository
public interface userMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(user record);

    int insertSelective(user record);

    user selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(user record);

    int updateByPrimaryKey(user record);
}