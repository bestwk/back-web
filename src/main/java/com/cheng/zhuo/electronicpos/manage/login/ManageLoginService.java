package com.cheng.zhuo.electronicpos.manage.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author shuai
 * @date 2019/8/23 0023 15:16
 */
@Service
public class ManageLoginService {

    @Autowired
    private ManageLoginMapper manageLoginMapper;

    public  ManageLogin findbyPhone(String phone) {
        ManageLogin ml = manageLoginMapper.findbyPhone(phone);
        return ml;
    }


    public ManageLogin getLogin(ManageLogin manageLogin) {
        ManageLogin ml = manageLoginMapper.getLogin(manageLogin.getAccount());
        return ml;
    }

    public ManageLogin findById(Long id) {
        ManageLogin ml = manageLoginMapper.selectByPrimaryKey(id);
        return ml;
    }

    public int updatePwd(Long id, String newPwd, String phone) {
       return manageLoginMapper.updatePwd(id,newPwd,phone);
    }

    public int updateAccount(Long id, String phone) {
        return manageLoginMapper.updateAccount(id,phone);
    }
}
