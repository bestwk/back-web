package com.cheng.zhuo.electronicpos.manage.statement;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import com.cheng.zhuo.electronicpos.manage.login.ManageLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 综合统计
 */
@RestController
public class BussessStatementController extends BaseController {

    @Autowired
    BussessStatementService bussessStatementService;

    @GetMapping("/bussessStatement/initPage")
    public ResponseData initPage(@RequestParam Map paramsMap){
        ResponseData res = new ResponseData();
        try{
            // TODO: 2019/9/18 0018
            String storeId = "1";
            paramsMap.put("storeId",storeId);
            Map map = bussessStatementService.initPage(paramsMap);
            List<Map> list = new ArrayList<>();
            list.add(map);
            res.setSuccess(true);
            res.setData(list);
        }catch (Exception e){
            e.printStackTrace();
            res.setSuccess(false);
        }
        return res;
    }

    @GetMapping("/bussessStatement/initParams")
    public ResponseData initParams(){
        ResponseData res = new ResponseData();
        try{
            ManageLogin admin = getAdmin();
            String storeId = admin.getStoreId()+"";
            Map map = bussessStatementService.initParams(storeId);
            List<Map> list = new ArrayList<>();
            list.add(map);
            res.setSuccess(true);
            res.setData(list);
        }catch (Exception e){
            e.printStackTrace();
            res.setSuccess(false);
        }
        return res;
    }

}
