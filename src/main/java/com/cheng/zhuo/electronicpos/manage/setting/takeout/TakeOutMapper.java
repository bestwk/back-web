package com.cheng.zhuo.electronicpos.manage.setting.takeout;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface TakeOutMapper {
    int deleteByPrimaryKey(Long id);

    int insert(TakeOut record);

    int insertSelective(TakeOut record);

    TakeOut selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TakeOut record);

    int updateByPrimaryKey(TakeOut record);

    TakeOut getAll();
}