package com.cheng.zhuo.electronicpos.manage.member.settings;

import cn.hutool.core.lang.Console;
import cn.hutool.core.util.ObjectUtil;
import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * Created By wk
 * Date: 2019/9/29
 */
@RestController
public class MemberSettingsController  extends BaseController {

    @Autowired
    private MemberSettingsService memberSettingsService;
    /**
     * @Author wk on 2019/9/29
     * @Description  保存会员设置
     */
    @ResponseBody
    @PostMapping("/membersetting/updateSetting")
    public ResponseData updateSetting(@RequestBody MemberSettings member){
        try {
            if(ObjectUtil.isNull(member.getId())){
                member.setStoreId(getAdmin().getStoreId());
            }
            int k = memberSettingsService.updateSetting(member);
            if(k > 0){
                return new ResponseData(true,"保存成功","");
            }else{
                return new ResponseData(false,"保存失败","");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseData(false,"","");
        }
    }
    /**
     * @Author wk on 2019/9/29
     * @Description  初始化获取设置
     */
    @ResponseBody
    @GetMapping("/membersetting/getMemberSettings")
    public ResponseData getMemberSettings() {
        Long storeId = getAdmin().getStoreId();
        MemberSettings memberSettings = memberSettingsService.getAll(storeId);

        if(ObjectUtil.isNull(memberSettings)){
            return new ResponseData(false,"","");
        }else{
            return new ResponseData(true,"",memberSettings);
        }
    }


}
