package com.summer.shh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.summer.shh.biz.userBiz;
import com.summer.shh.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller("adminController")
@RequestMapping("/admin")
public class adminController {
    @Autowired
    private userBiz userBiz;
    @RequestMapping("/list")
    public String List(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model, HttpServletRequest request)throws Exception{
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        request.setCharacterEncoding("utf-8");
        List<user> user = userBiz.getAll();
        //将用户信息放入PageInfo对象里
        PageInfo page = new PageInfo(user,5);
        model.addAttribute("pageInfo", page);
        model.addAttribute("userList",user);
        return "admin_list";
    }

    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("user",new user());
        return "admin_add";
    }
    @RequestMapping("/add")
    public String add(user user){
        userBiz.add(user);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_update",params = "id")
    public String toUpdate(String id,Map<String,Object> map){
        map.put("user",userBiz.get(id));
        return "admin_update";
    }
    @RequestMapping("/update")
    public String update(user user){
        userBiz.edit(user);
        return "redirect:list";
    }
    @RequestMapping(value = "/remove",params = "name")
    public String remove(String name){
        userBiz.remove(name);
        return "redirect:list";
    }



    @RequestMapping("/find")
    public String findList(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model, HttpServletRequest request)throws Exception{
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        request.setCharacterEncoding("utf-8");
        String id=request.getParameter("id");
        List<user> user = userBiz.get_find("'%"+id+"%'");
        //将用户信息放入PageInfo对象里
        PageInfo page = new PageInfo(user,5);
        model.addAttribute("pageInfo", page);
        model.addAttribute("userList",user);
        return "admin_list";
    }

}
