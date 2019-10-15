package com.cheng.zhuo.electronicpos.manage.dishes;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TagMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Tag record);

    int insertSelective(Tag record);

    Tag selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Tag record);

    int updateByPrimaryKey(Tag record);
}