package com.cheng.zhuo.electronicpos.manage.statement;

import com.cheng.zhuo.electronicpos.manage.common.RechargeRecordMapper;
import com.cheng.zhuo.electronicpos.manage.order.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

@Service
public class BillStatementService {

    @Autowired
    OrderMapper orderMapper;
    @Autowired
    RechargeRecordMapper rechargeRecordMapper;


    public Map initPage(Map paramsMap) {
        String physicalStoreIdList1 = paramsMap.get("physicalStoreIdList").toString();
        String[] physicalStoreIdList = physicalStoreIdList1.split(",");
        paramsMap.remove("physicalStoreIdList");
        if(physicalStoreIdList1 != ""){
            paramsMap.put("physicalStoreIdList",physicalStoreIdList);
        }
        Map map = new HashMap();
        //营业收入
        String yyze = orderMapper.selectYyze(paramsMap);
        map.put("yysr",yyze);
        //充值收入
        String czsr = rechargeRecordMapper.selectCzsr(paramsMap);
        map.put("czsr",czsr);
        //综合总收入
        String zhzsr = new BigDecimal(yyze).add(new BigDecimal(czsr)).toString();
        map.put("zhzsr",zhzsr);
        return map;
    }
}
