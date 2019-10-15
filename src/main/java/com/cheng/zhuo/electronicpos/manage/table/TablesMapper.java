package com.cheng.zhuo.electronicpos.manage.table;

import com.cheng.zhuo.electronicpos.manage.store.PhysicalStore;
import com.cheng.zhuo.electronicpos.manage.table.areas.Areas;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TablesMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Tables record);

    int insertSelective(Tables record);

    Tables selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Tables record);

    int updateByPrimaryKey(Tables record);

    List<PhysicalStore> getAllStore();

    List<Areas> getAllAreasList(String storeId);

    List<Tables> getTableList(String store, String tableName, String areas);

    int deleteTableById(Integer tableId);

    int updateisEnabled(Integer value,Integer id);

    int updateisOrderdish(Integer value, Integer id);

    int updateShortChain(Integer tableId, String substring);
}