package com.cheng.zhuo.electronicpos.manage.login;

import cn.hutool.core.util.ObjectUtil;
import cn.hutool.crypto.digest.DigestUtil;
import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;
import sun.applet.Main;
import sun.security.provider.MD5;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * @author shuai
 * @date 2019/8/23 0023 15:16
 */
@RestController
public class ManageLoginController extends BaseController {

    @Autowired
    private ManageLoginService manageLoginService;

    @Autowired
    RedisTemplate redisTemplate;

    @ResponseBody
    @PostMapping("/agent/manage/login")
    public ResponseData login(@RequestBody ManageLogin ManageLogin, HttpServletRequest request, HttpServletResponse response){
        try {
            ResponseData res=new ResponseData();
            //根据账号查询用户
            ManageLogin admin= manageLoginService.getLogin(ManageLogin);
            //对密码进行判断
            String md5_pwd = DigestUtils.md5DigestAsHex(ManageLogin.getPassword().getBytes());
            System.out.println(md5_pwd);

            if(ObjectUtil.isNull(admin)){
                res.setSuccess(false);
                res.setMessage("用户不存在");
                return res;
            }

            if(!DigestUtils.md5DigestAsHex(ManageLogin.getPassword().getBytes()).equals(admin.getPassword())){
                res.setSuccess(false);
                res.setMessage("密码错误");
                return res;
            }
            res.setSuccess(true);
            //获取当前时间戳
            String ctm=String.valueOf(System.currentTimeMillis());

            //RedisTemplate中定义了对5种数据结构操作
            //1.redisTemplate.opsForValue();//操作字符串
            //2.redisTemplate.opsForHash();//操作hash
            //3.redisTemplate.opsForList();//操作list
            //4.redisTemplate.opsForSet();//操作set
            //5.redisTemplate.opsForZSet();//操作有序set

            //新增一个字符串类型的值,key是键，value是值。（也就是把一个键值对放在了redis中）
            redisTemplate.opsForValue().set(ctm,admin);

            Map map=new HashMap();
            map.put("token",ctm);

            //判断是平台管理员登录 还是 企业管理员登录
            // 1-平台管理员
            List<String> list=new ArrayList<String>();
            if(admin.getType()==1){
                list.add("admin");
            }
            //2-企业管理员
            if(admin.getType()==2){
                list.add("normal");
            }
            map.put("list",list);
            res.setSuccess(true);
            res.setData(map);

            return res;
        }catch (Exception e){
            e.printStackTrace();
            return new ResponseData(false);
        }
    }


    @PostMapping("/agent/manage/get/info")
    public ResponseData doGetAdminRole(HttpServletRequest request){
        String header=request.getHeader("Authorization");

        ManageLogin admin = (ManageLogin)redisTemplate.opsForValue().get(header);

        List<String> list = new ArrayList<String>();

        if(ObjectUtil.isNotNull(admin)){
            if(admin.getType()==1){ // 平台管理员
                list.add("admin");
            }
            if(admin.getType()==2){ //2：普通用户
                list.add("normal");
            }
        }
        return new ResponseData(true,list);
    }

    @PostMapping("agent/manage/logout")
    public ResponseData doLogout(HttpServletRequest request){
        String header=request.getHeader("Authorization");
        redisTemplate.delete(header);
        return new ResponseData(true);
    }
    /**
     * @Author wk on 2019/9/24
     * @Description  更改密码
     */
    @ResponseBody
    @PutMapping("agent/manage/password")
    public ResponseData updatePwd(@RequestBody Map<String,String> map){
        String oldpwd = map.get("oldPwd");
        String newPwd = map.get("newPwd");
        ResponseData responseData = new ResponseData();
        ManageLogin admin = getAdmin();
        ManageLogin login = manageLoginService.findById(admin.getId());
        String s = DigestUtils.md5DigestAsHex(oldpwd.getBytes());
        if (oldpwd == null || oldpwd == "" || !DigestUtils.md5DigestAsHex(oldpwd.getBytes()).equals(admin.getPassword())) {
            responseData.setSuccess(false);
            responseData.setMessage("旧密码不正确!");
            return responseData;
        }
        newPwd = DigestUtils.md5DigestAsHex(newPwd.getBytes());
        int i = manageLoginService.updatePwd(admin.getId(),newPwd,login.getPhone());
        if (i > 0) {
            responseData.setSuccess(true);
            responseData.setMessage("修改成功!");
        } else {
            responseData.setSuccess(false);
            responseData.setMessage("修改失败!");
        }
        return responseData;

    }


}


