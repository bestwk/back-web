package com.cheng.zhuo.electronicpos.manage.table.areas;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created By wk
 * Date: 2019/9/10
 */
@Service
public class AreasService {

    @Autowired
    private AreasMapper areasMapper;
    /**
     * @Author wk on 2019/9/10
     * @Description 添加区域
     */
    public int addAreas(Areas areas) {
     return   areasMapper.insertSelective(areas);
    }
    /**
     * @Author wk on 2019/9/10
     * @Description 根据门店获取所有区域
     */
    public PageInfo<Areas> getAllAreas(Integer pageNum, Integer pageSize, String storeId) {
        PageHelper.startPage(pageNum, pageSize);
        List<Areas> list = areasMapper.getAllAreas(storeId);
        PageInfo<Areas> areasPageInfo = new PageInfo<>(list);
        return areasPageInfo;
    }
    /**
     * @Author wk on 2019/9/10
     * @Description 删除区域
     */
    public int deleteAreas(String areasId) {
        return areasMapper.deleteByPrimaryKey(Long.parseLong(areasId));
    }
    /**
     * @Author wk on 2019/9/10
     * @Description 修改区域
     */
    public int updateAreas(Areas areas) {
        return areasMapper.updateByPrimaryKeySelective(areas);
    }
}
