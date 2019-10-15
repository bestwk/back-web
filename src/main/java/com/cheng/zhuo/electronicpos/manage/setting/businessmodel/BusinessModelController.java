package com.cheng.zhuo.electronicpos.manage.setting.businessmodel;
import	java.util.ArrayList;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * Created By wk
 * Date: 2019/9/18
 */
@RestController
public class BusinessModelController extends BaseController {

    @Autowired
    private BusinessModelService businessModelService;

    @ResponseBody
    @GetMapping("/businessmodal/getStore")
    public ResponseData getStore(){
       BusinessModel busines =  businessModelService.getStore();
       if(busines != null){
           return new ResponseData(true,"初始化成功",busines);
       }else{
           return new ResponseData(false,  "初始化失败", "");
       }
    }

    @ResponseBody
    @PostMapping("/businessmodal/updateBusinessModel")
    public ResponseData updateBusinessModel(@RequestBody BusinessModel businessModel){
       int i  =  businessModelService.updateBusinessModel(businessModel);

       if(i > 0){
           return new ResponseData(true,"初始化成功","");
       }else{
           return new ResponseData(false,  "初始化失败", "");
       }
    }

}
