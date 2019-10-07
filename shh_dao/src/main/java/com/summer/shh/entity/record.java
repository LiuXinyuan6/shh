package com.summer.shh.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class record {
    private Integer id_record;
    private Integer id_order;
    private String state_record;
    private String remark_record;
    @DateTimeFormat(pattern = "yyyy-MM-dd hh:mm")
    private Date time_record;
    private order order;

    public Integer getId_record() {
        return id_record;
    }

    public void setId_record(Integer id_record) {
        this.id_record = id_record;
    }

    public Integer getId_order() {
        return id_order;
    }

    public void setId_order(Integer id_order) {
        this.id_order = id_order;
    }

    public String getState_record() {
        return state_record;
    }

    public void setState_record(String state_record) {
        this.state_record = state_record;
    }

    public String getRemark_record() {
        return remark_record;
    }

    public void setRemark_record(String remark_record) {
        this.remark_record = remark_record;
    }

    public Date getTime_record() {
        return time_record;
    }

    public void setTime_record(Date time_record) {
        this.time_record = time_record;
    }

    public com.summer.shh.entity.order getOrder() {
        return order;
    }

    public void setOrder(com.summer.shh.entity.order order) {
        this.order = order;
    }
}
