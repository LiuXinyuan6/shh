package com.summer.shh.controller;

import com.summer.shh.biz.globalBiz;
import com.summer.shh.biz.userBiz;
import com.summer.shh.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

@Controller("globalController")
public class globalController {
    @Autowired
    private globalBiz globalBiz;
    @Autowired
    private userBiz userBiz;

    @RequestMapping("/to_login")
    public String toLogin(){
        return "login";
    }
    @RequestMapping("/login")
    public String login(HttpSession session, @RequestParam String id, @RequestParam String password){
        user user = globalBiz.login(id,password);
        if(user!=null)
        {
            session.setAttribute("user",user);
            return "self";
        }
        else
            return "redirect:to_login";
    }
    //登录后的页面
    @RequestMapping("/self")
    public String self(){
        return  "self";
    }
    @RequestMapping("/quit")
    public String quit(HttpSession session){
        session.setAttribute("user",null);
        return "redirect:to_login";
    }

    @RequestMapping("/to_change_password")
    public String toChangePassword(){
        return "change_password";
    }

    @RequestMapping("/change_password")
    public String changePassword(HttpSession session, @RequestParam String old, @RequestParam String new1 ,@RequestParam String new2){
        user user = (user)session.getAttribute("user");
        if(user.getPassword().equals(old)){
            if(new1.equals(new2)){
                user.setPassword(new1);
                globalBiz.changePassword(user);
                    return "redirect:quit";
            }
        }
        return "redirect:to_change_password";
    }

    @RequestMapping("/to_register")
    public String  toRegister(Map<String,Object> map){
        map.put("user",new user());
        return "register";
    }

    @RequestMapping("register")
    public String register(user user){
        int i= userBiz.getID(user.getId());
        if(i>0)
                return "redirect:to_register";
        else {
            user.setCard("用户");
            userBiz.add(user);
            return "redirect:to_login";
        }
    }


}
