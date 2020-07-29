package com.hbsoft.service;

import com.hbsoft.bean.Equipment;
import com.hbsoft.bean.Result;
import com.hbsoft.dao.EquipmentDao;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EquipmentService {
    private static final Logger logger= LoggerFactory.getLogger(EquipmentService.class
    );

    @Autowired
    EquipmentDao equipmentDao;

    public Result set(Equipment equipment) {
        Integer i=null;
        try {
            i = equipmentDao.update(equipment);
        }catch (Exception e){
            logger.error("设备信息更新错误");
            e.printStackTrace();
        }
        if(i==1){
            return new Result(0,"更新成功");
        }else{
            return new Result(500,"更新失败");
        }
    }

    public Result<List<Equipment>> selectAll() {
        List<Equipment> list=null;
        try {
            list = equipmentDao.findAll();
        }catch(Exception e){
            logger.error("设备获取异常");
            e.printStackTrace();
        }
        if(list==null || list.size()==0){
            return new Result(500,"暂无数据");
        }else{
            return new Result<>(0,"获取成功",list);
        }
    }

    public Result<Equipment> selectEquipmentById(String id) {
        Equipment equipment=null;
        try{
            equipment=equipmentDao.findEquipmentById(id);
        }catch(Exception e){
            logger.error("设备获取异常");
            e.printStackTrace();
        }
        if(equipment==null) {
            logger.info("无此设备");
            return new Result(500, "无设备数据");
        }else{
            return new Result<>(0,"获取成功",equipment);
        }
    }
}
