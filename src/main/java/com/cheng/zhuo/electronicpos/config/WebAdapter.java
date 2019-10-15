package com.cheng.zhuo.electronicpos.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Created By wk
 * Date: 2019/9/23
 */
//@Configuration
//public class WebAdapter implements WebMvcConfigurer {
//
//     /**
//      * @Author wk on 2019/9/23
//      * @Description  注册拦截器
//      */
//    @Override
//    public void addInterceptors(InterceptorRegistry registry) {
//        LoginHandlerInterceptor loginInterceptor = new LoginHandlerInterceptor();
//        // addPathPatterns 添加拦截url,excludePathPatterns 排除拦截url
//        registry.addInterceptor(new LoginHandlerInterceptor()).addPathPatterns("/**").excludePathPatterns(loginInterceptor.getUrl());
//        WebMvcConfigurer.super.addInterceptors(registry);
//    }
//}
