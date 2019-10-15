package com.cheng.zhuo.electronicpos.manage.employees;

import com.cheng.zhuo.electronicpos.manage.common.Parameters;
import com.cheng.zhuo.electronicpos.manage.store.PhysicalStore;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author shuai
 * @date 2019/9/9 0009 16:54
 */
@Service
public class EmployeesService {

    @Autowired
    EmployeesMapper employeesMapper;

    public PageInfo<Employees> doQueryAllResouce(Integer pageNum,Integer pageSize,String findName){
        PageHelper.startPage(pageNum,pageSize);
        List<Employees> employeesList =  employeesMapper.findAllList(findName);
        PageInfo<Employees> pageInfo = new PageInfo<>(employeesList);
        return pageInfo;
    }
    public Employees getById(Integer id){
        return  employeesMapper.findById(id);
    }

    public Integer doSaveResouce(Employees employees){
        return  employeesMapper.insertSelective(employees);
    }

    public Integer doUpdateResouce(Employees employees){
        return  employeesMapper.updateByPrimaryKeySelective(employees);
    }

    public Integer doDeleteResouce(Integer id){
        return  employeesMapper.deleteByPrimaryKey(Long.parseLong(id.toString()));
    }

    public Integer doDeleteBatchResouces(String[] ids){
        List<Integer> list =new ArrayList<>();
        for(int i=0;i<ids.length;i++){
            list.add(Integer.valueOf(ids[i]));
        }
        return employeesMapper.doDeleteBatchResouces(list);

    }

    public List<PhysicalStore> getStoreInfo(String businessId,String shopName){
        return employeesMapper.findByBusinessId(businessId,shopName);
    }

    public List<Parameters> getRoleInfo(String type){
        return  employeesMapper.findRoleByCode(type);
    }
}
