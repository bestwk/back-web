package com.cheng.zhuo.electronicpos.manage.dishes;

import com.cheng.zhuo.electronicpos.manage.dishes.Specification;

import java.util.List;
public class Dishes {
    private Long id;

    private Long physicalStoreId;

    private String image;

    private String nameCn;

    private String nameEn;

    private String catalogCode;

    private String catalogName;

    private String unitCode;

    private String unitName;

    private String typeCode;

    private String typeName;

    private String mnemonicCode;

    private String makeTime;

    private Integer enabledSpecifications;

    private Integer sort;

    private Integer boxAmount;

    private Integer enabledDiscount;

    private Integer totalStock;

    private Integer dayStock;

    private Integer orderRestriction;

    private Integer personRestriction;

    private Integer sales;

    private Boolean enabledDineIn;

    private Boolean enabledTakeOut;

    private String description;

    private Byte status;

    private Boolean dishesStatus;

    private String dishesTag;

    private Specification specification;

    private List<Specification> specificationList;

    private List<Additive> additiveList;

    public Specification getSpecification() {
        return specification;
    }

    public void setSpecification(Specification specification) {
        this.specification = specification;
    }

    public String getDishesTag() {
        return dishesTag;
    }

    public void setDishesTag(String dishesTag) {
        this.dishesTag = dishesTag;
    }

    public List<Additive> getAdditiveList() {
        return additiveList;
    }

    public void setAdditiveList(List<Additive> additiveList) {
        this.additiveList = additiveList;
    }

    public List<Specification> getSpecificationList() {
        return specificationList;
    }

    public void setSpecificationList(List<Specification> specificationList) {
        this.specificationList = specificationList;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getPhysicalStoreId() {
        return physicalStoreId;
    }

    public void setPhysicalStoreId(Long physicalStoreId) {
        this.physicalStoreId = physicalStoreId;
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

    public String getCatalogCode() {
        return catalogCode;
    }

    public void setCatalogCode(String catalogCode) {
        this.catalogCode = catalogCode == null ? null : catalogCode.trim();
    }

    public String getCatalogName() {
        return catalogName;
    }

    public void setCatalogName(String catalogName) {
        this.catalogName = catalogName == null ? null : catalogName.trim();
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

    public String getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(String typeCode) {
        this.typeCode = typeCode == null ? null : typeCode.trim();
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName == null ? null : typeName.trim();
    }

    public String getMnemonicCode() {
        return mnemonicCode;
    }

    public void setMnemonicCode(String mnemonicCode) {
        this.mnemonicCode = mnemonicCode == null ? null : mnemonicCode.trim();
    }

    public String getMakeTime() {
        return makeTime;
    }

    public void setMakeTime(String makeTime) {
        this.makeTime = makeTime == null ? null : makeTime.trim();
    }

    public Integer getEnabledSpecifications() {
        return enabledSpecifications;
    }

    public void setEnabledSpecifications(Integer enabledSpecifications) {
        this.enabledSpecifications = enabledSpecifications;
    }

    public Integer getEnabledDiscount() {
        return enabledDiscount;
    }

    public void setEnabledDiscount(Integer enabledDiscount) {
        this.enabledDiscount = enabledDiscount;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public Integer getBoxAmount() {
        return boxAmount;
    }

    public void setBoxAmount(Integer boxAmount) {
        this.boxAmount = boxAmount;
    }


    public Integer getTotalStock() {
        return totalStock;
    }

    public void setTotalStock(Integer totalStock) {
        this.totalStock = totalStock;
    }

    public Integer getDayStock() {
        return dayStock;
    }

    public void setDayStock(Integer dayStock) {
        this.dayStock = dayStock;
    }

    public Integer getOrderRestriction() {
        return orderRestriction;
    }

    public void setOrderRestriction(Integer orderRestriction) {
        this.orderRestriction = orderRestriction;
    }

    public Integer getPersonRestriction() {
        return personRestriction;
    }

    public void setPersonRestriction(Integer personRestriction) {
        this.personRestriction = personRestriction;
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
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

    public Boolean getDishesStatus() {
        return dishesStatus;
    }

    public void setDishesStatus(Boolean dishesStatus) {
        this.dishesStatus = dishesStatus;
    }
}