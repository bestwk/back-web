package com.cheng.zhuo.electronicpos.manage.member;
import	java.util.ArrayList;

import com.cheng.zhuo.electronicpos.manage.common.RechargeRecordMapper;
import com.cheng.zhuo.electronicpos.manage.employees.Employees;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * @author shuai
 * @date 2019/9/30 0030 9:13
 */
@Service
public class RechargeService {

    @Autowired
    RechargeRechargeRecordMapper rechargeRechargeRecordMapper;

    public List<Employees> getEmployees(Long storeId){
       return rechargeRechargeRecordMapper.getEmployee(storeId);
    }

    public List<RechargeRechargeRecord> getRecharge(String memberId,Long storeId){
        return  rechargeRechargeRecordMapper.findRecharge(memberId,storeId);
    }

    @Transactional
    public Integer doSaveResouce(RechargeRechargeRecord rechargeRechargeRecord){
        //查询会员余额
        BigDecimal balance = rechargeRechargeRecordMapper.findMemberBalance(rechargeRechargeRecord.getMemberId());
        rechargeRechargeRecord.setBeforeBalance(balance);
        //充值
        if(rechargeRechargeRecord.getOperatorType()==1){
            rechargeRechargeRecord.setAfterBalance(rechargeRechargeRecord.getAmount().add(rechargeRechargeRecord.getBeforeBalance()));
            //然后更新会员余额
            rechargeRechargeRecordMapper.updateBalance(rechargeRechargeRecord.getAfterBalance(),rechargeRechargeRecord.getMemberId());
        }
        //扣费
        if(rechargeRechargeRecord.getOperatorType()==2){
            rechargeRechargeRecord.setAfterBalance(rechargeRechargeRecord.getBeforeBalance().subtract(rechargeRechargeRecord.getAmount()));
            //然后更新会员余额
            rechargeRechargeRecordMapper.updateBalance(rechargeRechargeRecord.getAfterBalance(),rechargeRechargeRecord.getMemberId());
        }
        return rechargeRechargeRecordMapper.insertSelective(rechargeRechargeRecord);
    }
    /**
     * @Author wk on 2019/10/8
     * @Description   查询所有的消费记录
     */
    public PageInfo<RechargeRechargeRecord> searchAll(Integer pageNum, Integer pageSize, Integer type, Long storeId) {
        List<RechargeRechargeRecord> res = new ArrayList <RechargeRechargeRecord>();
        switch (type){
            case 1:
                PageHelper.startPage(pageNum,pageSize);
                res = rechargeRechargeRecordMapper.searchAll(storeId);
                break;
            case 2:
                PageHelper.startPage(pageNum,pageSize);
                res = rechargeRechargeRecordMapper.searchAllByWeek(storeId);
                break;
               // return new PageInfo<>(res2);
            case 3:
                PageHelper.startPage(pageNum,pageSize);
                res = rechargeRechargeRecordMapper.searchAllByMonth(storeId);
                break;
                //return new PageInfo<>(res3);
            case 4:
                PageHelper.startPage(pageNum,pageSize);
                res = rechargeRechargeRecordMapper.searchAllByQuarter(storeId);
                break;
                //return new PageInfo<>(res4);
            default:
                break;
        }
        for (RechargeRechargeRecord r : res) {
            if(r.getOperatorType() == 1){
                r.setOperatorName("充值");
                r.setPayName("现金");
            }else{
                r.setOperatorName("扣费");
                r.setPayName("余额");
            }
        }
        return new PageInfo<>(res);
    }

    public PageInfo<RechargeRechargeRecord> searchAllByTime(Map paramMap) {
        Integer pageNum = Integer.parseInt(paramMap.get("pageNumTwo").toString());
        Integer pageSize = Integer.parseInt(paramMap.get("pageSizeTwo").toString());
        PageHelper.startPage(pageNum,pageSize);
        List<RechargeRechargeRecord> res = rechargeRechargeRecordMapper.searchAllByTime(paramMap);
        for (RechargeRechargeRecord r : res) {
            if(r.getOperatorType() == 1){
                r.setOperatorName("充值");
                r.setPayName("现金");
            }else{
                r.setOperatorName("扣费");
                r.setPayName("余额");
            }
        }
        return new PageInfo<> (res);
    }

    public List<RechargeRechargeRecord> exportDataCz(Map paramMap) {
        List<RechargeRechargeRecord> res = new ArrayList <RechargeRechargeRecord>();
        if(paramMap.containsKey("chooseNow")){
            Integer chooseNow = Integer.parseInt(paramMap.get("chooseNow").toString());
            Long storeId = Long.parseLong(paramMap.get("storeId").toString());
            switch (chooseNow){
                case 1:
                    res = rechargeRechargeRecordMapper.searchAll(storeId);
                    break;
                case 2:
                    res = rechargeRechargeRecordMapper.searchAllByWeek(storeId);
                    break;
                case 3:
                    res = rechargeRechargeRecordMapper.searchAllByMonth(storeId);
                    break;
                case 4:
                    res = rechargeRechargeRecordMapper.searchAllByQuarter(storeId);
                    break;
                default:
                    break;
            }
        }else{
             res = rechargeRechargeRecordMapper.searchAllByTime(paramMap);
        }
        Iterator<RechargeRechargeRecord> iterator = res.iterator();
        while (iterator.hasNext()){
            RechargeRechargeRecord r = iterator.next();
            if(r.getOperatorType() == 1){
                r.setOperatorName("充值");
                r.setPayName("现金");
            }else{
                iterator.remove();
            }
        }
        return res;
    }

    public List<RechargeRechargeRecord> exportDataXf(Map paramMap) {
        List<RechargeRechargeRecord> res = new ArrayList <RechargeRechargeRecord>();
        if(paramMap.containsKey("chooseNow")){
            Integer chooseNow = Integer.parseInt(paramMap.get("chooseNow").toString());
            Long storeId = Long.parseLong(paramMap.get("storeId").toString());
            switch (chooseNow){
                case 1:
                    res = rechargeRechargeRecordMapper.searchAll(storeId);
                    break;
                case 2:
                    res = rechargeRechargeRecordMapper.searchAllByWeek(storeId);
                    break;
                case 3:
                    res = rechargeRechargeRecordMapper.searchAllByMonth(storeId);
                    break;
                case 4:
                    res = rechargeRechargeRecordMapper.searchAllByQuarter(storeId);
                    break;
                default:
                    break;
            }
        }else{
            res = rechargeRechargeRecordMapper.searchAllByTime(paramMap);
        }
        Iterator<RechargeRechargeRecord> iterator = res.iterator();
        while (iterator.hasNext()){
            RechargeRechargeRecord r = iterator.next();
            if(r.getOperatorType() == 2){
                r.setOperatorName("扣费");
                r.setPayName("余额");
            }else{
                iterator.remove();
            }
        }
        return res;
    }
}
