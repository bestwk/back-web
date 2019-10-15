package com.cheng.zhuo.electronicpos.manage.common;


import org.apache.ibatis.annotations.Mapper;
import java.util.List;
import java.util.Map;
@Mapper
public interface CatalogsMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Catalogs record);

    int insertSelective(Catalogs record);

    Catalogs selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Catalogs record);

    int updateByPrimaryKey(Catalogs record);

    List<Catalogs> getCatalogsList(Map paramMap);

    Catalogs findById(String id);
}