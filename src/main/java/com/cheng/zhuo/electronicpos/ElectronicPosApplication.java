package com.cheng.zhuo.electronicpos;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication()
@MapperScan("com.cheng.zhuo.electronicpos.generate.mapper")
public class ElectronicPosApplication extends SpringBootServletInitializer {

    private static final String ALL = "*";
    private static final String MAX_AGE = "18000L";

    public static void main(String[] args) {
        SpringApplication.run(ElectronicPosApplication.class, args);
    }

}
