package com.cheng.zhuo.electronicpos.manage.member.settings;

public class Recharge {
    private Long id;

    private Long storeId;

    private Integer rechargeAmount;  //充值金额

    private Integer presentAmount; //赠送金额

    private Integer presentIntegral; // 赠送积分

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

    public Integer getRechargeAmount() {
        return rechargeAmount;
    }

    public void setRechargeAmount(Integer rechargeAmount) {
        this.rechargeAmount = rechargeAmount;
    }

    public Integer getPresentAmount() {
        return presentAmount;
    }

    public void setPresentAmount(Integer presentAmount) {
        this.presentAmount = presentAmount;
    }

    public Integer getPresentIntegral() {
        return presentIntegral;
    }

    public void setPresentIntegral(Integer presentIntegral) {
        this.presentIntegral = presentIntegral;
    }
}