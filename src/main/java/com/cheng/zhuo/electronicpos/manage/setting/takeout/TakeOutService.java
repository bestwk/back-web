package com.cheng.zhuo.electronicpos.manage.setting.takeout;

import cn.hutool.core.util.ObjectUtil;
import com.cheng.zhuo.electronicpos.manage.setting.baseinfo.BaseInfo;
import com.cheng.zhuo.electronicpos.manage.setting.baseinfo.BaseInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created By wk
 * Date: 2019/9/19
 */
@Service
public class TakeOutService {

    @Autowired
    private TakeOutMapper takeOutMapper;

    @Autowired
    private SectionMapper sectionMapper;

    @Autowired
    private BaseInfoMapper baseInfoMapper;

    @Transactional
    public int updateTakeOut(TakeOut takeOut) {
            Integer res = 0;
            // 获取默认门店信息
            BaseInfo store = baseInfoMapper.getStore();
            //   删除所有距离,时间段记录.重新添加
            sectionMapper.deleteAll();
            //更新主表takeout
            if(ObjectUtil.isNull(takeOut.getId())){
                takeOut.setStoreId(store.getStoreId());
                res = takeOutMapper.insertSelective(takeOut);
            }else{
                takeOut.setStoreId(store.getStoreId());
                res = takeOutMapper.updateByPrimaryKeySelective(takeOut);
            }
            // 更新副表(时间段,距离)
            List<Section> timeArray = takeOut.getTimeArray();
            for (Section section : timeArray) {
                    section.setId(null);
                    section.setStoreId(store.getStoreId());
                    section.setType(1);
                    sectionMapper.insertSelective(section);
            }
            List<Section> valuationArray = takeOut.getValuationArray();
            for (Section section : valuationArray) {
                    section.setId(null);
                    section.setStoreId(store.getStoreId());
                    section.setType(2);
                    sectionMapper.insertSelective(section);
            }
            return res;
    }
    // 初始化查询外卖设置
    public TakeOut getTakeout() {
        TakeOut takeOut = takeOutMapper.getAll();
        List<Section> list1 = sectionMapper.getAllTimeArray();
        List<Section> list2 = sectionMapper.getAllValuationArray();
        if(ObjectUtil.isNull(takeOut)){
            return takeOut;
        }else{
            takeOut.setTimeArray(list1);
            takeOut.setValuationArray(list2);
            return takeOut;
        }

    }
}
