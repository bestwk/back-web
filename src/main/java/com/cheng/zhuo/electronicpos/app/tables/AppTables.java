package com.cheng.zhuo.electronicpos.app.tables;

import java.math.BigDecimal;

/**
 * 桌台信息
 * @author MIAO
 */
public class AppTables {
    private Long id;

    private String name;

    private Long areaId;

    private String areaName;

    private Integer seating;

    private Integer minimumAmount;

    private Integer tableAmount;

    private Integer seatAmount;

    private Byte isSpecial;

    private Byte specialType;

    private Boolean isEnabled;

    private Byte isOrderdish;

    private Byte status;

    private String shortChain;

    private Long orderId;

    private BigDecimal price;

    private int peopleCount;


    public int getPeopleCount() {
        return peopleCount;
    }

    public void setPeopleCount(int peopleCount) {
        this.peopleCount = peopleCount;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Long getAreaId() {
        return areaId;
    }

    public void setAreaId(Long areaId) {
        this.areaId = areaId;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName == null ? null : areaName.trim();
    }

    public Integer getSeating() {
        return seating;
    }

    public void setSeating(Integer seating) {
        this.seating = seating;
    }

    public Integer getMinimumAmount() {
        return minimumAmount;
    }

    public void setMinimumAmount(Integer minimumAmount) {
        this.minimumAmount = minimumAmount;
    }

    public Integer getTableAmount() {
        return tableAmount;
    }

    public void setTableAmount(Integer tableAmount) {
        this.tableAmount = tableAmount;
    }

    public Integer getSeatAmount() {
        return seatAmount;
    }

    public void setSeatAmount(Integer seatAmount) {
        this.seatAmount = seatAmount;
    }

    public Byte getIsSpecial() {
        return isSpecial;
    }

    public void setIsSpecial(Byte isSpecial) {
        this.isSpecial = isSpecial;
    }

    public Byte getSpecialType() {
        return specialType;
    }

    public void setSpecialType(Byte specialType) {
        this.specialType = specialType;
    }

    public Boolean getIsEnabled() {
        return isEnabled;
    }

    public void setIsEnabled(Boolean isEnabled) {
        this.isEnabled = isEnabled;
    }

    public Byte getIsOrderdish() {
        return isOrderdish;
    }

    public void setIsOrderdish(Byte isOrderdish) {
        this.isOrderdish = isOrderdish;
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }

    public String getShortChain() {
        return shortChain;
    }

    public void setShortChain(String shortChain) {
        this.shortChain = shortChain == null ? null : shortChain.trim();
    }
}