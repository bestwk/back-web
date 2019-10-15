package com.cheng.zhuo.electronicpos.manage.meal;

import java.math.BigDecimal;
import java.util.List;

public class SetMeal {
    private Long id;

    private Long storeId;

    private String image;

    private String nameCn;

    private String nameEn;

    private String mnemonicCode;

    private BigDecimal salesPrice;

    private Integer boxAmount;

    private Integer minimumQuantity;

    private String unitCode;

    private String unitName;

    private Integer orderRestriction;

    private Integer enabledDiscount;

    private Boolean enabledDineIn;

    private Boolean enabledTakeOut;

    private Integer sales;

    private String description;

    private Byte status;

    private Boolean enabledDineOpen;

    private List<SetMealDishes> dishesMealList;

    public Boolean getEnabledDineOpen() {
        return enabledDineOpen;
    }

    public void setEnabledDineOpen(Boolean enabledDineOpen) {
        this.enabledDineOpen = enabledDineOpen;
    }

    public List<SetMealDishes> getDishesMealList() {
        return dishesMealList;
    }

    public void setDishesMealList(List<SetMealDishes> dishesMealList) {
        this.dishesMealList = dishesMealList;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public String getNameCn() {
        return nameCn;
    }

    public void setNameCn(String nameCn) {
        this.nameCn = nameCn == null ? null : nameCn.trim();
    }

    public String getNameEn() {
        return nameEn;
    }

    public void setNameEn(String nameEn) {
        this.nameEn = nameEn == null ? null : nameEn.trim();
    }

    public String getMnemonicCode() {
        return mnemonicCode;
    }

    public void setMnemonicCode(String mnemonicCode) {
        this.mnemonicCode = mnemonicCode == null ? null : mnemonicCode.trim();
    }

    public BigDecimal getSalesPrice() {
        return salesPrice;
    }

    public void setSalesPrice(BigDecimal salesPrice) {
        this.salesPrice = salesPrice;
    }

    public Integer getBoxAmount() {
        return boxAmount;
    }

    public void setBoxAmount(Integer boxAmount) {
        this.boxAmount = boxAmount;
    }

    public Integer getMinimumQuantity() {
        return minimumQuantity;
    }

    public void setMinimumQuantity(Integer minimumQuantity) {
        this.minimumQuantity = minimumQuantity;
    }

    public String getUnitCode() {
        return unitCode;
    }

    public void setUnitCode(String unitCode) {
        this.unitCode = unitCode == null ? null : unitCode.trim();
    }

    public String getUnitName() {
        return unitName;
    }

    public void setUnitName(String unitName) {
        this.unitName = unitName == null ? null : unitName.trim();
    }

    public Integer getOrderRestriction() {
        return orderRestriction;
    }

    public void setOrderRestriction(Integer orderRestriction) {
        this.orderRestriction = orderRestriction;
    }

    public Integer getEnabledDiscount() {
        return enabledDiscount;
    }

    public void setEnabledDiscount(Integer enabledDiscount) {
        this.enabledDiscount = enabledDiscount;
    }

    public Boolean getEnabledDineIn() {
        return enabledDineIn;
    }

    public void setEnabledDineIn(Boolean enabledDineIn) {
        this.enabledDineIn = enabledDineIn;
    }

    public Boolean getEnabledTakeOut() {
        return enabledTakeOut;
    }

    public void setEnabledTakeOut(Boolean enabledTakeOut) {
        this.enabledTakeOut = enabledTakeOut;
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }
}