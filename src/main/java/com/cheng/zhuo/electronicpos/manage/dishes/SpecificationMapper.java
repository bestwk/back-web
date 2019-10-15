package com.cheng.zhuo.electronicpos.manage.dishes;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SpecificationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Specification record);

    int insertSelective(Specification record);

    Specification selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Specification record);

    int updateByPrimaryKey(Specification record);

    List<Specification> findByDishesId(Long dishesId);

    int deleteByDishesId(Long dishesId);

}