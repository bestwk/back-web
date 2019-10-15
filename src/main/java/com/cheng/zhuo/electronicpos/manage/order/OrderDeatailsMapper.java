package com.cheng.zhuo.electronicpos.manage.order;


import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface OrderDeatailsMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OrderDeatails record);

    int insertSelective(OrderDeatails record);

    OrderDeatails selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OrderDeatails record);

    int updateByPrimaryKey(OrderDeatails record);

    List<OrderDeatails> selectByOrderId(String orderId);

    List<Map> selectFoodList(Map paramsMap);

    String selectFoodTotal(Map paramsMap);

    List<Map> selectTagList(Map paramsMap);
}