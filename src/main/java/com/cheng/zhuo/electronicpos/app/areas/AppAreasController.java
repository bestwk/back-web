package com.cheng.zhuo.electronicpos.app.areas;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 区域
 * @author MIAO
 */
@RestController
public class AppAreasController extends BaseController {

    @Autowired
    AppAreasService appAreasService;


    @SuppressWarnings({"unchecked", "Duplicates"})
    @GetMapping("/store/areas")
    public ResponseData getStoreAreas(String physicalStoreId){
        try {
            List<AppAreas> storeInfo = appAreasService.getStoreInfo(physicalStoreId);
            return new ResponseData(true,"查询成功",storeInfo);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }
}
