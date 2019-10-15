package com.cheng.zhuo.electronicpos.manage.order;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface OrderMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKey(Order record);

    List<Order> getOrderList(Map paramsMap);

    String selectDds(Map paramsMap);

    String selectTsdds(Map paramsMap);

    String selectWmdds(Map paramsMap);

    String selectTsddje(Map paramsMap);

    String selectWmddje(Map paramsMap);

    String selectJcrs(Map paramsMap);

    String selectYyze(Map paramsMap);

    String selectMl(Map paramsMap);

    List<Map> selectRqlist(Map paramsMap);

    List<Map> selectDplist(Map paramsMap);

    String selectCountByStoreId(String storeId);

    String selectDdsByStoreId(String storeId);

    List<Map> selectHyxfjl(String storeId);
}