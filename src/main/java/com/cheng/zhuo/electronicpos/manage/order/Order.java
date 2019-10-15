package com.cheng.zhuo.electronicpos.manage.order;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public class Order {

    private BigDecimal giveFoodAmount;

    public BigDecimal getGiveFoodAmount() {
        return giveFoodAmount;
    }

    public void setGiveFoodAmount(BigDecimal giveFoodAmount) {
        this.giveFoodAmount = giveFoodAmount;
    }

    private List<OrderActionLog> orderActionLogList;

    public List<OrderActionLog> getOrderActionLogList() {
        return orderActionLogList;
    }

    public void setOrderActionLogList(List<OrderActionLog> orderActionLogList) {
        this.orderActionLogList = orderActionLogList;
    }

    private List<OrderDeatails> deatailsList;

    public List<OrderDeatails> getDeatailsList() {
        return deatailsList;
    }

    public void setDeatailsList(List<OrderDeatails> deatailsList) {
        this.deatailsList = deatailsList;
    }

    private String orderPlacerName;

    public String getOrderPlacerName() {
        return orderPlacerName;
    }

    public void setOrderPlacerName(String orderPlacerName) {
        this.orderPlacerName = orderPlacerName;
    }

    private String tableName;

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    private BigDecimal payAmount;

    public BigDecimal getPayAmount() {
        return payAmount;
    }

    public void setPayAmount(BigDecimal payAmount) {
        this.payAmount = payAmount;
    }

    private String id;

    private String storeId;

    private String physicalStoreId;

    private String serialNumber;

    private String orderCode;

    private Integer goodsAmount;

    private BigDecimal payableAmount;

    private String storeActivityId;

    private String storeActivityName;

    private BigDecimal storeActivityAmount;

    private String couponId;

    private BigDecimal couponAmount;

    private Boolean isVipPay;

    private BigDecimal vipAmount;

    private String vipId;

    private Boolean isSmallMoney;

    private BigDecimal smallMoneyAmount;

    private String smallMoneyReason;

    private String tableId;

    private Integer peopleCount;

    private Byte orderPlacerType;

    private String orderPlacerId;

    private Byte orderType;

    private String consigneeName;

    private String consigneeAddress;

    private String consigneePhone;

    private Byte payType;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date createTime;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date payTime;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date deliveryTime;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date finishTime;

    private String buyerMemo;

    private String salerMemo;

    private Byte orderStatus;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getStoreId() {
        return storeId;
    }

    public void setStoreId(String storeId) {
        this.storeId = storeId;
    }

    public String getPhysicalStoreId() {
        return physicalStoreId;
    }

    public void setPhysicalStoreId(String physicalStoreId) {
        this.physicalStoreId = physicalStoreId;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getOrderCode() {
        return orderCode;
    }

    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode;
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

    public String getStoreActivityId() {
        return storeActivityId;
    }

    public void setStoreActivityId(String storeActivityId) {
        this.storeActivityId = storeActivityId;
    }

    public String getStoreActivityName() {
        return storeActivityName;
    }

    public void setStoreActivityName(String storeActivityName) {
        this.storeActivityName = storeActivityName;
    }

    public BigDecimal getStoreActivityAmount() {
        return storeActivityAmount;
    }

    public void setStoreActivityAmount(BigDecimal storeActivityAmount) {
        this.storeActivityAmount = storeActivityAmount;
    }

    public String getCouponId() {
        return couponId;
    }

    public void setCouponId(String couponId) {
        this.couponId = couponId;
    }

    public BigDecimal getCouponAmount() {
        return couponAmount;
    }

    public void setCouponAmount(BigDecimal couponAmount) {
        this.couponAmount = couponAmount;
    }

    public Boolean getVipPay() {
        return isVipPay;
    }

    public void setVipPay(Boolean vipPay) {
        isVipPay = vipPay;
    }

    public BigDecimal getVipAmount() {
        return vipAmount;
    }

    public void setVipAmount(BigDecimal vipAmount) {
        this.vipAmount = vipAmount;
    }

    public String getVipId() {
        return vipId;
    }

    public void setVipId(String vipId) {
        this.vipId = vipId;
    }

    public Boolean getSmallMoney() {
        return isSmallMoney;
    }

    public void setSmallMoney(Boolean smallMoney) {
        isSmallMoney = smallMoney;
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
        this.smallMoneyReason = smallMoneyReason;
    }

    public String getTableId() {
        return tableId;
    }

    public void setTableId(String tableId) {
        this.tableId = tableId;
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

    public String getOrderPlacerId() {
        return orderPlacerId;
    }

    public void setOrderPlacerId(String orderPlacerId) {
        this.orderPlacerId = orderPlacerId;
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
        this.consigneeName = consigneeName;
    }

    public String getConsigneeAddress() {
        return consigneeAddress;
    }

    public void setConsigneeAddress(String consigneeAddress) {
        this.consigneeAddress = consigneeAddress;
    }

    public String getConsigneePhone() {
        return consigneePhone;
    }

    public void setConsigneePhone(String consigneePhone) {
        this.consigneePhone = consigneePhone;
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
        this.buyerMemo = buyerMemo;
    }

    public String getSalerMemo() {
        return salerMemo;
    }

    public void setSalerMemo(String salerMemo) {
        this.salerMemo = salerMemo;
    }

    public Byte getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(Byte orderStatus) {
        this.orderStatus = orderStatus;
    }
}