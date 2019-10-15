package com.cheng.zhuo.electronicpos.manage.setting.businessmodel;

import java.util.Date;

public class BusinessModel {
    private Long id;

    private Long storeId;

    private Integer operatingStatus;

    private String operatingTimeStart;

    private String operatingTimeFinish;

    private Integer enabledAutoOrder;

    private Integer enabledDoggyBag;

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

    public Integer getOperatingStatus() {
        return operatingStatus;
    }

    public void setOperatingStatus(Integer operatingStatus) {
        this.operatingStatus = operatingStatus;
    }

    public String getOperatingTimeStart() {
        return operatingTimeStart;
    }

    public void setOperatingTimeStart(String operatingTimeStart) {
        this.operatingTimeStart = operatingTimeStart;
    }

    public String getOperatingTimeFinish() {
        return operatingTimeFinish;
    }

    public void setOperatingTimeFinish(String operatingTimeFinish) {
        this.operatingTimeFinish = operatingTimeFinish;
    }

    public Integer getEnabledAutoOrder() {
        return enabledAutoOrder;
    }

    public void setEnabledAutoOrder(Integer enabledAutoOrder) {
        this.enabledAutoOrder = enabledAutoOrder;
    }

    public Integer getEnabledDoggyBag() {
        return enabledDoggyBag;
    }

    public void setEnabledDoggyBag(Integer enabledDoggyBag) {
        this.enabledDoggyBag = enabledDoggyBag;
    }
}