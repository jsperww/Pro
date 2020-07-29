package com.hbsoft.controller;

import com.hbsoft.bean.Equipment;
import com.hbsoft.bean.Product;
import com.hbsoft.bean.Result;
import com.hbsoft.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ProductController {
    @Autowired
    ProductService productService;

    private static final Logger logger= LoggerFactory.getLogger(ProductController.class);

    @RequestMapping("allproduct")
    public Result<List<Product>> allproduct(){
        Result<List<Product>> result=productService.selectAll();
        return result;
    }
    @PostMapping("productId")
    public Result<Product> productId(String id){
        Result<Product> result=productService.selectProByEId(id);
        return result;
    }
}
