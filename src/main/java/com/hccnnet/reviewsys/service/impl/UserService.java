package com.hccnnet.reviewsys.service.impl;

import com.hccnnet.reviewsys.IDao.userMapper;
import com.hccnnet.reviewsys.domain.user;
import com.hccnnet.reviewsys.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2021/3/13.
 */
@Service("userservice")
public class UserService implements IUserService{


    @Autowired
    userMapper userMapper;

    @Override
    public user selectByPrimaryKey(Integer wId) {
        return userMapper.selectByPrimaryKey(1);
    }
}
