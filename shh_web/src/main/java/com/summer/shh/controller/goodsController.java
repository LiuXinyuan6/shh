package com.summer.shh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.summer.shh.biz.goodsBiz;
import com.summer.shh.biz.userBiz;
import com.summer.shh.entity.goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller("goodsController")
@RequestMapping("/goods")
public class goodsController {
    @Autowired
    private goodsBiz goodsBiz;
    @Autowired
    private userBiz userBiz;

    @RequestMapping("/list")
    public String List(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model, HttpServletRequest request)throws Exception{
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        request.setCharacterEncoding("utf-8");
        List<goods> goods = goodsBiz.getAll();
        //将用户信息放入PageInfo对象里
        PageInfo page = new PageInfo(goods,5);
        model.addAttribute("pageInfo", page);
        model.addAttribute("goodsList",goods);
        return "goods_list";
    }

    @RequestMapping("/to_add")
    public String toAdd(Map<String,Object> map){
        map.put("list", userBiz.getmerchant());
        map.put("goods",new goods());
        return "goods_add";
    }
    @RequestMapping("/add")
    public String add(goods goods){
        goodsBiz.add(goods);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_update",params = "id_goods")
    public String toUpdate(String id_goods,Map<String,Object> map){
        map.put("goods",goodsBiz.get(id_goods));
        return "goods_update";
    }
    @RequestMapping("/update")
    public String update(goods goods){
        goodsBiz.edit(goods);
        return "redirect:list";
    }
    @RequestMapping(value = "/remove",params = "id_goods")
    public String remove(String id_goods){
        goodsBiz.remove(id_goods);
        return "redirect:list";
    }

    @RequestMapping("/find")
    public String findList(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model, HttpServletRequest request)throws Exception{
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        request.setCharacterEncoding("utf-8");
        String name=request.getParameter("name");
        List<goods> goods = goodsBiz.getFind("'%"+name+"%'");
        //将用户信息放入PageInfo对象里
        PageInfo page = new PageInfo(goods,5);
        model.addAttribute("pageInfo", page);
        model.addAttribute("goodsList",goods);
        return "goods_list";
    }

    @RequestMapping("/find_merchant")
    public String findList_merchant(@RequestParam(value="pn",defaultValue="1")Integer pn, Model model, HttpServletRequest request)throws Exception{
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        request.setCharacterEncoding("utf-8");
        String name_merchant=request.getParameter("name_merchant");
        List<goods> goods = goodsBiz.getFind_merchant("'%"+name_merchant+"%'");
        //将用户信息放入PageInfo对象里
        PageInfo page = new PageInfo(goods,5);
        model.addAttribute("pageInfo", page);
        model.addAttribute("goodsList",goods);
        return "goods_list";
    }
}
