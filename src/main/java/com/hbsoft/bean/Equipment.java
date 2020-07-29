package com.hbsoft.bean;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Equipment {
    private String id;
    private String name;
    private Integer proId;
    private String remark;
    private Integer stop;
    private Integer id_prikey;

    @Override
    public String toString() {
        return "Equipment{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", proId=" + proId +
                ", remark='" + remark + '\'' +
                ", stop=" + stop +
                ", id_prikey=" + id_prikey +
                '}';
    }
}
