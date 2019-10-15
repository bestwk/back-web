package com.cheng.zhuo.electronicpos.manage.dishes;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import com.cheng.zhuo.electronicpos.manage.common.Catalogs;
import com.cheng.zhuo.electronicpos.manage.login.ManageLogin;
import com.cheng.zhuo.electronicpos.manage.meal.SetMealDishes;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * The type Dishes controller.
 *
 * @author shuai
 * @date 2019 /9/11 0011 9:20
 */
@RestController
@RequestMapping("/dishes")
public class DishesController extends BaseController {
    /**
     * The Dishes service.
     */
    @Autowired
    DishesService dishesService;

    /**
     * 分页查询.
     *
     * @param pageNum         the page num
     * @param pageSize        the page size
     * @param dishesCatalog   the find name
     * @param dishesName      the dishes name
     * @param physicalStoreId the physical store id
     * @return the response data
     */
    @GetMapping("/list")
    public ResponseData doQueryAllResouce (@RequestParam("pageNum") Integer pageNum,
                                           @RequestParam("pageSize") Integer pageSize,
                                           @RequestParam("dishesCatalog") String dishesCatalog,
                                           @RequestParam("dishesName") String dishesName,
                                           @RequestParam("physicalStoreId") String physicalStoreId
    ){
        try {
            PageInfo<Dishes> pageInfo=dishesService.doQueryAllResouce(pageNum,pageSize,dishesCatalog,dishesName,physicalStoreId);
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
            Dishes res = dishesService.getById(id);
            return  new ResponseData(true,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return  new ResponseData(false);
        }

    }

    /**
     * 保存
     *
     * @param sDishes the dishes
     * @return the response data
     */
    @PostMapping()
    public ResponseData doSaveResouce (@RequestBody Dishes sDishes){
        try {
            int res=dishesService.doSaveResouce(sDishes);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }


    /**
     * 更新
     *
     * @param dishes the dishes
     * @return the response data
     */
    @PutMapping
    public ResponseData doUpdateResouce (@RequestBody Dishes dishes){
        try {
            int res=dishesService.doUpdateResouce(dishes);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * 部分更新
     *
     * @param dishes the dishes
     * @return the response data
     */
    @PutMapping("/part")
    public ResponseData doUpdatePart (@RequestBody Dishes dishes){
        try {
            int res=dishesService.doUpdatePart(dishes);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * delete by-id
     *
     * @param id the id
     * @return the response data
     */
    @DeleteMapping("/by-id")
    public ResponseData doDeleteCourse(@RequestParam("id") Integer id){
        try {
            int res=dishesService.doDeleteResouce(id);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * 批量删除
     *
     * @param ids the ids
     * @return the response data
     */
    @DeleteMapping("/batch/del")
    public ResponseData doDeleteResouces(@RequestParam("ids")String ids){
        try {
            String[]  arrIds=ids.split(",");
            int res=dishesService.doDeleteBatchResouces(arrIds);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * 查询标签.
     *
     * @param name the name
     * @return the response data
     */
    @GetMapping("/tag")
    public ResponseData doGetTag(@RequestParam("name") String name){
        try {
            List<Tag> res=dishesService.doGetTag(name);
            return new ResponseData(true,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * 查询估清菜品.
     *
     * @param physicalStoreId the physical store id
     * @return the response data
     */
    @GetMapping("/GQ")
    public ResponseData getGqList(@RequestParam("physicalStoreId") String physicalStoreId){
        try {
            List<Dishes> res=dishesService.getGqList(physicalStoreId);
            return new ResponseData(true,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * 查询菜品下是否有套餐
     *
     * @param id the id
     * @return the response data
     */
    @GetMapping("/check")
    public ResponseData checkDishes(@RequestParam("id") String id){
        try {
            Boolean res=dishesService.checkDishes(id);
            return new ResponseData(true,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * 查询菜品跟套餐
     *
     * @param dishesCatalog the dishes catalog
     * @param dishesName    the dishes name
     * @return the dishes meal
     */
    @GetMapping("/dishes-meal")
    public ResponseData getDishesMeal(@RequestParam("dishesCatalog") String dishesCatalog,@RequestParam("dishesName") String dishesName){
        try {
            List<SetMealDishes> res=dishesService.getDishesMeal(dishesCatalog,dishesName);
            return new ResponseData(true,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * 查询菜品分类
     *
     * @return the response data
     */
    @GetMapping("/catalogs")
    public ResponseData getDishesCatalogs(){
        try {
            List<Catalogs> res=dishesService.getDishesCatalogs();
            return new ResponseData(true,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    @GetMapping("/catalogs/by-id")
    public ResponseData getDishesCatalogsById(@RequestParam("id") String id){
        try {
            Catalogs res=dishesService.getDishesCatalogsById(id);
            return new ResponseData(true,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }
    @PutMapping("/catalogs")
    public ResponseData updateCatalogs(@RequestBody Catalogs catalogs){
        try {
            ManageLogin admin = getAdmin();
            catalogs.setStoreId(admin.getStoreId().toString());
            Integer res=dishesService.updateCatalogs(catalogs);
            return new ResponseData(res>0,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }
    @DeleteMapping("/catalogs")
    public ResponseData deleteCatalogs(@RequestParam("id") String id){
        try {
            Integer res=dishesService.deleteCatalogs(id);
            return new ResponseData(res>0,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    @PostMapping("/save/catalogs")
    public ResponseData saveDishesCatalogs(@RequestBody Catalogs catalogs){
        try {
            ManageLogin admin = getAdmin();
            catalogs.setStoreId(admin.getStoreId().toString());
            int  res=dishesService.saveDishesCatalogs(catalogs);
            return new ResponseData(true,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }
}
