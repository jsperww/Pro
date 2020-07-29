package com.hbsoft.dao;

import com.hbsoft.bean.Equipment;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface EquipmentDao {
    Integer update(Equipment equipment) throws Exception;

    List<Equipment> findAll() throws Exception;
}
