package com.gndg.home.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gndg.home.member.MemberDAO;

public class MemberInterceptor extends HandlerInterceptorAdapter{
    
    @Autowired
    private MemberDAO memberDAO;
    
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        HttpSession session = request.getSession();
        Object obj =  session.getAttribute("member");
        
        if(obj != null) {
            return true;
        }else {
            response.sendRedirect("../../../../../../member/login");
            return false;
        }
    }

}
