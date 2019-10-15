package com.cheng.zhuo.electronicpos.manage.setting.baseinfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created By wk
 * Date: 2019/9/17
 */
@Service
public class BaseInfoService {
    @Autowired
    private BaseInfoMapper baseInfoMapper;

    public BaseInfo getStore() {
      return  baseInfoMapper.getStore();
    }

    public int updateStore(BaseInfo baseInfo) {
        return baseInfoMapper.updateByPrimaryKeySelective(baseInfo);
    }
}
