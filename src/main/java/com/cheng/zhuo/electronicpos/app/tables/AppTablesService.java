package com.cheng.zhuo.electronicpos.app.tables;

import com.cheng.zhuo.electronicpos.manage.dishes.Dishes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * 桌台service
 * @author MIAO
 */
@Service
public class AppTablesService {

    @Autowired
    AppTablesMapper appTablesMapper;


    List<AppTables> getAreasTables(String areaId){
        return appTablesMapper.selectTablesByAreaId(areaId);
    }


    Integer doUpdateTables(AppTables appTables){
        return appTablesMapper.updateByPrimaryKey(appTables);

    }


}
