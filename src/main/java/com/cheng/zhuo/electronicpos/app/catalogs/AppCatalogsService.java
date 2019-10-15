package com.cheng.zhuo.electronicpos.app.catalogs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 菜品分类
 * @author MIAO
 */
@Service
public class AppCatalogsService {

    @Autowired
    AppCatalogsMapper appCatalogsMapper;

}
