package com.cheng.zhuo.electronicpos.manage.employees;

import com.cheng.zhuo.electronicpos.manage.common.Parameters;
import com.cheng.zhuo.electronicpos.manage.store.PhysicalStore;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface EmployeesMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Employees record);

    int insertSelective(Employees record);

    Employees selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Employees record);

    int updateByPrimaryKey(Employees record);

    List<Employees> findAllList(@Param("findName") String findName);

    Employees findById(@Param("id") Integer id);

    int doDeleteBatchResouces(List<Integer> list);

    List<PhysicalStore> findByBusinessId(@Param("businessId") String businessId,@Param("shopName") String shopName);

    List<Parameters> findRoleByCode(String type);
}