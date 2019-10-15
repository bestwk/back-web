package com.cheng.zhuo.electronicpos.manage.common;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface RechargeRecordMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RechargeRecord record);

    int insertSelective(RechargeRecord record);

    RechargeRecord selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RechargeRecord record);

    int updateByPrimaryKey(RechargeRecord record);

    String selectCzsr(Map paramsMap);

    List<Map> selectRqCzsr(Map paramsMap);

    List<Map> selectDpCzsr(Map paramsMap);

    Boolean insertByMap(Map map);
}