package com.cheng.zhuo.electronicpos.manage.common;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ParametersMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Parameters record);

    int insertSelective(Parameters record);

    Parameters selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Parameters record);

    int updateByPrimaryKey(Parameters record);

    List<Parameters> selectByType(String shop);
}