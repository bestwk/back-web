package com.cheng.zhuo.electronicpos.manage.member.settings;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created By wk
 * Date: 2019/9/29
 */
@Service
public class MemberSettingsService {

    @Autowired
    private MemberSettingsMapper memberSettingsMapper;

    @Transactional
    public int updateSetting(MemberSettings member) {
            int k = 0;
            int i = memberSettingsMapper.deleteIntegralRules(member.getStoreId());
            int j = memberSettingsMapper.deleteRecharge(member.getStoreId());
             k = memberSettingsMapper.deleteMemberSettings(member.getStoreId());
            if(member.getIsEnable()){
                k = memberSettingsMapper.insertSelective(member);
                if(member.getEnabledIntegralRules()){
                    IntegralRules integralRules = member.getIntegralRules();
                    integralRules.setStoreId(member.getStoreId());
                    i = memberSettingsMapper.updateIntegralRules(integralRules);
                }
                if(member.getEnabledRecharge()){
                    List<Recharge> rechargeArray = member.getRechargeArray();
                    for (Recharge recharge : rechargeArray) {
                        recharge.setStoreId(member.getStoreId());
                    }
                    j = memberSettingsMapper.updateRecharge(rechargeArray);
                }

            }else{
                k = memberSettingsMapper.insertSelective(member);
            }

            return k;
    }

    public MemberSettings getAll(Long storeId) {
       MemberSettings memberSettings =  memberSettingsMapper.getMemberSettings(storeId);
       if(memberSettings.getEnabledIntegralRules()){
          IntegralRules integralRules =  memberSettingsMapper.getIntegralRules(storeId);
           memberSettings.setIntegralRules(integralRules);
       }
       if(memberSettings.getEnabledRecharge()){
           List<Recharge> list =  memberSettingsMapper.getAllRecharge(storeId);
           memberSettings.setRechargeArray(list);
       }
       return memberSettings;
    }
}
