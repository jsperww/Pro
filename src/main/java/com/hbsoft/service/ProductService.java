package com.hbsoft.service;

import com.hbsoft.bean.Equipment;
import com.hbsoft.bean.Product;
import com.hbsoft.bean.Result;
import com.hbsoft.dao.ProductDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {
    @Autowired
    ProductDao productDao;

    private static final Logger logger= LoggerFactory.getLogger(ProductService.class);


    public Result<List<Product>> selectAll() {
        List<Product> list=null;
        try{
            list=productDao.findAll();
        }catch(Exception e){
            logger.error("产品获取错误");
            e.printStackTrace();
        }
        if(list==null || list.size()==0){
            return new Result(500,"暂无数据");
        }else{
            return new Result(0,"获取成功",list);
        }
    }
}
