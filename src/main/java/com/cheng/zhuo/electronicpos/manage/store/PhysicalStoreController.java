package com.cheng.zhuo.electronicpos.manage.store;

import com.alibaba.fastjson.JSONObject;
import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import com.cheng.zhuo.electronicpos.manage.login.ManageLogin;
import com.cheng.zhuo.electronicpos.untils.HttpClient;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

@RestController
public class PhysicalStoreController extends BaseController {

    @Autowired
    PhysicalStoreService physicalStoreService;

    /**
     * 查询列表
     * @param paramMap
     * @return
     */
    @GetMapping("/getPhysicalStoreList")
    public ResponseData getPhysicalStoreList(@RequestParam Map<String,Object> paramMap){
           ResponseData res = new ResponseData();
           try{
               ManageLogin admin = getAdmin();
               paramMap.put("storeId",admin.getStoreId());
               PageInfo pageInfo = physicalStoreService.getPhysicalStoreList(paramMap);
              res.setSuccess(true);
              res.setData(pageInfo);
           }catch (Exception e){
               e.printStackTrace();
               res.setSuccess(false);
           }
           return res;
    }

    @PostMapping("/updatePhysicalStore")
    public ResponseData updatePhysicalStore(@RequestBody PhysicalStore physicalStore){
        ResponseData res = new ResponseData();
        try{
            Map map = Init.getMap();
            String provinceCode = map.get(physicalStore.getProvinceName()).toString();
            physicalStore.setProvinceCode(provinceCode);
            String cityCode = map.get(physicalStore.getCityName()).toString();
            physicalStore.setCityCode(cityCode);
            String districtCode = map.get(physicalStore.getDistrictName()).toString();
            physicalStore.setDistrictCode(districtCode);
            physicalStoreService.updatePhysicalStore(physicalStore);
            res.setSuccess(true);
        }catch (Exception e){
            e.printStackTrace();
            res.setSuccess(false);
            res.setMessage("系统异常");
        }
        return res;
    }
    @PostMapping("/updatePhysicalStoreStatus")
    public ResponseData updatePhysicalStoreStatus(@RequestBody PhysicalStore physicalStore){
        ResponseData res = new ResponseData();
        try{
            physicalStoreService.updatePhysicalStore(physicalStore);
            res.setSuccess(true);
        }catch (Exception e){
            e.printStackTrace();
            res.setSuccess(false);
            res.setMessage("系统异常");
        }
        return res;
    }

    @GetMapping("/getPhysicalStoreById")
    public ResponseData updatePhysicalStore(String id){
        ResponseData res = new ResponseData();
        try{
            PhysicalStore physicalStore = physicalStoreService.getPhysicalStoreById(id);
            res.setData(physicalStore);
            res.setSuccess(true);
        }catch (Exception e){
            e.printStackTrace();
            res.setSuccess(false);
        }
        return res;
    }

    @PostMapping("/insertPhysicalStore")
    public ResponseData insertPhysicalStore(@RequestBody PhysicalStore physicalStore){
        ResponseData res = new ResponseData();
        try{
            ManageLogin admin = getAdmin();
            physicalStore.setStoreId(admin.getStoreId()+"");
            Map map = Init.getMap();
            String provinceCode = map.get(physicalStore.getProvinceName()).toString();
            physicalStore.setProvinceCode(provinceCode);
            String cityCode = map.get(physicalStore.getCityName()).toString();
            physicalStore.setCityCode(cityCode);
            String districtCode = map.get(physicalStore.getDistrictName()).toString();
            physicalStore.setDistrictCode(districtCode);
            physicalStoreService.insertPhysicalStore(physicalStore);
            res.setSuccess(true);
        }catch (Exception e){
            e.printStackTrace();
            res.setSuccess(false);
        }
        return res;
    }

    @GetMapping("/tx/ws/geocoder/v1")
    public JSONObject getDetailAddress(@RequestParam Map<String,String> params) throws IOException, URISyntaxException {
        String url = "https://apis.map.qq.com/ws/geocoder/v1/?";
        String s = HttpClient.doGet(url, params);
        System.out.println("sssss========"+s);
        JSONObject jsonObject = JSONObject.parseObject(s);
        return jsonObject;
    }

    @GetMapping("getParamsList")
    public ResponseData getParamsList(){
        ResponseData res = new ResponseData();
        try{
            Map map = physicalStoreService.getParamsList();
            res.setSuccess(true);
            res.setData(map);
        }catch (Exception e){
            e.printStackTrace();
            res.setSuccess(false);
        }
        return res;
    }


}
