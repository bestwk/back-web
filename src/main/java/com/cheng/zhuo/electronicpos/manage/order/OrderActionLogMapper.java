package com.cheng.zhuo.electronicpos.manage.order;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderActionLogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OrderActionLog record);

    int insertSelective(OrderActionLog record);

    OrderActionLog selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OrderActionLog record);

    int updateByPrimaryKey(OrderActionLog record);

    List<OrderActionLog> selectByOrderId(String orderId);
}