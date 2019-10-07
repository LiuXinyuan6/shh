package com.summer.shh.biz;

import com.summer.shh.entity.user;

public interface globalBiz {
    user login(String id, String password);
    void changePassword(user user);
}
