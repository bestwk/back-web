package com.cheng.zhuo.electronicpos.app.tables;


import org.apache.ibatis.annotations.Mapper;
import java.util.List;

/**
 * 桌台
 * @author MIAO
 */
@Mapper
public interface AppTablesMapper {

    /**
     * 根据区域ID 查询桌位信息
     * @param areaId 区域ID
     * @return 所有桌台信息
     */
    List<AppTables> selectTablesByAreaId(String areaId);


    /**
     * 根据桌位ID 更新桌位状态
      * @param appTables 桌位实体
     * @return 状态
     */
    int updateByPrimaryKey(AppTables appTables);
}