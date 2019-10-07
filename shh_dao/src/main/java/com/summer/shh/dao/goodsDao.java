package com.summer.shh.dao;

import com.summer.shh.entity.goods;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("goodsDao")
public interface goodsDao {
    void insert(goods goods);
    void delete(String id_goods);
    void update(goods goods);
    goods select(String id_goods);
    List<goods> selectAll();
    List<goods> selectFind(@Param(value="name_goods")String name_goods);
    List<goods> selectFind_merchant(@Param(value="name_merchant")String name_merchant);
    int selectCount();
}
