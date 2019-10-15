package com.cheng.zhuo.electronicpos.manage.dishes;

import com.cheng.zhuo.electronicpos.manage.common.Catalogs;
import com.cheng.zhuo.electronicpos.manage.meal.SetMealDishes;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface DishesMapper {
    int deleteByPrimaryKey(Long id);

    int insertSelective(Dishes record);

    Dishes selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Dishes record);

    List<Dishes> findAllList(@Param("dishesCatalog") String dishesCatalog,
                             @Param("dishesName") String dishesName,
                             @Param("physicalStoreId") String physicalStoreId);

    List<Specification> selectByDishesId(@Param("dishesId") Long dishesId);

    Dishes findById(Integer id);

    int doDeleteBatchResouces(List<Integer> list);

    List<Tag> findTagByName(String name);

    List<Dishes> findGqList(@Param("physicalStoreId") String physicalStoreId);

    Integer findCount(String id);

    List<SetMealDishes> findDishesMeal(@Param("dishesCatalog") String dishesCatalog,@Param("dishesName") String dishesName);

    List<Catalogs> findDishesCatalogs();
}