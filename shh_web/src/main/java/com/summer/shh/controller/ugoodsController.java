package com.summer.shh.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.summer.shh.biz.goodsBiz;
import com.summer.shh.biz.ugoodsBiz;
import com.summer.shh.biz.userBiz;
import com.summer.shh.entity.goods;
import com.summer.shh.entity.order;
import com.summer.shh.entity.user;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.misc.Request;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

@Controller("ugoodsController")
@RequestMapping("/ugoods")
public class ugoodsController {
    @Autowired
    private goodsBiz goodsBiz;
    @Autowired
    private ugoodsBiz ugoodsBiz;
    @Autowired
    private userBiz userBiz;




    /**
     * 分页查询用户信息
     * @param pn 默认从第一页开始  请求参数
     * @param model
     * @return
     */
    @RequestMapping("/list")
    public String getList(@RequestParam(value="pn",defaultValue="1")Integer pn,Model model){
        //从第一条开始 每页查询五条数据
        PageHelper.startPage(pn, 5);
        List<goods> goods = goodsBiz.getAll();
        //将用户信息放入PageInfo对象里
        PageInfo page = new PageInfo(goods,5);
        model.addAttribute("pageInfo", page);
        model.addAttribute("goodsList",goods);
        return "ugoods_list";
    }

    @RequestMapping("/find")
    public @ResponseBody List<goods> findList( HttpServletRequest request)throws Exception{
        request.setCharacterEncoding("utf-8");
        String name_goods=request.getParameter("name_goods");
        List<goods> goods = goodsBiz.getFind("'%"+name_goods+"%'");
        return goods;
    }


    //添加至购物车
    @RequestMapping(value = "/to_add")
    public String toAdd(HttpSession session,@RequestParam(value = "id_goods") String id_goods,Map<String,Object> map,order order){
        user user=(user)session.getAttribute("user");
        order.setId_user(user.getId());
        order.setState_order("待支付");
        map.put("order",id_goods);
        ugoodsBiz.add(order);
        return "redirect:list";
    }

    @RequestMapping(value = "/order_list")
    public String order_list(@RequestParam(value = "id_user") String id_user,Map<String,Object> map){
        map.put("list_order",ugoodsBiz.getAll(id_user));
        return "ugoods_order_list";
    }

    @RequestMapping(value = "/order_yeslist")
    public String order_yeslist(@RequestParam(value = "id_user") String id_user,Map<String,Object> map){
        map.put("list_order",ugoodsBiz.getAll_yes(id_user));
        return "ugoods_order_list";
    }

    @RequestMapping(value = "/order_nolist")
    public String order_nolist(@RequestParam(value = "id_user") String id_user,Map<String,Object> map){
        map.put("list_order",ugoodsBiz.getAll_no(id_user));
        return "ugoods_order_list";
    }

    @RequestMapping(value = "/order_sendlist")
    public String order_sendlist(@RequestParam(value = "id_user") String id_user,Map<String,Object> map){
        map.put("list_order",ugoodsBiz.getAll_send(id_user));
        return "ugoods_order_list";
    }

    @RequestMapping(value = "/order_backlist")
    public String order_backlist(@RequestParam(value = "id_user") String id_user,Map<String,Object> map){
        map.put("list_order",ugoodsBiz.getAll_back(id_user));
        return "ugoods_order_list";
    }

    @RequestMapping(value = "/to_remove")
    public String toRemove(@RequestParam(value = "id_order") Integer id_order){
        ugoodsBiz.remove(id_order);
        return "ugoods_order_list";
    }

    @RequestMapping(value = "/to_removeSelected")
    public String toRemoveSelected(HttpServletRequest request){
        String[] id_goods=request.getParameterValues("uid");
        ugoodsBiz.removeSelected(id_goods);
        return "ugoods_order_list";
    }

    @RequestMapping(value = "/to_buy")
    public String toBuy(HttpSession session,@RequestParam(value = "id_goods") String id_goods,Map<String,Object> map,order order){
        user user=(user)session.getAttribute("user");
        order.setId_user(user.getId());
        order.setState_order("已支付");
        map.put("order",id_goods);
        ugoodsBiz.add(order);
        return "redirect:list";
    }

    @RequestMapping(value = "/to_orderBuy")
    public String toorderBuy(@RequestParam(value = "id_order") Integer id_order){
        ugoodsBiz.edit(id_order);
        return "ugoods_order_list";
    }

}
