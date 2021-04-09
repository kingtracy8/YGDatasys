package com.hccnnet.reviewsys.service;

import com.hccnnet.reviewsys.domain.net_statistics;

import java.util.List;

/**
 * Created by Administrator on 2021/4/2.
 */
public interface INetService {

    List<net_statistics> selectAll();

    Integer selectCount();

}
