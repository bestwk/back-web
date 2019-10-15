package com.cheng.zhuo.electronicpos.manage.store;

import java.math.BigDecimal;

public class PhysicalStore {

    private String jrsr;

    public String getJrsr() {
        return jrsr;
    }

    public void setJrsr(String jrsr) {
        this.jrsr = jrsr;
    }

    private String id;

    private String storeId;

    private Byte isHeadquarters;

    private String name;

    private String manager;

    private String phone;

    private String cateringTypeCode;

    private String cateringTypeName;

    private String shopTypeCode;

    private String shopTypeName;

    private String provinceCode;

    private String provinceName;

    private String cityCode;

    private String cityName;

    private String districtCode;

    private String districtName;

    private String address;

    private BigDecimal latitude;

    private BigDecimal longitude;

    private String description;

    private Byte status;

    public Byte getIsHeadquarters() {
        return isHeadquarters;
    }

    public void setIsHeadquarters(Byte isHeadquarters) {
        this.isHeadquarters = isHeadquarters;
    }

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager == null ? null : manager.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getCateringTypeCode() {
        return cateringTypeCode;
    }

    public void setCateringTypeCode(String cateringTypeCode) {
        this.cateringTypeCode = cateringTypeCode == null ? null : cateringTypeCode.trim();
    }

    public String getCateringTypeName() {
        return cateringTypeName;
    }

    public void setCateringTypeName(String cateringTypeName) {
        this.cateringTypeName = cateringTypeName == null ? null : cateringTypeName.trim();
    }

    public String getShopTypeCode() {
        return shopTypeCode;
    }

    public void setShopTypeCode(String shopTypeCode) {
        this.shopTypeCode = shopTypeCode == null ? null : shopTypeCode.trim();
    }

    public String getShopTypeName() {
        return shopTypeName;
    }

    public void setShopTypeName(String shopTypeName) {
        this.shopTypeName = shopTypeName == null ? null : shopTypeName.trim();
    }

    public String getProvinceCode() {
        return provinceCode;
    }

    public void setProvinceCode(String provinceCode) {
        this.provinceCode = provinceCode == null ? null : provinceCode.trim();
    }

    public String getProvinceName() {
        return provinceName;
    }

    public void setProvinceName(String provinceName) {
        this.provinceName = provinceName == null ? null : provinceName.trim();
    }

    public String getCityCode() {
        return cityCode;
    }

    public void setCityCode(String cityCode) {
        this.cityCode = cityCode == null ? null : cityCode.trim();
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName == null ? null : cityName.trim();
    }

    public String getDistrictCode() {
        return districtCode;
    }

    public void setDistrictCode(String districtCode) {
        this.districtCode = districtCode == null ? null : districtCode.trim();
    }

    public String getDistrictName() {
        return districtName;
    }

    public void setDistrictName(String districtName) {
        this.districtName = districtName == null ? null : districtName.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public BigDecimal getLatitude() {
        return latitude;
    }

    public void setLatitude(BigDecimal latitude) {
        this.latitude = latitude;
    }

    public BigDecimal getLongitude() {
        return longitude;
    }

    public void setLongitude(BigDecimal longitude) {
        this.longitude = longitude;
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