package com.cheng.zhuo.electronicpos.manage.meal;


import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SetMealDishesMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SetMealDishes record);

    int insertSelective(SetMealDishes record);

    SetMealDishes selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SetMealDishes record);

    int updateByPrimaryKey(SetMealDishes record);

    List<SetMealDishes> findAllInfo(Long setMealId);

    int deleteBySetMealId(Long setMealId);
}