package com.cheng.zhuo.electronicpos.manage.dishes;


import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdditiveMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Additive record);

    int insertSelective(Additive record);

    Additive selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Additive record);

    int updateByPrimaryKey(Additive record);

    List<Additive> findByDishesId(Long dishesId);

    int deleteByDeshesId(Long dishesId);
}