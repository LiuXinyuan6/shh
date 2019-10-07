package com.summer.shh.entity;

public class goods {
    private String id_goods;
    private String name_goods;
    private Double price_goods;
    private String type_goods;
    private String id_merchant;
    private String name;
    private String name_merchant;
    private String address;
    private String phone;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getName_merchant() {
        return name_merchant;
    }

    public void setName_merchant(String name_merchant) {
        this.name_merchant = name_merchant;
    }

    private user user;

    public String getName() {
        return name;
    }

    public void setName(String name_merchant) {
        this.name = name_merchant;
    }

    public String getId_goods() {
        return id_goods;
    }

    public void setId_goods(String id_goods) {
        this.id_goods = id_goods;
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

    public com.summer.shh.entity.user getUser() {
        return user;
    }

    public void setUser(com.summer.shh.entity.user user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "goods{" +
                "id_goods='" + id_goods + '\'' +
                ", name_goods='" + name_goods + '\'' +
                ", price_goods=" + price_goods +
                ", type_goods='" + type_goods + '\'' +
                ", id_merchant='" + id_merchant + '\'' +
                ", name='" + name + '\'' +
                ", name_merchant='" + name_merchant + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", user=" + user +
                '}';
    }
}
