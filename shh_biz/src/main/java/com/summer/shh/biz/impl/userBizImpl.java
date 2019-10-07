package com.summer.shh.biz.impl;

import com.summer.shh.biz.userBiz;
import com.summer.shh.entity.user;
import com.summer.shh.dao.userDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userBiz")
public class userBizImpl implements userBiz{
    @Autowired
    private  userDao userDao;
    public void add(user user) {
        userDao.insert(user);
    }

    public void remove(String name) {
        userDao.delete(name);
    }

    public void edit(user user) {
        userDao.update(user);
    }

    public user get(String id) {
        user user=userDao.select(id);
        return user;
    }

    public List<user> getAll() {
        List<user> list=userDao.selectAll();
        return list;
    }

    public List<user> getmerchant() {
        List<user> list=userDao.select_merchant();
        return list;
    }

    public List<user> get_find(String id) {
        List<user> list=userDao.select_find(id);
        return list;
    }

    public int getID(String id) {
        int i=userDao.selectID(id);
        return i;
    }
}
