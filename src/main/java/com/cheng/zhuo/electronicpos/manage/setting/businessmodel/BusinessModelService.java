package com.cheng.zhuo.electronicpos.manage.setting.businessmodel;

import cn.hutool.core.util.ObjectUtil;
import com.cheng.zhuo.electronicpos.manage.setting.baseinfo.BaseInfo;
import com.cheng.zhuo.electronicpos.manage.setting.baseinfo.BaseInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created By wk
 * Date: 2019/9/19
 */
@Service
public class BusinessModelService {

    @Autowired
    private BusinessModelMapper businessModelMapper;

    @Autowired
    private BaseInfoMapper baseInfoMapper;

    /**
     * @Author wk on 2019/9/19
     * 获取默认的营业模式模式
     */
    public BusinessModel getStore() {
       return  businessModelMapper.getStore();
    }
    /**
     * @Author wk on 2019/9/19
     * @Description  更新或者添加新的营业模式
     */
    public int updateBusinessModel(BusinessModel businessModel) {
        BaseInfo store = baseInfoMapper.getStore();
        int i = 0;
        if(ObjectUtil.isNull(businessModel.getId())){
            businessModel.setStoreId(store.getStoreId());
             i = businessModelMapper.insertSelective(businessModel);
        }else{
            businessModel.setStoreId(store.getStoreId());
           i = businessModelMapper.updateByPrimaryKeySelective(businessModel);
        }
        return i;
    }
}
