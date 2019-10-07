package com.summer.shh.biz.impl;

import com.summer.shh.biz.ugoodsBiz;
import com.summer.shh.dao.ugoodsDao;
import com.summer.shh.entity.goods;
import com.summer.shh.entity.order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("ugoodsBiz")
public class ugoodsBizImpl implements ugoodsBiz {
    @Autowired
    private ugoodsDao ugoodsDao;
    public void add(order order) {
        ugoodsDao.insert(order);
    }

    public void remove(Integer id_order) {
        ugoodsDao.delete(id_order);
    }

    public void removeSelected(String[] id_goods){
        for (String id:id_goods) {
            ugoodsDao.delete(Integer.parseInt(id));
        }
    }

    public void edit(Integer id_order) {
        ugoodsDao.update(id_order);
    }

    public order get(String id_goods) {
        order order=ugoodsDao.select(id_goods);
        return order;
    }

    public List<order> getAll_no(String id_user) {
        List<order> list=ugoodsDao.selectAll_no(id_user);
        return list;
    }

    public List<order> getAll_yes(String id_user) {
        List<order> list=ugoodsDao.selectAll_yes(id_user);
        return list;
    }

    public List<order> getAll_send(String id_user) {
        List<order> list=ugoodsDao.selectAll_send(id_user);
        return list;
    }

    public List<order> getAll_back(String id_user) {
        List<order> list=ugoodsDao.selectAll_back(id_user);
        return list;
    }

    public List<order> getAll(String id_user) {
        List<order> list=ugoodsDao.selectAll(id_user);
        return list;
    }
}
