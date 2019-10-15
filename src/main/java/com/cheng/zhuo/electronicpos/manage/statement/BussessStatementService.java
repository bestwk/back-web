package com.cheng.zhuo.electronicpos.manage.statement;

import com.cheng.zhuo.electronicpos.manage.order.OrderMapper;
import com.cheng.zhuo.electronicpos.manage.store.Init;
import com.cheng.zhuo.electronicpos.manage.store.PhysicalStore;
import com.cheng.zhuo.electronicpos.manage.store.PhysicalStoreMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.*;

@Service
public class BussessStatementService {

    @Autowired
    OrderMapper orderMapper;
    @Autowired
    PhysicalStoreMapper physicalStoreMapper;
    public Map initPage(Map paramsMap) {
        String physicalStoreIdList1 = paramsMap.get("physicalStoreIdList").toString();
        String[] physicalStoreIdList = physicalStoreIdList1.split(",");
        paramsMap.remove("physicalStoreIdList");
        if(physicalStoreIdList1 != ""){
            paramsMap.put("physicalStoreIdList",physicalStoreIdList);
        }
       Map map = new HashMap();
        //营业总额
        String yyze = orderMapper.selectYyze(paramsMap);
        map.put("yyze",yyze);
        //营业收入
        //抹零
        String ml = orderMapper.selectMl(paramsMap);
        map.put("ml",ml);
        //订单数
        String dds = orderMapper.selectDds(paramsMap);
        map.put("dds",dds);
        //堂食订单数
        String tsdds = orderMapper.selectTsdds(paramsMap);
        map.put("tsdds",tsdds);
        //堂食订单金额
        String tsddje = orderMapper.selectTsddje(paramsMap);
        map.put("tsddje",tsddje);
        //外卖订单数
        String wmdds = orderMapper.selectWmdds(paramsMap);
        map.put("wmdds",wmdds);
        //外卖订单金额
        String wmddje = orderMapper.selectWmddje(paramsMap);
        map.put("wmddje",wmddje);
        //单均
        String dj = bigDecimalReturn(new BigDecimal(yyze),new BigDecimal(dds));
        map.put("dj",dj);
        //就餐人数
        String jcrs = orderMapper.selectJcrs(paramsMap);
        map.put("jcrs",jcrs);
        //人均消费
        String rjxf = bigDecimalReturn(new BigDecimal(yyze),new BigDecimal(jcrs));
        map.put("rjxf",rjxf);
        //桌台数等于堂食订单数
        map.put("zts",tsdds);
        //桌均
        String zj = bigDecimalReturn(new BigDecimal(tsddje),new BigDecimal(tsdds));
        map.put("zj",zj);
        return map;
    }

    public String bigDecimalReturn(BigDecimal a, BigDecimal b){
        BigDecimal divide = new BigDecimal(0);
        if("0".equals(b.toString())){
            divide = a.divide(new BigDecimal(1),2, RoundingMode.HALF_UP);
        }else{
            divide = a.divide(b, 2, RoundingMode.HALF_UP);
        }
        return divide.toString();
    }

    public Map initParams(String storeId) {
        Map map = new HashMap();
        map.put("title","全选");
        map.put("expand",true);
        map.put("selected",true);
        map.put("value","-1");
        //查询所有门店
        List<PhysicalStore> physicalStoreList = physicalStoreMapper.getPhysicalStoreListByStoreId(storeId);
        //看所有省
        HashSet<String> set = new HashSet<>();
        for(PhysicalStore p:physicalStoreList){
            set.add(p.getProvinceName());
        }
        List<Map> list = new ArrayList<>();
        Map initMap = Init.getMap();
        //每个省下门店
        for (String string : set) {
            Map m = new HashMap();
            m.put("title",string);
            m.put("expand",true);
            m.put("value","-"+initMap.get(string));
            List<Map> cList = new ArrayList<>();
            for(PhysicalStore p:physicalStoreList){
                Map m1 = new HashMap();
                if(string.equals(p.getProvinceName())){
                    m1.put("value",p.getId()+"");
                    m1.put("title",p.getName());
                    cList.add(m1);
                }
            }
            m.put("children",cList);
            list.add(m);
        }
        map.put("children",list);
        return map;
    }
}
