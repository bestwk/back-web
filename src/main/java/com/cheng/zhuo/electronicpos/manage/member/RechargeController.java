package com.cheng.zhuo.electronicpos.manage.member;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import com.cheng.zhuo.electronicpos.manage.employees.Employees;
import com.cheng.zhuo.electronicpos.manage.login.ManageLogin;
import com.cheng.zhuo.electronicpos.manage.table.Tables;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.*;


/**
 * @author shuai
 * @date 2019/9/30 0030 9:12
 */
@RequestMapping("/recharge")
@RestController
public class RechargeController extends BaseController {
    @Autowired
    RechargeService rechargeService;

    @GetMapping()
    public ResponseData getRecharge(@RequestParam("memberId") String memberId){
        ResponseData res = new ResponseData();
        ManageLogin admin = getAdmin();
        try{
            List<RechargeRechargeRecord> recharge =  rechargeService.getRecharge(memberId,admin.getStoreId());
            res.setSuccess(true);
            res.setMessage("查询成功");
            res.setData(recharge);
        }catch (Exception e){
            res.setSuccess(false);
            e.printStackTrace();
        }
        return res;
    }

    @ResponseBody
    @PostMapping("/searchAll")
    public ResponseData searchAll (@RequestBody Map paramMap){
        Integer pageNum = Integer.parseInt(paramMap.get("pageNumTwo").toString());
        Integer pageSize = Integer.parseInt(paramMap.get("pageSizeTwo").toString());
        Integer type = Integer.parseInt(paramMap.get("type").toString());
        try {
            ManageLogin admin = getAdmin();

            PageInfo<RechargeRechargeRecord> recharge =  rechargeService.searchAll(pageNum,pageSize,type,admin.getStoreId());
            return new ResponseData(true,"查询成功",recharge);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }
    @ResponseBody
    @PostMapping("/searchAllByTime")
    public ResponseData searchAllByTime (@RequestBody Map paramMap){
        try {

            ManageLogin admin = getAdmin();
            paramMap.put("storeId",admin.getStoreId());
            PageInfo<RechargeRechargeRecord> recharge =  rechargeService.searchAllByTime(paramMap);
            return new ResponseData(true,"查询成功",recharge);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }
    @ResponseBody
    @PostMapping("/exportData")
    public ResponseData exportData (@RequestParam Map paramMap){
        try {
            Integer type = Integer.parseInt(paramMap.get("type").toString());
            List<RechargeRechargeRecord> list = new ArrayList<>();
            paramMap.put("storeId",getAdmin().getStoreId());
            if(type == 1){
               list =  rechargeService.exportDataCz(paramMap);  // 导出充值表
            }else if(type == 2){
               list =  rechargeService.exportDataXf(paramMap); // 导出消费表
            }
            return new ResponseData(true,"查询成功",list);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    @PostMapping
    public ResponseData doSaveResouce (@RequestBody RechargeRechargeRecord rechargeRechargeRecord){
        try {
            ManageLogin admin = getAdmin();
            rechargeRechargeRecord.setStoreId(admin.getStoreId().toString());
            final TimeZone zone = TimeZone.getTimeZone("GMT+8"); //获取中国时区
            TimeZone.setDefault(zone); //设置时区
            rechargeRechargeRecord.setCreatAt(new Date());
            int res=rechargeService.doSaveResouce(rechargeRechargeRecord);
            return new ResponseData(res>0);
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }

    @GetMapping("/employees")
    public ResponseData getEmployees(){
        ResponseData res = new ResponseData();
        ManageLogin admin = getAdmin();
        try{
           List<Employees> employees =  rechargeService.getEmployees(admin.getStoreId());
           res.setSuccess(true);
           res.setMessage("查询成功");
            res.setData(employees);
        }catch (Exception e){
            res.setSuccess(false);
            e.printStackTrace();
        }
        return res;
    }
}
