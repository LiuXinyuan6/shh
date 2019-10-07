package com.summer.shh.biz;

import com.summer.shh.entity.user;

import java.util.List;

public interface userBiz {
    void add(user user);
    void remove(String name);
    void edit(user user);
    user get(String id);
    List<user> get_find(String id);
    List<user> getAll();
    int getID(String id);
    List<user> getmerchant();
}
