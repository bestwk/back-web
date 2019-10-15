package com.cheng.zhuo.electronicpos.manage.setting.takeout;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SectionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Section record);

    int insertSelective(Section record);

    Section selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Section record);

    int updateByPrimaryKey(Section record);

    List<Section> getAllTimeArray();

    List<Section> getAllValuationArray();

    int deleteAll();
}