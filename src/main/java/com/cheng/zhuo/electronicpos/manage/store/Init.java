package com.cheng.zhuo.electronicpos.manage.store;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

@Component
public class Init implements ApplicationRunner {

    public static Map<String,Object> map = new HashMap<>();
    @Override
    public void run(ApplicationArguments args) throws Exception {
        map = AreaXMLTools.findCity(map,"t_dic_city");
        map = AreaXMLTools.findDistrict(map,"t_dic_district");
        map = AreaXMLTools.findProvince(map,"t_dic_province");
//        System.out.println(map);
    }

    public static Map getMap(){
        return map;
    }
}
