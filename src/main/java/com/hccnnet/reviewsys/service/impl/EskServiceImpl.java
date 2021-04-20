package com.hccnnet.reviewsys.service.impl;

import com.hccnnet.reviewsys.IDao.eskMapper;
import com.hccnnet.reviewsys.domain.esk;
import com.hccnnet.reviewsys.service.IEskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2021/4/20.
 */
@Service("eskservice")
public class EskServiceImpl implements IEskService {

    @Autowired
    eskMapper eskMapper;

    @Override
    public esk selectByPrimaryKey(Integer id) {
        return eskMapper.selectByPrimaryKey(id);
    }
}
