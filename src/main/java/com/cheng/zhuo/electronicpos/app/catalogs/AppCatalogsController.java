package com.cheng.zhuo.electronicpos.app.catalogs;

import com.cheng.zhuo.electronicpos.common.controller.BaseController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

/**
 * 菜品分类
 * @author MIAO
 */
@RestController
public class AppCatalogsController extends BaseController {

    @Autowired
    AppCatalogsService appCatalogsService;


}
