package com.cheng.zhuo.electronicpos.manage.meal;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
@Mapper
public interface SetMealMapper {
    int deleteByPrimaryKey(Long id);

    int insert(SetMeal record);

    int insertSelective(SetMeal record);

    SetMeal selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(SetMeal record);

    List<SetMeal> findAll();

    List<SetMealDishes> findMealDishes(@Param("dishesCatalog") String dishesCatalog,@Param("dishesName") String dishesName);
}