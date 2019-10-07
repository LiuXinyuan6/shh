package com.summer.shh.biz.impl;

import com.summer.shh.biz.globalBiz;
import com.summer.shh.dao.userDao;
import com.summer.shh.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("globalBiz")
public class globalBizImpl implements globalBiz{
    @Autowired
    private userDao userDao;
    public user login(String id, String password) {
        user user = userDao.select(id);
        if(user!=null&&user.getPassword().equals(password)){
            return  user;
        }
        return null;
    }

    public void changePassword(user user) {
        userDao.update_password(user);
    }
}
