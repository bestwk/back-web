package com.cheng.zhuo.electronicpos.app.order;


import org.apache.ibatis.annotations.Mapper;

/**
 * 订单Mapper
 * @author MIAO
 */
@Mapper
public interface AppOrderMapper {
    int deleteByPrimaryKey(Long id);


    int insert(AppOrder record);

    /**
     * 插入订单
     * @param record 订单实体
     * @return orderId
     */
    int insertSelective(AppOrder record);

    AppOrder selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AppOrder record);

    int updateByPrimaryKey(AppOrder record);
}