package com.cheng.zhuo.electronicpos.manage.table;
import	java.util.ArrayList;
import	java.util.Iterator;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import com.cheng.zhuo.electronicpos.manage.store.PhysicalStore;
import com.cheng.zhuo.electronicpos.manage.table.areas.Areas;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created By wk
 * Date: 2019/9/9
 */
@RestController
public class TablesController extends BaseController {

    @Autowired
    private TablesService tablesService;

    @ResponseBody
    @GetMapping("/tables/getStoreList")
    public ResponseData getStoreList(){
        List<PhysicalStore> list = tablesService.getAllStore();
        return new ResponseData(true,"查询成功",list);
    }
    /**
     * @Author wk on 2019/9/11
     * @Description 查询一个门店的所有区域
     */
    @ResponseBody
    @GetMapping("/table/getAllAreasList")
    public ResponseData getAllAreasList(@RequestParam("storeId") String storeId){
        List<Areas> list = tablesService.getAllAreasList(storeId);
        return new ResponseData(true,"查询成功",list);
    }

    /**
     * @Author wk on 2019/9/11
     * @Description 查询一个区域的桌台
     */
    @ResponseBody
    @GetMapping("/table/getTableList")
    public ResponseData getTableList(@RequestParam("pageNum") Integer pageNum,
                                     @RequestParam("pageSize") Integer pageSize,
                                     @RequestParam("store") String store,
                                     @RequestParam("tableName") String tableName,
                                     @RequestParam("areas") String areas){

        try {
            PageInfo<Tables> list = tablesService.getTableList(pageNum,pageSize,store,tableName,areas);
            return new ResponseData(true,"查询成功",list);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseData(false,"查询失败","");
        }
    }

    @ResponseBody
    @GetMapping("/table/deleteTableById")
    public ResponseData deleteTableById(@RequestParam("tableId")Integer tableId){
        int i = tablesService.deleteTableById(tableId);
        if(i > 0){
            return new ResponseData(true, "删除成功", "");
        }else{
            return new ResponseData(false, "删除失败", "");
        }
    }

    @ResponseBody
    @PostMapping("/table/addTable")
    public ResponseData addTable(@RequestBody Tables tables){
        int i = tablesService.addTable(tables);
        if(i > 0){
            return new ResponseData(true, " 添加成功", "");
        }else{
            return new ResponseData(false, "添加失败", "");
        }
    }
    @ResponseBody
    @PostMapping("/table/updateTable")
    public ResponseData updateTable(@RequestBody Tables tables){
        int i = tablesService.updateTable(tables);
        if(i > 0){
            return new ResponseData(true, "更新成功", "");
        }else{
            return new ResponseData(false, "更新失败", "");
        }
    }
    /**
     * @Author wk on 2019/9/16
     * @Description 表格按钮.更换桌台是否启用,是否要必点菜
     */
    @ResponseBody
    @GetMapping("/table/update")
    public ResponseData update(@RequestParam("value")Integer value, @RequestParam("method") Integer method, @RequestParam("id")Integer id){
        int i = tablesService.update(value,method,id);
        if(i > 0){
            return new ResponseData(true, "更新成功", "");
        }else{
            return new ResponseData(false, "更新失败", "");
        }
    }
    /**
     * @Author wk on 2019/9/16
     * @Description 保存更新链码(二维码)
     */
    @ResponseBody
    @PostMapping("/table/updateShortChain")
    public ResponseData updateShortChain(@RequestBody Map map){
       int i = tablesService.updateShortChain(map);
        if(i > 0){
            return new ResponseData(true, "保存成功", "");
        }else{
            return new ResponseData(false, "保存失败", "");
        }
    }





}
