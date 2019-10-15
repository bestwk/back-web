package com.cheng.zhuo.electronicpos.app.areas;


import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * 区域
 * @author MIAO
 */
@Mapper
public interface AppAreasMapper {


    /**
     * 根据店所属门店ID 查询所有区域
     * @param physicalStoreId 门店ID
     * @return 所有区域数据
     */
    List<AppAreas> findByPhysicalStoreId(String physicalStoreId);

}