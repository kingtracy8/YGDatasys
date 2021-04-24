package com.hccnnet.reviewsys.IDao;

import com.hccnnet.reviewsys.domain.esk;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface eskMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(esk record);

    Integer insertEsk(esk record);

    int insertSelective(esk record);

    esk selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(esk record);

    int updateByPrimaryKey(esk record);

    List<esk> selectAll(@Param("start") Integer start, @Param("offset") Integer offset);

    Integer selectCount();

    List<esk> selectAllEskFilter(@Param("start") Integer start, @Param("offset") Integer offset, @Param("content") String content, @Param("code") String code, @Param("result") String result,@Param("remark") String remark);
}