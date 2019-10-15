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
 * 营业统计对账
 */
@RestController
public class BillStatementController extends BaseController {
    @Autowired
    BillStatementService billStatementService;

    @GetMapping("/billStatement/initPage")
    public ResponseData initPage(@RequestParam Map paramsMap){
        ResponseData res = new ResponseData();
        try{
            ManageLogin admin = getAdmin();
            String storeId = admin.getStoreId()+"";
            paramsMap.put("storeId",storeId);
            Map map = billStatementService.initPage(paramsMap);
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
