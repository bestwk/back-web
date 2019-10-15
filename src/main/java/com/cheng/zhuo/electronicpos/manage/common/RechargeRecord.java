package com.cheng.zhuo.electronicpos.manage.common;

import java.math.BigDecimal;
import java.util.Date;

public class RechargeRecord {
    private Long id;

    private Long memberId;

    private BigDecimal amount;

    private Date creatAt;

    private Long operatorId;

    private String storeId;

    private String physicalStoreId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getMemberId() {
        return memberId;
    }

    public void setMemberId(Long memberId) {
        this.memberId = memberId;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Date getCreatAt() {
        return creatAt;
    }

    public void setCreatAt(Date creatAt) {
        this.creatAt = creatAt;
    }

    public Long getOperatorId() {
        return operatorId;
    }

    public void setOperatorId(Long operatorId) {
        this.operatorId = operatorId;
    }

    public String getStoreId() {
        return storeId;
    }

    public void setStoreId(String storeId) {
        this.storeId = storeId == null ? null : storeId.trim();
    }

    public String getPhysicalStoreId() {
        return physicalStoreId;
    }

    public void setPhysicalStoreId(String physicalStoreId) {
        this.physicalStoreId = physicalStoreId == null ? null : physicalStoreId.trim();
    }
}