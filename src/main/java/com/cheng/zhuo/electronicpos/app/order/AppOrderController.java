package com.cheng.zhuo.electronicpos.app.order;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.common.controller.BaseController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;


/**
 * App订单
 *
 * @author MIAO
 */
@RestController
public class AppOrderController extends BaseController {


    @Autowired
    AppOrderService appOrderService;

    @SuppressWarnings("unchecked")
    @PostMapping("/save/order")
    public ResponseData doSaveOrder(@RequestBody AppOrder appOrder) {
        try {
            int orderId = appOrderService.doSaveOrder(appOrder);
            if (orderId > 0) {
                return new ResponseData(true, "成功", orderId);
            } else {
                return new ResponseData(false);
            }

        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseData(false);
        }
    }
}
