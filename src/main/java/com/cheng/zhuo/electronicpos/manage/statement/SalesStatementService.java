package com.cheng.zhuo.electronicpos.manage.statement;

import com.cheng.zhuo.electronicpos.manage.common.RechargeRecordMapper;
import com.cheng.zhuo.electronicpos.manage.order.OrderMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class SalesStatementService {
    @Autowired
    OrderMapper orderMapper;
    @Autowired
    RechargeRecordMapper rechargeRecordMapper;



    public Map<String,Object> initParams(Map paramsMap) {
        Map result = new HashMap();
        String physicalStoreIdList1 = paramsMap.get("physicalStoreIdList").toString();
        String[] physicalStoreIdList = physicalStoreIdList1.split(",");
        paramsMap.remove("physicalStoreIdList");
        if(physicalStoreIdList1 != ""){
            paramsMap.put("physicalStoreIdList",physicalStoreIdList);
        }
        String rangeTime = paramsMap.get("rangeTime").toString();
        String[] split = rangeTime.split(",");
        if(split.length>1){
            paramsMap.put("startRangeTime",split[0]);
            paramsMap.put("endRangeTime",split[1]);
        }
        Integer rqPageNum = Integer.parseInt(paramsMap.get("rqPageNum").toString());
        Integer dpPageNum = Integer.parseInt(paramsMap.get("dpPageNum").toString());
        Integer pageSize = Integer.parseInt(paramsMap.get("pageSize").toString());
        //按日期查询
        PageHelper.startPage(rqPageNum,pageSize);
        List<Map> rqList = orderMapper.selectRqlist(paramsMap);
        //按日期查询充值收入
        List<Map> rqCzsr = rechargeRecordMapper.selectRqCzsr(paramsMap);
        for(Map m:rqList){
            for(Map m2:rqCzsr){
                if(m.get("rq").toString().equals(m2.get("rq").toString())){
                    m.put("czsr",m2.get("czsr").toString());
                    m.put("hjsr",new BigDecimal(m.get("yye").toString()).add(new BigDecimal(m.get("czsr").toString())));
                }
            }
        }
        PageInfo rqPageInfo = new PageInfo(rqList);
        result.put("rqPageInfo",rqPageInfo);
        //按店铺查询
        PageHelper.startPage(dpPageNum,pageSize);
        List<Map> dpList = orderMapper.selectDplist(paramsMap);
        //按门店查询充值收入
        List<Map> dpCzsr = rechargeRecordMapper.selectDpCzsr(paramsMap);
        for(Map m:dpList){
            for(Map m2:dpCzsr){
                if(m.get("id").toString().equals(m2.get("id").toString())){
                    m.put("czsr",m2.get("czsr").toString());
                    m.put("hjsr",new BigDecimal(m.get("yye").toString()).add(new BigDecimal(m.get("czsr").toString())));
                }
            }
        }
        PageInfo dpPageInfo = new PageInfo(dpList);
        result.put("dpPageInfo",dpPageInfo);
        return result;
    }
}
