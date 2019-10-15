package com.cheng.zhuo.electronicpos.manage.order;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class OrderDeatails {

    private Integer giveNum;

    public Integer getGiveNum() {
        return giveNum;
    }

    public void setGiveNum(Integer giveNum) {
        this.giveNum = giveNum;
    }

    private String catalogsId;

    public String getCatalogsId() {
        return catalogsId;
    }

    public void setCatalogsId(String catalogsId) {
        this.catalogsId = catalogsId;
    }

    private String additive;

    public String getAdditive() {
        return additive;
    }

    public void setAdditive(String additive) {
        this.additive = additive;
    }

    private String dishesTag;

    public String getDishesTag() {
        return dishesTag;
    }

    public void setDishesTag(String dishesTag) {
        this.dishesTag = dishesTag;
    }

    private String dishesName;

    public String getDishesName() {
        return dishesName;
    }

    public void setDishesName(String dishesName) {
        this.dishesName = dishesName;
    }

    private List<OrderDeatailsAdditive> additiveList;

    public List<OrderDeatailsAdditive> getAdditiveList() {
        return additiveList;
    }

    public void setAdditiveList(List<OrderDeatailsAdditive> additiveList) {
        this.additiveList = additiveList;
    }

    private String id;

    private String orderId;

    private String dishesId;

    private Integer dishesNum;

    private String specAttr;

    private String specAttrId;

    private BigDecimal price;

    private Integer rejectedAmount;

    private BigDecimal subtotal;

    private Byte status;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getDishesId() {
        return dishesId;
    }

    public void setDishesId(String dishesId) {
        this.dishesId = dishesId;
    }

    public Integer getDishesNum() {
        return dishesNum;
    }

    public void setDishesNum(Integer dishesNum) {
        this.dishesNum = dishesNum;
    }

    public String getSpecAttr() {
        return specAttr;
    }

    public void setSpecAttr(String specAttr) {
        this.specAttr = specAttr == null ? null : specAttr.trim();
    }

    public String getSpecAttrId() {
        return specAttrId;
    }

    public void setSpecAttrId(String specAttrId) {
        this.specAttrId = specAttrId == null ? null : specAttrId.trim();
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Integer getRejectedAmount() {
        return rejectedAmount;
    }

    public void setRejectedAmount(Integer rejectedAmount) {
        this.rejectedAmount = rejectedAmount;
    }

    public BigDecimal getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(BigDecimal subtotal) {
        this.subtotal = subtotal;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}