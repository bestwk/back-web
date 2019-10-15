package com.cheng.zhuo.electronicpos.app.tables;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * 桌台信息
 *
 * @author MIAO
 */
@RestController
public class AppTablesController extends BaseController {


    @Autowired
    AppTablesService appTablesService;

    @SuppressWarnings("unchecked")
    @GetMapping("/areas/tables")
    public ResponseData getAresTables(String areasId) {
        try {
            List<AppTables> areasTables = appTablesService.getAreasTables(areasId);
            return new ResponseData(true, "查询成功", areasTables);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseData(false);
        }
    }


    @PutMapping("/update/tables")
    public ResponseData doUpdateTables(@RequestBody AppTables appTables) {

        try {
            int res = appTablesService.doUpdateTables(appTables);
            return new ResponseData(res > 0);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseData(false);
        }
    }


}
