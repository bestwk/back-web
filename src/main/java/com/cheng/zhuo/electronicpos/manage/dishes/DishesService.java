package com.cheng.zhuo.electronicpos.manage.dishes;

import com.cheng.zhuo.electronicpos.manage.common.Catalogs;
import com.cheng.zhuo.electronicpos.manage.common.CatalogsMapper;
import com.cheng.zhuo.electronicpos.manage.employees.Employees;
import com.cheng.zhuo.electronicpos.manage.meal.SetMealDishes;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * @author shuai
 * @date 2019/9/11 0011 9:21
 */
@Service
public class DishesService {

    @Autowired
    DishesMapper dishesMapper;
    @Autowired
    SpecificationMapper specificationMapper;
    @Autowired
    AdditiveMapper additiveMapper;
    @Autowired
    CatalogsMapper catalogsMapper;

    public PageInfo<Dishes> doQueryAllResouce(Integer pageNum, Integer pageSize, String dishesCatalog,String dishesName,String physicalStoreId){
        PageHelper.startPage(pageNum,pageSize);
        List<Dishes> dishesList =  dishesMapper.findAllList(dishesCatalog,dishesName,physicalStoreId);
        for(Dishes dishes:dishesList){
           List<Specification> specification =  dishesMapper.selectByDishesId(dishes.getId());
           if(specification.size()>0){
               dishes.setSpecificationList(specification);
               dishes.setSpecification(specification.get(0));
           }

        }
        PageInfo<Dishes> pageInfo = new PageInfo<>(dishesList);
        return pageInfo;
    }

    public Dishes getById(Integer id){

        Dishes dishes = dishesMapper.findById(id);
        //查询规格
        List<Specification> specificationList = specificationMapper.findByDishesId(dishes.getId());
        if(specificationList.size()>0){
            dishes.setSpecification(specificationList.get(0));
            dishes.setSpecificationList(specificationList);
        }


        //查询加料
        List<Additive> additiveList = additiveMapper.findByDishesId(dishes.getId());
        if(additiveList.size()>0){
            dishes.setAdditiveList(additiveList);
        }


        return dishes;
    }

    @Transactional
    public Integer doSaveResouce(Dishes dishes){
        Integer res = 0;
        dishesMapper.insertSelective(dishes);
        Dishes dishes1 = dishes;
        //插入规格
        if(dishes.getEnabledSpecifications()==1){
            //启用规格
            if(dishes.getSpecificationList().size()>0){
                List<Specification> specifications = dishes.getSpecificationList();
                for(Specification specification:specifications){
                    specification.setDishesId(dishes.getId());
                    specificationMapper.insertSelective(specification);
                }
            }
        }
        if(dishes.getEnabledSpecifications()==0){
            //单一价格
            Specification specification = dishes.getSpecification();
            specification.setDishesId(dishes1.getId());
             specificationMapper.insertSelective(specification);
        }
        //插入加料
        if(dishes.getAdditiveList().size()>0){
            List<Additive> additives = dishes.getAdditiveList();
            for (Additive additive:additives){
                additive.setDishesId(dishes.getId());
                res =additiveMapper.insertSelective(additive);
            }
        }
        return res;
    }
    @Transactional
    public Integer doUpdateResouce(Dishes dishes){
        Integer res = 0;
        //更新dishes
        res = dishesMapper.updateByPrimaryKeySelective(dishes);
        //更新规格
        specificationMapper.deleteByDishesId(dishes.getId());
        //插入规格
        //插入规格
        if(dishes.getEnabledSpecifications()==1){
            //启用规格
            if(dishes.getSpecificationList().size()>0){
                List<Specification> specifications = dishes.getSpecificationList();
                for(Specification specification:specifications){
                    specification.setDishesId(dishes.getId());
                    specificationMapper.insertSelective(specification);
                }
            }
        }
        if(dishes.getEnabledSpecifications()==0){
            //单一价格
            Specification specification = dishes.getSpecification();
            specification.setDishesId(dishes.getId());
            specificationMapper.insertSelective(specification);
        }
        //更新加料
        additiveMapper.deleteByDeshesId(dishes.getId());
        //插入加料
        if(dishes.getAdditiveList().size()>0){
            List<Additive> additives = dishes.getAdditiveList();
            for (Additive additive:additives){
                additive.setDishesId(dishes.getId());
                additiveMapper.insertSelective(additive);
            }
        }
        return  res;
    }
    public Integer doUpdatePart(Dishes dishes){
        return dishesMapper.updateByPrimaryKeySelective(dishes);
    }

    @Transactional
    public Integer doDeleteResouce(Integer id){
        //删除规格跟加料
        specificationMapper.deleteByDishesId(Long.parseLong(id.toString()));
        additiveMapper.deleteByDeshesId(Long.parseLong(id.toString()));
        return  dishesMapper.deleteByPrimaryKey(Long.parseLong(id.toString()));
    }

    public Integer doDeleteBatchResouces(String[] ids){
        List<Integer> list =new ArrayList<>();
        for(int i=0;i<ids.length;i++){
            list.add(Integer.valueOf(ids[i]));
        }
        return dishesMapper.doDeleteBatchResouces(list);

    }

    public List<Tag> doGetTag(String name){
        return dishesMapper.findTagByName(name);
    }
    public List<Dishes> getGqList(String physicalStoreId){
        return dishesMapper.findGqList(physicalStoreId);
    }

    public  Boolean checkDishes(String id){
        Boolean res = false;
        Integer num = dishesMapper.findCount(id);
        if(num != 0){
            res = true;
        }

        return res;
    }

    public List<SetMealDishes>  getDishesMeal(String dishesCatalog,String dishesName){
        return  dishesMapper.findDishesMeal(dishesCatalog,dishesName);
    }

    public List<Catalogs> getDishesCatalogs(){
        return dishesMapper.findDishesCatalogs();
    }
    public Integer saveDishesCatalogs(Catalogs catalogs){
        return catalogsMapper.insertSelective(catalogs);
    }
    public Integer deleteCatalogs(String id){
        return catalogsMapper.deleteByPrimaryKey(Long.parseLong(id));
    }
    public Catalogs getDishesCatalogsById(String id){
        return catalogsMapper.findById(id);
    }
    public Integer updateCatalogs(Catalogs catalogs){
        return catalogsMapper.updateByPrimaryKeySelective(catalogs);
    }
}
