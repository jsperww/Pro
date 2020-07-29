package com.hbsoft.dao;

import com.hbsoft.bean.Equipment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface EquipmentDao {
    Integer update(Equipment equipment) throws Exception;

    List<Equipment> findAll() throws Exception;

    Equipment findEquipmentById(@Param("id") String id) throws Exception;
}
