package com.cheng.zhuo.electronicpos.manage.member.settings;

import java.util.List;

public class MemberSettings {
    private Long id;

    private Long storeId;

    private Boolean isEnable; // 是否开启会员配置

    private Boolean enabledIntegralRules; // 开启积分规格

    private Boolean enabledRecharge; // 开启充值送金额积分

    private IntegralRules integralRules; //积分设置

    private List<Recharge> rechargeArray;  //充值设置


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getStoreId() {
        return storeId;
    }

    public void setStoreId(Long storeId) {
        this.storeId = storeId;
    }

    public Boolean getIsEnable() {
        return isEnable;
    }

    public void setIsEnable(Boolean enable) {
        isEnable = enable;
    }

    public Boolean getEnabledIntegralRules() {
        return enabledIntegralRules;
    }

    public void setEnabledIntegralRules(Boolean enabledIntegralRules) {
        this.enabledIntegralRules = enabledIntegralRules;
    }

    public Boolean getEnabledRecharge() {
        return enabledRecharge;
    }

    public void setEnabledRecharge(Boolean enabledRecharge) {
        this.enabledRecharge = enabledRecharge;
    }

    public IntegralRules getIntegralRules() {
        return integralRules;
    }

    public void setIntegralRules(IntegralRules integralRules) {
        this.integralRules = integralRules;
    }

    public List<Recharge> getRechargeArray() {
        return rechargeArray;
    }

    public void setRechargeArray(List<Recharge> rechargeArray) {
        this.rechargeArray = rechargeArray;
    }
}