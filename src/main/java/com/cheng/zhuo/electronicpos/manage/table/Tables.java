package com.cheng.zhuo.electronicpos.manage.table;

public class Tables {
    private Long id;

    private String name;

    private Long areaId;

    private String areaName;

    private Integer seating;

    private Integer minimumAmount;

    private Integer tableAmount;

    private Integer seatAmount;

    private Integer specialType;

    private Integer isEnabled;

    private Integer status;

    private Integer isOrderdish;

    private Integer isSpecial;

    private String shortChain;

    public Integer getEnabled() {
        return isEnabled;
    }

    public void setEnabled(Integer enabled) {
        isEnabled = enabled;
    }

    public Integer getIsOrderdish() {
        return isOrderdish;
    }

    public void setIsOrderdish(Integer isOrderdish) {
        this.isOrderdish = isOrderdish;
    }

    public Integer getIsSpecial() {
        return isSpecial;
    }

    public void setIsSpecial(Integer isSpecial) {
        this.isSpecial = isSpecial;
    }

    public String getShortChain() {
        return shortChain;
    }

    public void setShortChain(String shortChain) {
        this.shortChain = shortChain;
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

    public Integer getSpecialType() {
        return specialType;
    }

    public void setSpecialType(Integer specialType) {
        this.specialType = specialType;
    }

    public Integer getIsEnabled() {
        return isEnabled;
    }

    public void setIsEnabled(Integer isEnabled) {
        this.isEnabled = isEnabled;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}