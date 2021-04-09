package com.hccnnet.reviewsys.service.impl;

import com.hccnnet.reviewsys.IDao.net_statisticsMapper;
import com.hccnnet.reviewsys.domain.net_statistics;
import com.hccnnet.reviewsys.service.INetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2021/4/2.
 */
@Service("netservice")
public class NetService implements INetService{


    @Autowired
    net_statisticsMapper net_statisticsMapper;

    @Override
    public List<net_statistics> selectAll() {
        return net_statisticsMapper.selectAll();
    }

    @Override
    public Integer selectCount() {
        return net_statisticsMapper.selectCount();
    }
}
