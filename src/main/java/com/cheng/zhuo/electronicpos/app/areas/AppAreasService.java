package com.cheng.zhuo.electronicpos.app.areas;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 * App 区域
 * @author MIAO
 */
@Service
public class AppAreasService {

    @Autowired
    AppAreasMapper appAreasMapper;


    List<AppAreas> getStoreInfo(String physicalStoreId){
        return appAreasMapper.findByPhysicalStoreId(physicalStoreId);
    }

}
