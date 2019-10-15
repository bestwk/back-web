package com.cheng.zhuo.electronicpos.manage.setting.account;
import	java.util.Objects;

import cn.hutool.core.util.ObjectUtil;
import com.alibaba.fastjson.JSONObject;
import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.SMS;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import com.cheng.zhuo.electronicpos.manage.login.ManageLogin;
import com.cheng.zhuo.electronicpos.manage.login.ManageLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created By wk
 * Date: 2019/9/24
 */
@RestController
public class AccountController extends BaseController {

    @Autowired
    private  AccountService accountService;

    @Autowired
    private ManageLoginService manageLoginService;

    @ResponseBody
    @GetMapping("/account/getManageLogin")
    public ResponseData getManageLogin(){
        ManageLogin admin = getAdmin();
        ManageLogin login = manageLoginService.findById(admin.getId());
        if(ObjectUtil.isNotNull(login)){
            return new ResponseData(true,"查询成功",login);
        }else{
            return new ResponseData(false,"查询失败","");
        }
    }

    @ResponseBody
    @GetMapping("/account/updateAccount")
    public ResponseData updateAccount(@RequestParam("phone")String phone){
        ManageLogin admin = getAdmin();
        int i  = manageLoginService.updateAccount(admin.getId(),phone);
        if(i > 0){
            return new ResponseData(true,"更新成功","");
        }else{
            return new ResponseData(false,"更新失败","");
        }
    }

    @ResponseBody
    @GetMapping("/account/sendMes")
    public ResponseData currendSend(@RequestParam("phone")String phone, @RequestParam("number") String number){
        ResponseData responseData = new ResponseData();

        ManageLogin admin = getAdmin();
        ManageLogin login = manageLoginService.findbyPhone(phone);
        if(ObjectUtil.isNotNull(login) && ObjectUtil.equal(number,login.getPhone())){
            return new ResponseData(false,"当前手机号已经注册","");
        }

        JSONObject jsonObject = SMS.sendJpushSmsMessageSelfCode(phone, number);
        System.out.println(jsonObject);
        String msg_id = "";
        if (jsonObject != null) {
            msg_id = jsonObject.getString("msg_id");
        }
        if ("".equals(msg_id)) {
        responseData.setSuccess(false);
        responseData.setData("");
        responseData.setMessage("验证码获取失败，请重新获取");
        }else{
            responseData.setSuccess(true);
            responseData.setData(number);
            responseData.setMessage("验证码发送成功");
        }
        return responseData;
    }



}
