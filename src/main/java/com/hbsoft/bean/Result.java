package com.hbsoft.bean;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
public class Result<T> implements Serializable {
    private static final long serialVersionUID = -6835984714075017660L;
    private Integer code;
    private String msg;
    private T data;

    private Integer page;
    private Integer rows;

    public Result(){
        super();
    }
    public Result(Integer code,String msg,T data){
        this.code=code;
        this.msg=msg;
        this.data=data;
    }
    public Result(Integer code,String msg){
        this(code,msg,null);
    }

    @Override
    public String toString() {
        return "Result{" +
                "code=" + code +
                ", msg='" + msg + '\'' +
                ", data=" + data +
                '}';
    }
}
