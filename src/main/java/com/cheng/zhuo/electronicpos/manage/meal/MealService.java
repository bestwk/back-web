package com.cheng.zhuo.electronicpos.manage.meal;

import com.cheng.zhuo.electronicpos.manage.dishes.Dishes;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;

/**
 * @author shuai
 * @date 2019/9/17 0017 15:57
 */
@Service
public class MealService {
    @Autowired
    SetMealMapper setMealMapper;
    @Autowired
    SetMealDishesMapper setMealDishesMapper;

    public PageInfo<SetMeal> doQueryAllResouce(Integer pageNum, Integer pageSize){
        PageHelper.startPage(pageNum,pageSize);
        List<SetMeal> setMealList = setMealMapper.findAll();
        //查询套餐菜品
        for(SetMeal setMeal:setMealList){
            //查询套餐内菜品信息
            List<SetMealDishes> setMealDishes = setMealDishesMapper.findAllInfo(setMeal.getId());
            setMeal.setDishesMealList(setMealDishes);
        }
        PageInfo<SetMeal> pageInfo = new PageInfo<>(setMealList);
        return pageInfo;
    }

    public SetMeal getById(Integer id){

        SetMeal setMeal=  setMealMapper.selectByPrimaryKey(Long.parseLong(id.toString()));
        List<SetMealDishes> setMealDishes = setMealDishesMapper.findAllInfo(setMeal.getId());
        setMeal.setDishesMealList(setMealDishes);
        return setMeal;
    }

    @Transactional
    public Integer doSaveResouce(SetMeal setMeal){
        Integer res = 0;
        //插入套餐
        res = setMealMapper.insertSelective(setMeal);
        SetMeal setMeal1 =setMeal;
        //插入关系表
        for(SetMealDishes setMealDishes:setMeal.getDishesMealList()){
            setMealDishes.setSetMealId(setMeal1.getId());
            setMealDishesMapper.insertSelective(setMealDishes);
        }

        return  res;
    }

    public Integer doUpdateResouce(SetMeal setMeal){
        //删除菜品关系表，再进行插入
        setMealDishesMapper.deleteBySetMealId(setMeal.getId());
        //插入关系表
        for(SetMealDishes setMealDishes:setMeal.getDishesMealList()){
            setMealDishes.setSetMealId(setMeal.getId());
            setMealDishesMapper.insertSelective(setMealDishes);
        }
        return  setMealMapper.updateByPrimaryKeySelective(setMeal);
    }

    public Integer doUpdatePart(SetMeal setMeal){
        return setMealMapper.updateByPrimaryKeySelective(setMeal);
    }

    @Transactional
    public Integer doDeleteResouce(Integer id){
        setMealDishesMapper.deleteBySetMealId(Long.parseLong(id.toString()));
        return  setMealMapper.deleteByPrimaryKey(Long.parseLong(id.toString()));
    }

    public List<SetMealDishes> getMealDishes(String dishesCatalog,String dishesName){
        List<SetMealDishes> mealDishes = setMealMapper.findMealDishes(dishesCatalog,dishesName);
        return  mealDishes;
    }
}
