package com.summer.shh.entity;

public class order {
    private Integer id_order;
    private String id_goods;
    private String id_user;
    private String name_user;
    private String state_order;
    private user user;
    private goods goods;
    private String name_goods;
    private Double price_goods;
    private String type_goods;
    private String id_merchant;
    private String name;

    public String getName_user() {
        return name_user;
    }

    public void setName_user(String name_user) {
        this.name_user = name_user;
    }

    public String getState_order() {
        return state_order;
    }

    public void setState_order(String state_order) {
        this.state_order = state_order;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName_goods() {
        return name_goods;
    }

    public void setName_goods(String name_goods) {
        this.name_goods = name_goods;
    }

    public Double getPrice_goods() {
        return price_goods;
    }

    public void setPrice_goods(Double price_goods) {
        this.price_goods = price_goods;
    }

    public String getType_goods() {
        return type_goods;
    }

    public void setType_goods(String type_goods) {
        this.type_goods = type_goods;
    }

    public String getId_merchant() {
        return id_merchant;
    }

    public void setId_merchant(String id_merchant) {
        this.id_merchant = id_merchant;
    }

    public Integer getId_order() {
        return id_order;
    }

    public void setId_order(Integer id_order) {
        this.id_order = id_order;
    }

    public String getId_goods() {
        return id_goods;
    }

    public void setId_goods(String id_goods) {
        this.id_goods = id_goods;
    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }



    public com.summer.shh.entity.user getUser() {
        return user;
    }

    public void setUser(com.summer.shh.entity.user user) {
        this.user = user;
    }

    public com.summer.shh.entity.goods getGoods() {
        return goods;
    }

    public void setGoods(com.summer.shh.entity.goods goods) {
        this.goods = goods;
    }
}
