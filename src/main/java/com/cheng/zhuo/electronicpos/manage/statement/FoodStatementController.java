package com.cheng.zhuo.electronicpos.manage.statement;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import com.cheng.zhuo.electronicpos.manage.login.ManageLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * 菜品统计
 */
@CrossOrigin
@RestController
public class FoodStatementController extends BaseController {
    @Autowired
    FoodStatementService foodStatementService;

    @GetMapping("/foodStatement/initParams")
    public ResponseData initParams(){
        ResponseData res = new ResponseData();
        try {
            ManageLogin admin = getAdmin();
            String storeId = admin.getStoreId()+"";
            Map<String,Object> map = foodStatementService.initParams(storeId);
            res.setSuccess(true);
            res.setData(map);
        }catch (Exception e){
            e.printStackTrace();
            res.setSuccess(false);
        }
        return res;
    }

    @GetMapping  ("/foodStatement/initPage")
    public ResponseData initPage(@RequestParam Map paramsMap){
        ResponseData res = new ResponseData();
        try {
            ManageLogin admin = getAdmin();
            String storeId = admin.getStoreId()+"";
            paramsMap.put("storeId",storeId);
            Map<String,Object> map = foodStatementService.initPage(paramsMap);
            res.setSuccess(true);
            res.setData(map);
        }catch (Exception e){
            e.printStackTrace();
            res.setSuccess(false);
        }
        return res;
    }


}
