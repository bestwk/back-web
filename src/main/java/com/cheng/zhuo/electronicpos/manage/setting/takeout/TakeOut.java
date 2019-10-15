package com.cheng.zhuo.electronicpos.manage.setting.takeout;

import java.util.List;

public class TakeOut {
    private Long id;

    private Long storeId;

    private String phone;

    private Integer enabledOrder;

    private Integer enabledAutoOrder;

    private Integer initialDeliveryAmount;

    private Integer fullAmount;

    private Integer distance;

    /**伪字段*/
    private List<Section> timeArray; // 时间段

    private List<Section> valuationArray;  // 距离

    public List<Section> getTimeArray() {
        return timeArray;
    }

    public void setTimeArray(List<Section> timeArray) {
        this.timeArray = timeArray;
    }

    public List<Section> getValuationArray() {
        return valuationArray;
    }

    public void setValuationArray(List<Section> valuationArray) {
        this.valuationArray = valuationArray;
    }

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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public Integer getEnabledOrder() {
        return enabledOrder;
    }

    public void setEnabledOrder(Integer enabledOrder) {
        this.enabledOrder = enabledOrder;
    }

    public Integer getEnabledAutoOrder() {
        return enabledAutoOrder;
    }

    public void setEnabledAutoOrder(Integer enabledAutoOrder) {
        this.enabledAutoOrder = enabledAutoOrder;
    }

    public Integer getInitialDeliveryAmount() {
        return initialDeliveryAmount;
    }

    public void setInitialDeliveryAmount(Integer initialDeliveryAmount) {
        this.initialDeliveryAmount = initialDeliveryAmount;
    }

    public Integer getFullAmount() {
        return fullAmount;
    }

    public void setFullAmount(Integer fullAmount) {
        this.fullAmount = fullAmount;
    }

    public Integer getDistance() {
        return distance;
    }

    public void setDistance(Integer distance) {
        this.distance = distance;
    }
}