package com.cheng.zhuo.electronicpos.manage.setting.takeout;

import cn.hutool.core.util.ObjectUtil;
import com.cheng.zhuo.electronicpos.common.ResponseData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.ws.rs.GET;

/**
 * Created By wk
 * Date: 2019/9/19
 */
@RestController
public class TakeOutController {

    @Autowired
    private  TakeOutService takeOutService;

    @ResponseBody
    @GetMapping("/TakeOut/getTakeout")
    public ResponseData getTakeout(){
        TakeOut takeOut = takeOutService.getTakeout();
        if(ObjectUtil.isNull(takeOut)){
            return new ResponseData(false,"","");
        }else{
            return new ResponseData(true,"",takeOut);
        }
    }


    @ResponseBody
    @PostMapping("/TakeOut/updateTakeOut")
    public ResponseData updateTakeOut(@RequestBody TakeOut takeOut){

        try {
            int i =  takeOutService.updateTakeOut(takeOut);
            return new ResponseData(i > 0);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseData(false);
        }
    }




}
