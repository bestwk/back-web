package com.cheng.zhuo.electronicpos.common.controller;

import com.cheng.zhuo.electronicpos.manage.login.ManageLogin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class BaseController {
    @Autowired
    RedisTemplate redisTemplate;
    private static ThreadLocal<ServletRequest> currentRequest = new ThreadLocal<ServletRequest>();
    private static ThreadLocal<ServletResponse> currentResponse = new ThreadLocal<ServletResponse>();


    @ModelAttribute
    public void initReqAndRep(HttpServletRequest request, HttpServletResponse response) {
        currentRequest.set(request);
        currentResponse.set(response);
    }

    public HttpServletRequest request() {
        return (HttpServletRequest) currentRequest.get();
    }

    public HttpServletResponse response() {
        return (HttpServletResponse) currentResponse.get();
    }

    //获取当前登录人的信息
    public ManageLogin getAdmin(){
        String token=request().getHeader("Authorization");
        ManageLogin admin=(ManageLogin)redisTemplate.opsForValue().get(token);
        return admin;
    }

}
