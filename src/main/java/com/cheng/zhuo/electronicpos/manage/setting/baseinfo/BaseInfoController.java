package com.cheng.zhuo.electronicpos.manage.setting.baseinfo;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import java.util.HashMap;
import java.util.Map;

/**
 * Created By wk
 * Date: 2019/9/17
 */
@RestController
public class BaseInfoController extends BaseController {
    @Autowired
    private BaseInfoService baseInfoService;

    @ResponseBody
    @GetMapping("/baseinfo/getStore")
    public ResponseData getStore(){
        BaseInfo baseInfo = baseInfoService.getStore();
        if(baseInfo != null){
        return new ResponseData(true,"查询成功",baseInfo);
        }else{
            return new ResponseData(false,"查询失败","");
        }
    }


    @ResponseBody
    @PostMapping("/baseinfo/updateStore")
    public ResponseData updateStore(@RequestBody BaseInfo baseInfo){
       int i = baseInfoService.updateStore(baseInfo);
        return new ResponseData(true,"查询成功","");
    }

}
