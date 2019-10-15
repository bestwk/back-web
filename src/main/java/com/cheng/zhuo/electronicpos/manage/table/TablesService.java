package com.cheng.zhuo.electronicpos.manage.table;

import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.cheng.zhuo.electronicpos.manage.store.PhysicalStore;
import com.cheng.zhuo.electronicpos.manage.table.areas.Areas;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created By wk
 * Date: 2019/9/10
 */
@Service
public class TablesService {

    @Autowired
    private TablesMapper tablesMapper;


    public List<PhysicalStore> getAllStore() {
      return   tablesMapper.getAllStore();
    }

    public List<Areas> getAllAreasList(String storeId) {
        return tablesMapper.getAllAreasList(storeId);
    }

    public PageInfo<Tables> getTableList(Integer pageNum, Integer pageSize, String store, String tableName, String areas) {
        PageHelper.startPage(pageNum, pageSize);
        List<Tables> list = tablesMapper.getTableList(store,tableName,areas);
        PageInfo<Tables> tablesPageInfo = new PageInfo<>(list);
        return tablesPageInfo;
    }

    public int deleteTableById(Integer tableId) {
      return  tablesMapper.deleteTableById(tableId);
    }

    public int addTable(Tables tables) {
      return  tablesMapper.insertSelective(tables);
    }

    public int updateTable(Tables tables) {
        return tablesMapper.updateByPrimaryKeySelective(tables);
    }

    public int update(Integer value, Integer method, Integer id) {
        //method数值为1,修改是否开启桌台按钮
        if(method == 1){
            return tablesMapper.updateisEnabled(value,id);
        }else{
        //method数值为0,修改是否要必点菜按钮
            return tablesMapper.updateisOrderdish(value,id);
        }
    }

    public int updateShortChain(Map map) {

        Object id = map.get("id");
        Integer tableId = Integer.valueOf(id.toString());
        ArrayList<Object> array =(ArrayList<Object>) map.get("array");
        StringBuffer sb = new StringBuffer();
        for (int i= 0; i< array.size(); i++) {
            HashMap<String, Object> mm = (HashMap<String, Object>)array.get(i);
            sb.append(mm.get("value").toString()+",");
        }
        String substring = sb.toString().substring(0, sb.length()-1);
        return tablesMapper.updateShortChain(tableId,substring);
    }
}
