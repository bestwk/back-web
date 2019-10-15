package com.cheng.zhuo.electronicpos.manage.order;

import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderDeatailsAdditiveMapper {
    int deleteByPrimaryKey(Long id);

    int insert(OrderDeatailsAdditive record);

    int insertSelective(OrderDeatailsAdditive record);

    OrderDeatailsAdditive selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(OrderDeatailsAdditive record);

    int updateByPrimaryKey(OrderDeatailsAdditive record);

    List<OrderDeatailsAdditive> selectByOrderDetailsId(String id);
}