package com.cheng.zhuo.electronicpos.manage.statement;

import com.cheng.zhuo.electronicpos.manage.common.Catalogs;
import com.cheng.zhuo.electronicpos.manage.common.CatalogsMapper;
import com.cheng.zhuo.electronicpos.manage.order.OrderDeatailsMapper;
import com.cheng.zhuo.electronicpos.manage.store.PhysicalStore;
import com.cheng.zhuo.electronicpos.manage.store.PhysicalStoreMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class FoodStatementService {

    @Autowired
    PhysicalStoreMapper physicalStoreMapper;
    @Autowired
    OrderDeatailsMapper orderDeatailsMapper;

    @Autowired
    CatalogsMapper catalogsMapper;

    public Map<String,Object> initParams(String storeId) {
        Map<String,Object> map = new HashMap<>();
        Map paramMap = new HashMap();
        paramMap.put("storeId",storeId);
        List<PhysicalStore> physicalStoreList = physicalStoreMapper.getPhysicalStoreList(paramMap);
        map.put("physicalStoreList",physicalStoreList);
        List<Catalogs> catalogsList = catalogsMapper.getCatalogsList(paramMap);
        map.put("catalogsList",catalogsList);
        return map;
    }

    public Map<String,Object> initPage(Map paramsMap) {
        Map<String,Object> map = new HashMap<>();
        String physicalStoreIdList1 = paramsMap.get("physicalStoreIdList").toString();
        String[] physicalStoreIdList = physicalStoreIdList1.split(",");
        paramsMap.remove("physicalStoreIdList");
        if(physicalStoreIdList1 != ""){
            paramsMap.put("physicalStoreIdList",physicalStoreIdList);
        }
        String catalogsIdList1 = paramsMap.get("catalogsIdList").toString();
        String[] catalogsIdList = catalogsIdList1.split(",");
        paramsMap.remove("catalogsIdList");
        if(catalogsIdList1 != ""){
            paramsMap.put("catalogsIdList",catalogsIdList);
        }
        Integer foodPageNum = Integer.parseInt(paramsMap.get("foodPageNum").toString());
        Integer pageSize = Integer.parseInt(paramsMap.get("pageSize").toString());
        PageHelper.startPage(foodPageNum,pageSize);
        //查询按菜品统计
        List<Map> foodList = orderDeatailsMapper.selectFoodList(paramsMap);
        //查询总销售额
        String foodTotal = orderDeatailsMapper.selectFoodTotal(paramsMap);
        for(Map m:foodList){
            m.put("foodTotal",foodTotal);
            BigDecimal total = new BigDecimal(foodTotal);
            BigDecimal subtotal = new BigDecimal(m.get("subtotal").toString());
            String xszb = bigDecimalReturn(subtotal,total);
            m.put("xszb",xszb);
        }
        PageInfo foodPage = new PageInfo(foodList);
        map.put("foodPage",foodPage);
        Integer tagPageNum = Integer.parseInt(paramsMap.get("tagPageNum").toString());
        PageHelper.startPage(tagPageNum,pageSize);
        //按菜品分类查询统计
        List<Map> tagList = orderDeatailsMapper.selectTagList(paramsMap);
        for(Map m:tagList){
            m.put("foodTotal",foodTotal);
            BigDecimal total = new BigDecimal(foodTotal);
            BigDecimal subtotal = new BigDecimal(m.get("subtotal").toString());
            String xszb = bigDecimalReturn(subtotal,total);
            m.put("xszb",xszb);
        }
        PageInfo tagPage = new PageInfo(tagList);
        map.put("tagPage",tagPage);
        return map;
    }


    public String bigDecimalReturn(BigDecimal a,BigDecimal b){
        BigDecimal divide = a.divide(b, 2, RoundingMode.HALF_UP);
        BigDecimal result = divide.multiply(new BigDecimal(100)).setScale(0,BigDecimal.ROUND_HALF_UP);
        return result.toString()+"%";
    }
}
