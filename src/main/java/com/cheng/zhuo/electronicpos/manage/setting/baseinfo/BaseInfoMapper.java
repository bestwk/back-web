package com.cheng.zhuo.electronicpos.manage.setting.baseinfo;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BaseInfoMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BaseInfo record);

    int insertSelective(BaseInfo record);

    BaseInfo selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BaseInfo record);

    int updateByPrimaryKey(BaseInfo record);

    BaseInfo getStore();
}