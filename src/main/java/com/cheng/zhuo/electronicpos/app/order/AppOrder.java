package com.cheng.zhuo.electronicpos.app.order;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 订单
 * @author MIAO
 */
public class AppOrder {

    private Long id;

    private Long storeId;

    private Long physicalStoreId;

    private String serialNumber;

    private String orderCode;

    private Integer goodsAmount;

    private BigDecimal payableAmount;

    private Long storeActivityId;

    private String storeActivityName;

    private BigDecimal storeActivityAmount;

    private Long couponId;

    private BigDecimal couponAmount;

    private Boolean isVipPay;

    private BigDecimal vipAmount;

    private Long vipId;

    private Boolean isSmallMoney;

    private BigDecimal smallMoneyAmount;

    private String smallMoneyReason;

    private Long tableId;

    private String tableName;

    private Integer peopleCount;

    private Byte orderPlacerType;

    private Long orderPlacerId;

    private String orderPlacerName;

    private Byte orderType;

    private String consigneeName;

    private String consigneeAddress;

    private String consigneePhone;

    private Byte payType;

    private Date createTime;

    private Date payTime;

    private Date deliveryTime;

    private Date finishTime;

    private String buyerMemo;

    private String salerMemo;

    private Byte orderStatus;

    private BigDecimal payAmount;

    private BigDecimal giveFoodAmount;

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

    public Long getPhysicalStoreId() {
        return physicalStoreId;
    }

    public void setPhysicalStoreId(Long physicalStoreId) {
        this.physicalStoreId = physicalStoreId;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber == null ? null : serialNumber.trim();
    }

    public String getOrderCode() {
        return orderCode;
    }

    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode == null ? null : orderCode.trim();
    }

    public Integer getGoodsAmount() {
        return goodsAmount;
    }

    public void setGoodsAmount(Integer goodsAmount) {
        this.goodsAmount = goodsAmount;
    }

    public BigDecimal getPayableAmount() {
        return payableAmount;
    }

    public void setPayableAmount(BigDecimal payableAmount) {
        this.payableAmount = payableAmount;
    }

    public Long getStoreActivityId() {
        return storeActivityId;
    }

    public void setStoreActivityId(Long storeActivityId) {
        this.storeActivityId = storeActivityId;
    }

    public String getStoreActivityName() {
        return storeActivityName;
    }

    public void setStoreActivityName(String storeActivityName) {
        this.storeActivityName = storeActivityName == null ? null : storeActivityName.trim();
    }

    public BigDecimal getStoreActivityAmount() {
        return storeActivityAmount;
    }

    public void setStoreActivityAmount(BigDecimal storeActivityAmount) {
        this.storeActivityAmount = storeActivityAmount;
    }

    public Long getCouponId() {
        return couponId;
    }

    public void setCouponId(Long couponId) {
        this.couponId = couponId;
    }

    public BigDecimal getCouponAmount() {
        return couponAmount;
    }

    public void setCouponAmount(BigDecimal couponAmount) {
        this.couponAmount = couponAmount;
    }

    public Boolean getIsVipPay() {
        return isVipPay;
    }

    public void setIsVipPay(Boolean isVipPay) {
        this.isVipPay = isVipPay;
    }

    public BigDecimal getVipAmount() {
        return vipAmount;
    }

    public void setVipAmount(BigDecimal vipAmount) {
        this.vipAmount = vipAmount;
    }

    public Long getVipId() {
        return vipId;
    }

    public void setVipId(Long vipId) {
        this.vipId = vipId;
    }

    public Boolean getIsSmallMoney() {
        return isSmallMoney;
    }

    public void setIsSmallMoney(Boolean isSmallMoney) {
        this.isSmallMoney = isSmallMoney;
    }

    public BigDecimal getSmallMoneyAmount() {
        return smallMoneyAmount;
    }

    public void setSmallMoneyAmount(BigDecimal smallMoneyAmount) {
        this.smallMoneyAmount = smallMoneyAmount;
    }

    public String getSmallMoneyReason() {
        return smallMoneyReason;
    }

    public void setSmallMoneyReason(String smallMoneyReason) {
        this.smallMoneyReason = smallMoneyReason == null ? null : smallMoneyReason.trim();
    }

    public Long getTableId() {
        return tableId;
    }

    public void setTableId(Long tableId) {
        this.tableId = tableId;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName == null ? null : tableName.trim();
    }

    public Integer getPeopleCount() {
        return peopleCount;
    }

    public void setPeopleCount(Integer peopleCount) {
        this.peopleCount = peopleCount;
    }

    public Byte getOrderPlacerType() {
        return orderPlacerType;
    }

    public void setOrderPlacerType(Byte orderPlacerType) {
        this.orderPlacerType = orderPlacerType;
    }

    public Long getOrderPlacerId() {
        return orderPlacerId;
    }

    public void setOrderPlacerId(Long orderPlacerId) {
        this.orderPlacerId = orderPlacerId;
    }

    public String getOrderPlacerName() {
        return orderPlacerName;
    }

    public void setOrderPlacerName(String orderPlacerName) {
        this.orderPlacerName = orderPlacerName == null ? null : orderPlacerName.trim();
    }

    public Byte getOrderType() {
        return orderType;
    }

    public void setOrderType(Byte orderType) {
        this.orderType = orderType;
    }

    public String getConsigneeName() {
        return consigneeName;
    }

    public void setConsigneeName(String consigneeName) {
        this.consigneeName = consigneeName == null ? null : consigneeName.trim();
    }

    public String getConsigneeAddress() {
        return consigneeAddress;
    }

    public void setConsigneeAddress(String consigneeAddress) {
        this.consigneeAddress = consigneeAddress == null ? null : consigneeAddress.trim();
    }

    public String getConsigneePhone() {
        return consigneePhone;
    }

    public void setConsigneePhone(String consigneePhone) {
        this.consigneePhone = consigneePhone == null ? null : consigneePhone.trim();
    }

    public Byte getPayType() {
        return payType;
    }

    public void setPayType(Byte payType) {
        this.payType = payType;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    public Date getDeliveryTime() {
        return deliveryTime;
    }

    public void setDeliveryTime(Date deliveryTime) {
        this.deliveryTime = deliveryTime;
    }

    public Date getFinishTime() {
        return finishTime;
    }

    public void setFinishTime(Date finishTime) {
        this.finishTime = finishTime;
    }

    public String getBuyerMemo() {
        return buyerMemo;
    }

    public void setBuyerMemo(String buyerMemo) {
        this.buyerMemo = buyerMemo == null ? null : buyerMemo.trim();
    }

    public String getSalerMemo() {
        return salerMemo;
    }

    public void setSalerMemo(String salerMemo) {
        this.salerMemo = salerMemo == null ? null : salerMemo.trim();
    }

    public Byte getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Byte orderStatus) {
        this.orderStatus = orderStatus;
    }

    public BigDecimal getPayAmount() {
        return payAmount;
    }

    public void setPayAmount(BigDecimal payAmount) {
        this.payAmount = payAmount;
    }

    public BigDecimal getGiveFoodAmount() {
        return giveFoodAmount;
    }

    public void setGiveFoodAmount(BigDecimal giveFoodAmount) {
        this.giveFoodAmount = giveFoodAmount;
    }
}