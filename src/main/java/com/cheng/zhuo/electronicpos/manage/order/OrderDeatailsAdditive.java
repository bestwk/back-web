package com.cheng.zhuo.electronicpos.manage.order;

import java.math.BigDecimal;

public class OrderDeatailsAdditive {
    private String id;

    private String orderDetailId;

    private String additiveId;

    private String additiveName;

    private BigDecimal additiveSalesPrice;

    private String additiveNum;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(String orderDetailId) {
        this.orderDetailId = orderDetailId == null ? null : orderDetailId.trim();
    }

    public String getAdditiveId() {
        return additiveId;
    }

    public void setAdditiveId(String additiveId) {
        this.additiveId = additiveId == null ? null : additiveId.trim();
    }

    public String getAdditiveName() {
        return additiveName;
    }

    public void setAdditiveName(String additiveName) {
        this.additiveName = additiveName == null ? null : additiveName.trim();
    }

    public BigDecimal getAdditiveSalesPrice() {
        return additiveSalesPrice;
    }

    public void setAdditiveSalesPrice(BigDecimal additiveSalesPrice) {
        this.additiveSalesPrice = additiveSalesPrice;
    }

    public String getAdditiveNum() {
        return additiveNum;
    }

    public void setAdditiveNum(String additiveNum) {
        this.additiveNum = additiveNum == null ? null : additiveNum.trim();
    }
}