package com.summer.shh.biz;

import com.summer.shh.entity.goods;
import com.summer.shh.entity.order;

import java.util.List;

public interface merchantBiz {
    List<order> getAll_no(String id_user);
    List<order> getAll_yes(String id_user);
    void edit_send(Integer id_order);
    void edit_back(Integer id_order);
    List<goods> get(String id);
}
