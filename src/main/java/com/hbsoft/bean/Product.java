package com.hbsoft.bean;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Product {
    private String name;
    private String link;
    private String icon;
    private String remark;
    private Integer stop;
    private Integer id_prikey;

    @Override
    public String toString() {
        return "Product{" +
                "name='" + name + '\'' +
                ", link='" + link + '\'' +
                ", icon='" + icon + '\'' +
                ", remark='" + remark + '\'' +
                ", stop=" + stop +
                ", id_prikey=" + id_prikey +
                '}';
    }
}
