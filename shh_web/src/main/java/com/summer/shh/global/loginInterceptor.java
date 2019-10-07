package com.summer.shh.global;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class loginInterceptor implements HandlerInterceptor {

    private List<String> exceptUrls;

    public List<String> getExceptUrls() {
        return exceptUrls;
    }

    public void setExceptUrls(List<String> exceptUrls) {
        this.exceptUrls = exceptUrls;
    }


    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {

        String url = httpServletRequest.getRequestURI();
        if(url.toLowerCase().indexOf("login")>=0){
            return true;
        }

        if(url.toLowerCase().indexOf("ugoods/list")>=0){
            return true;
        }

        if(url.toLowerCase().indexOf("ugoods/find")>=0){
            return true;
        }

        if(url.toLowerCase().indexOf("register")>=0){
            return true;
        }

        HttpSession session = httpServletRequest.getSession();
        if(session.getAttribute("user")!=null){
            return true;
        }
        httpServletResponse.sendRedirect("/to_login");
        return false;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
