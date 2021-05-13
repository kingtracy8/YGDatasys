package com.hccnnet.reviewsys.service.impl;

import com.hccnnet.reviewsys.IDao.eskMapper;
import com.hccnnet.reviewsys.domain.esk;
import com.hccnnet.reviewsys.service.IEskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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


    @Override
    public List<esk> selectAll(Integer start,Integer offset) {
        return eskMapper.selectAll(start,offset);
    }

    @Override
    public Integer selectCount() {
        return eskMapper.selectCount();
    }

    @Override
    public List<esk> selectAllEskFilter(Integer start, Integer offset, String content, String code, String result,String remark) {
        return eskMapper.selectAllEskFilter(start,offset,content,code,result,remark);
    }

    @Override
    public Integer insertEsk(esk record) {
        return eskMapper.insertEsk(record);
    }

    @Override
    public int insertSelective(esk record) {
        return eskMapper.insertEsk(record);
    }

    @Override
    public Integer selectCountFilter(Integer start, Integer offset, String content, String code, String result, String remark) {
        return eskMapper.selectCountFilter(start,offset,content,code,result,remark);
    }
}
