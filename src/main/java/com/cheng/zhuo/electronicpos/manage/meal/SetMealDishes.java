package com.cheng.zhuo.electronicpos.manage.meal;

import java.math.BigDecimal;

public class SetMealDishes {
    private Long id;

    private Integer amount;

    private Long setMealId;

    private Long dishesId;

    private String name;

    private String speName;

    private BigDecimal price;

    private Long speId;

    public Long getSpeId() {
        return speId;
    }

    public void setSpeId(Long speId) {
        this.speId = speId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpeName() {
        return speName;
    }

    public void setSpeName(String speName) {
        this.speName = speName;
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

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }

    public Long getSetMealId() {
        return setMealId;
    }

    public void setSetMealId(Long setMealId) {
        this.setMealId = setMealId;
    }

    public Long getDishesId() {
        return dishesId;
    }

    public void setDishesId(Long dishesId) {
        this.dishesId = dishesId;
    }
}