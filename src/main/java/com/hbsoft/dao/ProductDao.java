package com.hbsoft.dao;

import com.hbsoft.bean.Equipment;
import com.hbsoft.bean.Product;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProductDao {

    List<Product> findAll() throws Exception;

    Product findProByEID(String id) throws Exception;
}
