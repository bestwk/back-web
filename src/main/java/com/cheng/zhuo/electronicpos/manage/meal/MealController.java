package com.cheng.zhuo.electronicpos.manage.meal;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import com.cheng.zhuo.electronicpos.manage.dishes.Dishes;
import com.cheng.zhuo.electronicpos.manage.login.ManageLogin;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Base64;
import java.util.List;

/**
 * The type Meal controller.
 *
 * @author shuai
 * @date 2019 /9/17 0017 15:57
 */
@RestController
@RequestMapping("/meal")
public class MealController extends BaseController {


    /**
     * The Meal service.
     */
    @Autowired
     MealService mealService;


    /**
     * 分页查询
     *
     * @param pageNum  the page num
     * @param pageSize the page size
     * @return the response data
     */
    @GetMapping("/list")
    public ResponseData doQueryAllResouce (@RequestParam("pageNum") Integer pageNum,
                                           @RequestParam("pageSize") Integer pageSize
    ){
        try {
            PageInfo<SetMeal> pageInfo=mealService.doQueryAllResouce(pageNum,pageSize);
            return new ResponseData(true,pageInfo);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }


    /**
     * Gets by id.
     *
     * @param id the id
     * @return the by id
     */
    @GetMapping("/by-id")
    public ResponseData getById(@RequestParam("id") Integer id){
        try {
            SetMeal res = mealService.getById(id);
            return  new ResponseData(true,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return  new ResponseData(false);
        }

    }


    /**
     * 保存.
     *
     * @param setMeal the set meal
     * @return the response data
     */
    @PostMapping()
    public ResponseData doSaveResouce (@RequestBody SetMeal setMeal){
        try {
            ManageLogin admin = getAdmin();
            setMeal.setStoreId(admin.getStoreId());
            int res=mealService.doSaveResouce(setMeal);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }


    /**
     * 更新.
     *
     * @param setMeal the set meal
     * @return the response data
     */
    @PutMapping
    public ResponseData doUpdateResouce (@RequestBody SetMeal setMeal){
        try {
            ManageLogin admin = getAdmin();
            setMeal.setStoreId(admin.getStoreId());
            int res=mealService.doUpdateResouce(setMeal);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }


    /**
     * 部分更新.
     *
     * @param setMeal the set meal
     * @return the response data
     */
    @PutMapping("/part")
    public ResponseData doUpdatePart (@RequestBody SetMeal setMeal){
        try {
            int res=mealService.doUpdatePart(setMeal);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }


    /**
     * delete by-id.
     *
     * @param id the id
     * @return the response data
     */
    @DeleteMapping("/by-id")
    public ResponseData doDeleteCourse(@RequestParam("id") Integer id){
        try {
            int res=mealService.doDeleteResouce(id);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * 查询菜品、区分规格
     *
     * @return the response data
     */
    @GetMapping("/dishes")
    public ResponseData getMealDishes(@RequestParam("dishesCatalog") String dishesCatalog,@RequestParam("dishesName") String dishesName){
        try {
            List<SetMealDishes> res = mealService.getMealDishes(dishesCatalog,dishesName);
            return  new ResponseData(true,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return  new ResponseData(false);
        }

    }

}
