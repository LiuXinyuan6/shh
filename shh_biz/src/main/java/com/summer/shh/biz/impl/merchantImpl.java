package com.summer.shh.biz.impl;
import com.summer.shh.biz.merchantBiz;
import com.summer.shh.dao.merchantDao;
import com.summer.shh.entity.goods;
import com.summer.shh.entity.order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("merchantBiz")
public class merchantImpl implements merchantBiz {
    @Autowired
    private merchantDao merchantDao;
    public List<order> getAll_no(String id_user) {
        List<order> list=merchantDao.selectAll_no(id_user);
        return list;
    }

    public List<order> getAll_yes(String id_user) {
        List<order> list=merchantDao.selectAll_yes(id_user);
        return list;
    }

    public void edit_send(Integer id_order) {
        merchantDao.update_send(id_order);
    }

    public void edit_back(Integer id_order) {
        merchantDao.update_back(id_order);
    }

    public List<goods> get(String id) {
        List<goods> list=merchantDao.select(id);
        return list;
    }
}
