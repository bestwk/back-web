package com.cheng.zhuo.electronicpos.manage.member;

import com.cheng.zhuo.electronicpos.manage.employees.Employees;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

@Mapper
public interface RechargeRechargeRecordMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RechargeRechargeRecord record);

    int insertSelective(RechargeRechargeRecord record);

    RechargeRechargeRecord selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RechargeRechargeRecord record);

    int updateByPrimaryKey(RechargeRechargeRecord record);

    List<Employees> getEmployee(Long storeId);

    List<RechargeRechargeRecord> findRecharge(@Param("memberId") String memberId,@Param("storeId") Long storeId);

    BigDecimal findMemberBalance(Long memberId );

    int updateBalance(@Param("balance") BigDecimal balance,@Param("memberId") Long memberId);

    List<RechargeRechargeRecord> searchAll(@Param("storeId") Long storeId);

    List<RechargeRechargeRecord> searchAllByWeek(@Param("storeId")Long storeId);

    List<RechargeRechargeRecord> searchAllByMonth(@Param("storeId")Long storeId);

    List<RechargeRechargeRecord> searchAllByQuarter(@Param("storeId")Long storeId);

    List<RechargeRechargeRecord> searchAllByTime(Map paramMap);
}