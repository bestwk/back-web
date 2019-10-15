package com.cheng.zhuo.electronicpos.manage.member.settings;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MemberSettingsMapper {
    int deleteByPrimaryKey(Long id);

    int insert(MemberSettings record);

    int insertSelective(MemberSettings record);

    MemberSettings selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(MemberSettings record);

    int updateByPrimaryKey(MemberSettings record);

    int updateIntegralRules(IntegralRules integralRules);

    int deleteIntegralRules(Long storeId);

    int updateRecharge(List<Recharge> rechargeArray);

    int deleteRecharge(Long storeId);

    int deleteMemberSettings(Long storeId);

    MemberSettings getMemberSettings(Long storeId);

    IntegralRules getIntegralRules(Long storeId);

    List<Recharge> getAllRecharge(Long storeId);

    MemberSettings selectByStoreId(String storeId);

    List<Recharge> getAllRechargeByStoreId(Long storeId);
}