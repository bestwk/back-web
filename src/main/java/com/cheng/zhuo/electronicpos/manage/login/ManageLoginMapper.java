package com.cheng.zhuo.electronicpos.manage.login;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ManageLoginMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ManageLogin record);

    int insertSelective(ManageLogin record);

    ManageLogin selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ManageLogin record);

    int updateByPrimaryKey(ManageLogin record);

    ManageLogin getLogin(String account);

    int updatePwd(Long id, String newPwd, String phone);

    ManageLogin findbyPhone(String phone);

    int updateAccount(Long id, String phone);
}