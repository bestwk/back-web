package com.cheng.zhuo.electronicpos.manage.member;

import com.alibaba.fastjson.JSONObject;
import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import com.cheng.zhuo.electronicpos.manage.login.ManageLogin;
import com.cheng.zhuo.electronicpos.manage.member.settings.MemberSettings;
import com.cheng.zhuo.electronicpos.untils.HttpClient;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@RestController
public class MemberController extends BaseController {

    @Autowired
    MemberService memberService;


    /**
     * 查询参数
     * @param
     * @return
     */
    @GetMapping("/member/initParams")
    public ResponseData initParams(){
        ResponseData res = new ResponseData();
        try{
            ManageLogin admin = getAdmin();
            Map map = memberService.initParams(admin.getStoreId()+"");
            res.setSuccess(true);
            res.setData(map);
        }catch (Exception e){
            res.setSuccess(false);
            e.printStackTrace();
        }
        return res;
    }


    /**
     * 查询会员列表
     * @param paramsMap
     * @return
     */
    @GetMapping("/member/getMemberList")
    public ResponseData getMemberList(@RequestParam Map paramsMap){
        ResponseData res = new ResponseData();
        try{
            ManageLogin admin = getAdmin();
            paramsMap.put("storeId",admin.getStoreId());
            PageInfo page = memberService.getMemberList(paramsMap);
            res.setSuccess(true);
            res.setData(page);
        }catch (Exception e){
           res.setSuccess(false);
           e.printStackTrace();
        }
        return res;
    }

    /**
     * 查询会员列表
     * @param paramsMap
     * @return
     */
    @GetMapping("/member/getDeleteMemberList")
    public ResponseData getDeleteMemberList(@RequestParam Map paramsMap){
        ResponseData res = new ResponseData();
        try{
            ManageLogin admin = getAdmin();
            paramsMap.put("storeId",admin.getStoreId());
            PageInfo page = memberService.getDeleteMemberList(paramsMap);
            res.setSuccess(true);
            res.setData(page);
        }catch (Exception e){
            res.setSuccess(false);
            e.printStackTrace();
        }
        return res;
    }

    /**
     * 根据id删除会员
     * @param paramsMap
     * @return
     */
    @GetMapping("/member/deleteById")
    public ResponseData deleteById(@RequestParam Map paramsMap){
        ResponseData res = new ResponseData();
        try{
            memberService.deleteById(paramsMap);
            res.setSuccess(true);
        }catch (Exception e){
            res.setSuccess(false);
            e.printStackTrace();
        }
        return res;
    }

    @PostMapping ("/member/updateById")
    public ResponseData updateById(@RequestBody Member member){
        ResponseData res = new ResponseData();
        try{
            memberService.updateById(member);
            res.setSuccess(true);
        }catch (Exception e){
            res.setSuccess(false);
            e.printStackTrace();
        }
        return res;
    }

    /**
     * 添加会员
     * @param member
     * @return
     */
    @PostMapping ("/member/addMember")
    public ResponseData addMember(@RequestBody Member member){
        ResponseData res = new ResponseData();
        try{
            ManageLogin admin = getAdmin();
            member.setStoreId(admin.getStoreId()+"");
            member.setCreateTime(new Date());
            member.setStatus((byte)1);
            member.setVipCode(System.currentTimeMillis()+"");
            member.setVipTime(new Date());
            memberService.addMember(member);
            res.setSuccess(true);
        }catch (Exception e){
            res.setSuccess(false);
            e.printStackTrace();
        }
        return res;
    }

    /**
     * 启用
     * @param id
     * @return
     */
    @GetMapping ("/member/qiyong")
    public ResponseData qiyong(String id){
        ResponseData res = new ResponseData();
        try{
            memberService.qiyong(id);
            res.setSuccess(true);
        }catch (Exception e){
            res.setSuccess(false);
            e.printStackTrace();
        }
        return res;
    }

    @GetMapping("member/init")
    public ResponseData init(){
        ResponseData res = new ResponseData();
        try{
            ManageLogin admin = getAdmin();
            Boolean flag = memberService.init(admin.getStoreId());
            res.setSuccess(true);
            res.setData(flag);
        }catch (Exception e){
            res.setSuccess(false);
            e.printStackTrace();
        }
        return res;
    }


}
