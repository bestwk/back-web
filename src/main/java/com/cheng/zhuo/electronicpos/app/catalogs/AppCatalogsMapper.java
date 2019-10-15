package com.cheng.zhuo.electronicpos.app.catalogs;

import org.apache.ibatis.annotations.Mapper;

/**
 * 菜品分类
 * @author MIAO
 */
@Mapper
public interface AppCatalogsMapper {

    int deleteByPrimaryKey(Long id);

    int insert(AppCatalogs record);

    int insertSelective(AppCatalogs record);

    AppCatalogs selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(AppCatalogs record);

    int updateByPrimaryKey(AppCatalogs record);
}