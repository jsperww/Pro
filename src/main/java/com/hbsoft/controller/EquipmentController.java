package com.hbsoft.controller;

import com.hbsoft.bean.Equipment;
import com.hbsoft.bean.Result;
import com.hbsoft.service.EquipmentService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class EquipmentController {
    @Autowired
    EquipmentService equipmentService;

    private static final Logger logger= LoggerFactory.getLogger(ProductController.class);

    @RequestMapping("updateProduct")
    public Result updateProduct(Equipment equipment){
        Result result =equipmentService.set(equipment);
        return result;
    }
    @RequestMapping("allEquipment")
    public Result<List<Equipment>> allEquipment(){
        Result<List<Equipment>> result=equipmentService.selectAll();
        return result;
    }
}
