package com.cheng.zhuo.electronicpos.manage.employees;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import com.cheng.zhuo.electronicpos.manage.common.Parameters;
import com.cheng.zhuo.electronicpos.manage.login.ManageLogin;
import com.cheng.zhuo.electronicpos.manage.store.PhysicalStore;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * The type Employees controller.
 *
 * @author shuai
 * @date 2019 /9/9 0009 16:41
 */
@RestController
@RequestMapping("/employees")
public class EmployeesController extends BaseController {
    /**
     * The Employees service.
     */
    @Autowired
    EmployeesService employeesService;

    /**
     * 分页查询.
     *
     * @param pageNum  the page num
     * @param pageSize the page size
     * @param findName the find name
     * @return the response data
     */
    @GetMapping("/list")
    public ResponseData doQueryAllResouce (@RequestParam("pageNum") Integer pageNum,
                                           @RequestParam("pageSize") Integer pageSize,
                                           @RequestParam("findName") String findName
                                          ){
        try {
            PageInfo<Employees> pageInfo=employeesService.doQueryAllResouce(pageNum,pageSize,findName);
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
            Employees res = employeesService.getById(id);
            return  new ResponseData(true,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return  new ResponseData(false);
        }


    }

    /**
     * 保存.
     *
     * @param employees the employees
     * @return the response data
     */
    @PostMapping
    public ResponseData doSaveResouce (@RequestBody Employees employees){
        try {
            ManageLogin admin = getAdmin();
            employees.setStoreId(admin.getStoreId());
            int res=employeesService.doSaveResouce(employees);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * 更新.
     *
     * @param employees the employees
     * @return the response data
     */
    @PutMapping
    public ResponseData doUpdateResouce (@RequestBody Employees employees){
        try {
            ManageLogin admin = getAdmin();
            employees.setStoreId(admin.getStoreId());
            int res=employeesService.doUpdateResouce(employees);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * 删除by-id.
     *
     * @param id the id
     * @return the response data
     */
    @DeleteMapping("/by-id")
    public ResponseData doDeleteCourse(@RequestParam("id") Integer id){
        try {
            int res=employeesService.doDeleteResouce(id);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * 批量删除.
     *
     * @param ids the ids
     * @return the response data
     */
    @DeleteMapping("/batch/del")
    public ResponseData doDeleteResouces(@RequestParam("ids")String ids){
        try {
            String[]  arrIds=ids.split(",");
            int res=employeesService.doDeleteBatchResouces(arrIds);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * Gets store info.
     *
     * @param businessId the business id
     * @return the store info
     */
    @GetMapping("/business/info")
    public ResponseData getStoreInfo(@RequestParam("businessId") String businessId,@RequestParam("shopName") String shopName){
        try {
            List<PhysicalStore> res=employeesService.getStoreInfo(businessId,shopName);
            return new ResponseData(true,"查询成功",res);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    /**
     * Gets role info.
     *
     * @param type the type
     * @return the role info
     */
    @GetMapping("/roles")
    public ResponseData getRoleInfo(@RequestParam("type") String type){
        List<Parameters> res = employeesService.getRoleInfo(type);
        return new ResponseData(true,"查询成功",res);
    }
 }
