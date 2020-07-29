package com.hbsoft.bean;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Result<T> {
    private Integer code;
    private String msg;
    private T data;
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
