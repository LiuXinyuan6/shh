package com.summer.shh.biz;

import com.summer.shh.entity.goods;

import java.util.List;

public interface goodsBiz {
    void add(goods goods);
    void remove(String id_goods);
    void edit(goods goods);
    goods get(String id_goods);
    List<goods> getAll();
    List<goods> getFind(String name_goods);
    List<goods> getFind_merchant(String name_merchant);
    int getCount();
}
