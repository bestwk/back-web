package com.cheng.zhuo.electronicpos.manage.setting.businessmodel;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BusinessModelMapper {
    int deleteByPrimaryKey(Long id);

    int insert(BusinessModel record);

    int insertSelective(BusinessModel record);

    BusinessModel selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(BusinessModel record);

    int updateByPrimaryKey(BusinessModel record);

    BusinessModel getStore();
}