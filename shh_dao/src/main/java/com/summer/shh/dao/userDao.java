package com.summer.shh.dao;

import com.summer.shh.entity.user;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public interface userDao {
    void insert(user user);
    void delete(String name);
    void update(user user);
    void update_password(user user);
    user select(String id);
    List<user> selectAll();
    int selectID(String id);
    List<user> select_find(String id);
    List<user> select_merchant();
}
