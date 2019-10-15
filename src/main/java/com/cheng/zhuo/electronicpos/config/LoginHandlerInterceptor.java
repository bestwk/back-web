package com.cheng.zhuo.electronicpos.config;


import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created By wk
 * Date: 2019/9/23
 */
public class LoginHandlerInterceptor implements HandlerInterceptor {
    //保存不走拦截器的url
    private List<String> url = new ArrayList();

    //目标方法执行之前
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        Object user = request.getSession().getAttribute("admin");
        if(user == null){
            //response.sendRedirect("/agent/manage/logout"); // 通过接口跳转登录页面, 注:重定向后下边的代码还会执行 ; /outToLogin是跳至登录页的后台接口
            //未登陆，返回登陆页面
            // request.setAttribute("msg","没有权限请先登陆");
            //request.getRequestDispatcher("/index.html").forward(request,response);
            //response.sendRedirect(request.getContextPath()+"/agent/manage/logout");
            return false;
        }else{
            //已登陆，放行请求
            return true;
        }

    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }

    /**
     * 定义排除拦截URL
     * @return
     */
    public List<String> getUrl(){
        url.add("/agent/manage/login");      //登录页
        url.add("/agent/manage/logout");      //退出页
        url.add("/agent/manage/get/info");      //查询当前用户信息

        //网站静态资源
        url.add("/css/**");
        url.add("/js/**");
        url.add("/lib/**");
        url.add("/fonts/**");
        url.add("/images/**");
        return url;
    }

}
