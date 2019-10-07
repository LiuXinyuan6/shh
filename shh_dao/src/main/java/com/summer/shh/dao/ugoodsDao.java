package com.summer.shh.dao;

import com.summer.shh.entity.goods;
import com.summer.shh.entity.order;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("ugoodsDao")
public interface ugoodsDao {
    void insert(order order);
    void delete(Integer id_order);
    void update(Integer id_order);
    order select(String id_goods);
    List<order> selectAll(String id_user);
    List<order> selectAll_yes(String id_user);
    List<order> selectAll_send(String id_user);
    List<order> selectAll_back(String id_user);
    List<order> selectAll_no(String id_user);
}
