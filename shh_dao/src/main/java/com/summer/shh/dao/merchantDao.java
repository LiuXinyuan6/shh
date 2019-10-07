package com.summer.shh.dao;

import com.summer.shh.entity.goods;
import com.summer.shh.entity.order;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("merchantDao")
public interface merchantDao {
    List<order> selectAll_no(String id_user);
    List<order> selectAll_yes(String id_user);
    void update_send(Integer id_order);
    void update_back(Integer id_order);
    List<goods> select(String id);
}
