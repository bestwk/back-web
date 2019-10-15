package com.cheng.zhuo.electronicpos.manage.store;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;
import java.util.Map;

@Mapper
public interface PhysicalStoreMapper {
    int deleteByPrimaryKey(Long id);

    int insert(PhysicalStore record);

    int insertSelective(PhysicalStore record);

    PhysicalStore selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PhysicalStore record);

    int updateByPrimaryKey(PhysicalStore record);

    List<PhysicalStore> getPhysicalStoreList(Map<String,Object> paramMap);

    List<PhysicalStore> getPhysicalStoreListByStoreId(String storeId);
}