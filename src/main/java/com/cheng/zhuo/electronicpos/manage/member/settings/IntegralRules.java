package com.cheng.zhuo.electronicpos.manage.member.settings;

/**
 * Created By wk
 * Date: 2019/9/29
 */
public class IntegralRules {

    private Long id;

    private Long storeId;

    private Integer expenseAmount;

    private Integer integral;

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

    public Integer getExpenseAmount() {
        return expenseAmount;
    }

    public void setExpenseAmount(Integer expenseAmount) {
        this.expenseAmount = expenseAmount;
    }

    public Integer getIntegral() {
        return integral;
    }

    public void setIntegral(Integer integral) {
        this.integral = integral;
    }
}
