package com.cheng.zhuo.electronicpos.manage.table.areas;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AreasMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Areas record);

    int insertSelective(Areas record);

    Areas selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Areas record);

    int updateByPrimaryKey(Areas record);

    List<Areas> getAllAreas(String storeId);
}