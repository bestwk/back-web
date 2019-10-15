package com.cheng.zhuo.electronicpos.manage.store;

import com.cheng.zhuo.electronicpos.manage.common.Parameters;
import com.cheng.zhuo.electronicpos.manage.common.ParametersMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class PhysicalStoreService {

    @Autowired
    PhysicalStoreMapper physicalStoreMapper;
    @Autowired
    ParametersMapper parametersMapper;

    public PageInfo getPhysicalStoreList(Map<String,Object> paramMap) {
        Integer pageNum = Integer.parseInt(paramMap.get("pageNum").toString());
        Integer pageSize = Integer.parseInt(paramMap.get("pageSize").toString());
        PageHelper.startPage(pageNum,pageSize);
        List<PhysicalStore> list = physicalStoreMapper.getPhysicalStoreList(paramMap);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    public void updatePhysicalStore(PhysicalStore physicalStore) {
        physicalStoreMapper.updateByPrimaryKeySelective(physicalStore);
    }

    public PhysicalStore getPhysicalStoreById(String id) {
        return physicalStoreMapper.selectByPrimaryKey(Long.parseLong(id));
    }

    public void insertPhysicalStore(PhysicalStore physicalStore) {
        physicalStoreMapper.insertSelective(physicalStore);
    }

    public Map getParamsList() {
        Map<String,Object> map = new HashMap<>();
        List<Parameters> mdlxList = parametersMapper.selectByType("shop");
        List<Parameters> cylxList = parametersMapper.selectByType("catering");
        map.put("mdlxList",mdlxList);
        map.put("cylxList",cylxList);
        return map;
    }
}
