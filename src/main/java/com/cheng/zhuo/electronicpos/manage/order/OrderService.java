package com.cheng.zhuo.electronicpos.manage.order;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class OrderService {

    @Autowired
    OrderMapper orderMapper;
    @Autowired
    OrderDeatailsMapper orderDeatailsMapper;
    @Autowired
    OrderDeatailsAdditiveMapper orderDeatailsAdditiveMapper;
    @Autowired
    OrderActionLogMapper orderActionLogMapper;

    public PageInfo getOrderList(Map paramsMap) {
        Integer pageNum = Integer.parseInt(paramsMap.get("pageNum").toString());
        Integer pageSize = Integer.parseInt(paramsMap.get("pageSize").toString());
        PageHelper.startPage(pageNum,pageSize);
        List<Order> list = orderMapper.getOrderList(paramsMap);
        PageInfo pageInfo = new PageInfo(list);
        return pageInfo;
    }

    public List<OrderDeatails> getOrderDetails(String orderId) {
        return orderDeatailsMapper.selectByOrderId(orderId);
    }

    public Order getOrderById(String orderId) {
        Order order = orderMapper.selectByPrimaryKey(Long.parseLong(orderId));
        //查询订单详情
        List<OrderDeatails> orderDeatails = orderDeatailsMapper.selectByOrderId(orderId);
        for(OrderDeatails deatails:orderDeatails){
             //查询加菜
            List<OrderDeatailsAdditive> orderDeatailsAdditiveList = orderDeatailsAdditiveMapper.selectByOrderDetailsId(deatails.getId());
            deatails.setAdditiveList(orderDeatailsAdditiveList);
            StringBuffer s = new StringBuffer();
            for(OrderDeatailsAdditive a:orderDeatailsAdditiveList){
               s.append(a.getAdditiveName()+",");
            }
            String additive = s.toString();
            if(additive.length()>0){
                additive = additive.substring(0,additive.length()-1);
            }
            deatails.setAdditive(additive);
        }
        order.setDeatailsList(orderDeatails);
        //查询订单操作日志
        List<OrderActionLog> orderActionLogList = orderActionLogMapper.selectByOrderId(orderId);
        order.setOrderActionLogList(orderActionLogList);
        return order;
    }
}
