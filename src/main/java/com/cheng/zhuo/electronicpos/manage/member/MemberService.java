package com.cheng.zhuo.electronicpos.manage.member;

import com.cheng.zhuo.electronicpos.manage.common.RechargeRecord;
import com.cheng.zhuo.electronicpos.manage.common.RechargeRecordMapper;
import com.cheng.zhuo.electronicpos.manage.member.settings.MemberSettings;
import com.cheng.zhuo.electronicpos.manage.member.settings.MemberSettingsMapper;
import com.cheng.zhuo.electronicpos.manage.member.settings.Recharge;
import com.cheng.zhuo.electronicpos.manage.order.OrderMapper;
import com.cheng.zhuo.electronicpos.manage.store.PhysicalStore;
import com.cheng.zhuo.electronicpos.manage.store.PhysicalStoreMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class MemberService {
    @Autowired
    MemberMapper memberMapper;
    @Autowired
    PhysicalStoreMapper physicalStoreMapper;
    @Autowired
    OrderMapper orderMapper;
    @Autowired
    MemberSettingsMapper memberSettingsMapper;
    @Autowired
    RechargeRecordMapper rechargeRecordMapper;
    public PageInfo getMemberList(Map paramMap) {
        Integer pageNum = Integer.parseInt(paramMap.get("pageNum").toString());
        Integer pageSize = Integer.parseInt(paramMap.get("pageSize").toString());
        PageHelper.startPage(pageNum,pageSize);
        List<Member> list = memberMapper.getMemberList(paramMap);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    public void deleteById(Map map) {
        memberMapper.deleteByMap(map);
    }

    public void updateById(Member member) {
        memberMapper.updateByPrimaryKeySelective(member);
    }

    public PageInfo getDeleteMemberList(Map paramMap) {
        Integer pageNum = Integer.parseInt(paramMap.get("pageNum").toString());
        Integer pageSize = Integer.parseInt(paramMap.get("pageSize").toString());
        PageHelper.startPage(pageNum,pageSize);
        List<Member> list = memberMapper.getDeleteMemberList(paramMap);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    public Map initParams(String storeId) {
        Map map = new HashMap();
        //查询此门店下的所有门店
        List<PhysicalStore> physicalStoreList = physicalStoreMapper.getPhysicalStoreListByStoreId(storeId);
        //查询此门店下的所有员工
        List<Map> ygList = memberMapper.selectYglistByStoreId(storeId);
        map.put("mdList",physicalStoreList);
        map.put("ygList",ygList);
        //查询消费总金额
        String zje = orderMapper.selectCountByStoreId(storeId);
        //查询总订单数
        String dds = orderMapper.selectDdsByStoreId(storeId);
        //平均消费
        String pjxf = bigDecimalDivide(new BigDecimal(zje),new BigDecimal(dds));
        map.put("zje",zje);
        map.put("dds",dds);
        map.put("pjxf",pjxf);
        //查询会员消费记录
        List<Map> hyxfjl = orderMapper.selectHyxfjl(storeId);
        map.put("hyxfjl",hyxfjl);
        return map;
    }

    @Transactional
    public Boolean addMember(Member member) {
        member.setId(System.currentTimeMillis()+"");
        //查询是否开启积分规则
        MemberSettings settings = memberSettingsMapper.selectByStoreId(member.getStoreId());
        //金额
        String balance = member.getBalance();
        Integer addBanlace = 0;
        Integer integer = 0;
        //赠送要求
        List<Recharge> allRecharge = memberSettingsMapper.getAllRechargeByStoreId(Long.parseLong(member.getStoreId()));
        for(int i =0;i<allRecharge.size();i++){
            if(Integer.parseInt(balance)<=allRecharge.get(i).getRechargeAmount()){
                if(i!=0){
                    addBanlace = allRecharge.get(i-1).getPresentAmount();
                    integer = allRecharge.get(i-1).getPresentIntegral();
                }
                break;
            }
        }
        //开启充值赠送
        if(settings.getEnabledRecharge()){
            balance = new BigDecimal(balance).add(new BigDecimal(addBanlace)).toString();
            member.setBalance(balance);
            //插入充值赠送表
            Map map = new HashMap();
            map.put("member_id",member.getId());
            map.put("amount",member.getBalance());
            map.put("creat_at",new Date());
            map.put("operator_id",member.getOperatorId());
            map.put("operator_type",1);
            map.put("pay_type",1);
            map.put("before_balance",0);
            map.put("after_balance",member.getBalance());
            map.put("zs_amount",addBanlace);
            map.put("cz_amount",balance);
            map.put("store_id",member.getStoreId());
            map.put("notes","");
            map.put("physical_store_id",member.getPhysicalStoreId());
            rechargeRecordMapper.insertByMap(map);
        }
        //开启积分规格
        if(settings.getEnabledIntegralRules()){
           member.setIntegral(integer);
        }
        return memberMapper.insertSelective(member);
    }

    public String bigDecimalDivide(BigDecimal a, BigDecimal b){
        BigDecimal divide = new BigDecimal(0);
        if("0".equals(b.toString())){
            divide = a.divide(new BigDecimal(1),2, RoundingMode.HALF_UP);
        }else{
            divide = a.divide(b, 2, RoundingMode.HALF_UP);
        }
        return divide.toString();
    }

    public Boolean qiyong(String id) {
         return memberMapper.qiyong(id);
    }

    public Boolean init(Long storeId) {
        Boolean flag = false;
        MemberSettings settings = memberSettingsMapper.selectByStoreId(storeId + "");
        if(settings!=null&&settings.getIsEnable()){
            flag = true;
        }
        return flag;
    }
}
