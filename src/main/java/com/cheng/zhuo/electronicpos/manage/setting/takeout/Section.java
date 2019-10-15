package com.cheng.zhuo.electronicpos.manage.setting.takeout;

import java.util.Date;

public class Section {
    private Long id;

    private Long storeId;

    private Integer type;

    private Integer distanceStart;

    private Integer distanceFinish;

    private Integer deliveryAmount;

    private String timeStart;

    private String timeFinish;

    /**伪字段*/
    private String index;

    public String getIndex() {
        return index;
    }

    public void setIndex(String index) {
        this.index = index;
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

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getDistanceStart() {
        return distanceStart;
    }

    public void setDistanceStart(Integer distanceStart) {
        this.distanceStart = distanceStart;
    }

    public Integer getDistanceFinish() {
        return distanceFinish;
    }

    public void setDistanceFinish(Integer distanceFinish) {
        this.distanceFinish = distanceFinish;
    }

    public Integer getDeliveryAmount() {
        return deliveryAmount;
    }

    public void setDeliveryAmount(Integer deliveryAmount) {
        this.deliveryAmount = deliveryAmount;
    }

    public String getTimeStart() {
        return timeStart;
    }

    public void setTimeStart(String timeStart) {
        this.timeStart = timeStart;
    }

    public String getTimeFinish() {
        return timeFinish;
    }

    public void setTimeFinish(String timeFinish) {
        this.timeFinish = timeFinish;
    }
}