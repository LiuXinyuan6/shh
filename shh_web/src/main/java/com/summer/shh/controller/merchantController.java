package com.summer.shh.controller;

import com.summer.shh.biz.goodsBiz;
import com.summer.shh.biz.merchantBiz;
import com.summer.shh.entity.goods;
import com.summer.shh.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller("merchantController")
@RequestMapping("/merchant")
public class merchantController {
    @Autowired
    private merchantBiz merchantBiz;
    @Autowired
    private goodsBiz goodsBiz;
    @RequestMapping("/list_no")
    public String list_no(@RequestParam(value="id") String id,Map<String, Object> map){
        map.put("list",merchantBiz.getAll_no(id));
        return "merchant_list_no";
    }

    @RequestMapping("/list_yes")
    public String list_yes(@RequestParam(value="id") String id,Map<String, Object> map){
        map.put("list",merchantBiz.getAll_yes(id));
        return "merchant_list_yes";
    }

    @RequestMapping("/send")
    public String send(@RequestParam(value = "id_order") Integer id_order,@RequestParam(value = "id") String id){
        merchantBiz.edit_send(id_order);
        return "redirect:list_no?id="+id;
    }

    @RequestMapping("/back")
    public String back(@RequestParam(value = "id_order") Integer id_order,@RequestParam(value = "id") String id){
        merchantBiz.edit_back(id_order);
        return "redirect:list_no?id="+id;
    }

    @RequestMapping("/list_goods")
    public String list_goods(@RequestParam(value = "id") String id,Map<String,Object> map){
        map.put("list",merchantBiz.get(id));
        return "merchant_goodsList";
    }

    @RequestMapping(value = "/toAddGoods")
    public String toAdd(Map<String,Object> map){
        map.put("goods",new goods());
        return "merchant_goodsAdd";
    }

    @RequestMapping("/goodsAdd")
    public String add(goods goods,HttpSession session){
        user user=(user)session.getAttribute("user");
        goods.setId_merchant(user.getId());
        goodsBiz.add(goods);
        String id=user.getId();
        return "redirect:list_goods?id="+id;
    }

    @RequestMapping(value = "/to_update",params = "id_goods")
    public String toUpdate(String id_goods,Map<String,Object> map){
        map.put("goods",goodsBiz.get(id_goods));
        return "merchant_goodsUpdate";
    }

    @RequestMapping("/goodsUpdate")
    public String update(goods goods,HttpSession session){
        user user=(user)session.getAttribute("user");
        goodsBiz.edit(goods);
        String id=user.getId();
        System.out.println(id);
        return "redirect:list_goods?id="+id;
    }
    @RequestMapping(value = "/remove",params = "id_goods")
    public String remove(String id_goods,HttpSession session){
        user user=(user)session.getAttribute("user");
        goodsBiz.remove(id_goods);
        String id=user.getId();
        return "redirect:list_goods?id="+id;
    }

}
