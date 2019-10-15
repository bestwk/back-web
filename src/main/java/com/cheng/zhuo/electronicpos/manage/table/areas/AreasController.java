package com.cheng.zhuo.electronicpos.manage.table.areas;
import com.cheng.zhuo.electronicpos.common.ResponseData;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * Created By wk
 * Date: 2019/9/10
 */
@RestController
public class AreasController {

    @Autowired
    private AreasService areasService;

    /**
     * @Author wk on 2019/9/10
     * @Description 添加区域
     */
    @ResponseBody
    @PostMapping("/areas/addAreas")
    public ResponseData addAreas (@RequestBody Areas areas){

       int i  =  areasService.addAreas(areas);
       if(i > 0 ){
           return new ResponseData(true,"添加成功","");
       }else{
           return new ResponseData(false,"添加失败","");
       }
    }
    /**
     * @Author wk on 2019/9/10
     * @Description 修改区域
     */
    @ResponseBody
    @PostMapping("/areas/updateAreas")
    public ResponseData updateAreas (@RequestBody Areas areas){

       int i  =  areasService.updateAreas(areas);
       if(i > 0 ){
           return new ResponseData(true,"添加成功","");
       }else{
           return new ResponseData(false,"添加失败","");
       }
    }

    /**
     * @Author wk on 2019/9/10
     * @Description 获取所有区域
     */
    @ResponseBody
    @GetMapping("/areas/getAllAreas")
    public ResponseData getAllAreas (@RequestParam("pageNum") Integer pageNum,
                                     @RequestParam("pageSize") Integer pageSize,
                                     @RequestParam("storeId") String storeId){

        try {
            PageInfo<Areas> list =  areasService.getAllAreas(pageNum,pageSize,storeId);
            return new ResponseData(true,"查询成功",list);
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseData(false,"查询失败","");
        }
    }

    /**
     * @Author wk on 2019/9/10
     * @Description 删除区域
     */
    @ResponseBody
    @GetMapping("/areas/deleteAreas")
    public ResponseData deleteAreas (@RequestParam("areasId") String areasId){

        try {
            int i = areasService.deleteAreas(areasId);
            if(i > 0){
            return new ResponseData(true,"删除成功","");
            }else{
            return new ResponseData(false,"删除失败","");
            }
        } catch (Exception e) {
            e.printStackTrace();
            return new ResponseData(false,"删除失败","");
        }
    }

}
