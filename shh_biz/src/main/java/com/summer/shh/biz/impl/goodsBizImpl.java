package com.summer.shh.biz.impl;

import com.summer.shh.biz.goodsBiz;
import com.summer.shh.entity.goods;
import com.summer.shh.dao.goodsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("goodsBiz")
public class goodsBizImpl implements goodsBiz {
    @Autowired
    private  goodsDao goodsDao;
    public void add(goods goods) {
        goodsDao.insert(goods);
    }

    public void remove(String id_goods) {
        goodsDao.delete(id_goods);
    }

    public void edit(goods goods) {
        goodsDao.update(goods);
    }

    public goods get(String id_goods) {
        goods goods=goodsDao.select(id_goods);
        return goods;
    }

    public List<goods> getAll() {
        List<goods> list=goodsDao.selectAll();
        return list;
    }

    public int getCount(){
        int count=goodsDao.selectCount();
        return count;
    }

    public List<goods> getFind(String name_goods) {
        List<goods> list=goodsDao.selectFind(name_goods);
        return list;
    }

    public List<goods> getFind_merchant(String name_merchant) {
        List<goods> list=goodsDao.selectFind_merchant(name_merchant);
        return list;
    }
}
