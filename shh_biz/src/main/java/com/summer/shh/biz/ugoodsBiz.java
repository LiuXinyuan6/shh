package com.summer.shh.biz;

import com.summer.shh.entity.goods;
import com.summer.shh.entity.order;

import java.util.List;

public interface ugoodsBiz {
    void add(order order);
    void remove(Integer id_order);
    void removeSelected(String[] id_goods);
    void edit(Integer id_order);
    order get(String id_goods);
    List<order> getAll_no(String id_user);
    List<order> getAll_yes(String id_user);
    List<order> getAll_send(String id_user);
    List<order> getAll_back(String id_user);
    List<order> getAll(String id_user);
}
