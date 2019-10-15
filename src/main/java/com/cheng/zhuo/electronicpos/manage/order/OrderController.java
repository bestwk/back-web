package com.cheng.zhuo.electronicpos.manage.order;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;
import com.cheng.zhuo.electronicpos.manage.login.ManageLogin;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
public class OrderController extends BaseController {

    @Autowired
    OrderService orderService;

    /**
     * 查询订单列表
     * @param paramsMap
     * @return
     */
    @GetMapping("/getOrderList")
    public ResponseData getOrderList(@RequestParam Map paramsMap){
          ResponseData res = new ResponseData();
          try{
              ManageLogin admin = getAdmin();
              paramsMap.put("storeId",admin.getStoreId()+"");
              PageInfo pageInfo = orderService.getOrderList(paramsMap);
              res.setSuccess(true);
              res.setData(pageInfo);
          }catch (Exception e){
              e.printStackTrace();
              res.setSuccess(false);
          }
          return res;
    }

    @GetMapping("/getOrderById")
    public ResponseData getOrderById(String orderId){
        ResponseData res = new ResponseData();
        try{
            Order order = orderService.getOrderById(orderId);
            res.setSuccess(true);
            res.setData(order);
        }catch (Exception e){
            e.printStackTrace();
            res.setSuccess(false);
        }
        return res;
    }

    /**
     * 根据订单id查询详情
     * @param orderId
     * @return
     */
    @GetMapping("getOrderDetails")
    public ResponseData getOrderDetails(String orderId){
        ResponseData res = new ResponseData();
        try{
            List<OrderDeatails> list = orderService.getOrderDetails(orderId);
            res.setSuccess(true);
            res.setData(list);
        }catch (Exception e){
            e.printStackTrace();
            res.setSuccess(false);
        }
        return res;
    }
}
