package com.cheng.zhuo.electronicpos.app.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 订单service
 *
 * @author MIAO
 */
@Service
public class AppOrderService {

    @Autowired
    AppOrderMapper appOrderMapper;


    public int doSaveOrder(AppOrder appOrder) {
        return appOrderMapper.insertSelective(appOrder);
    }

}
