package com.gndg.home.interceptor;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.gndg.home.member.MemberDTO;

public class AdminInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		MemberDTO memberDTO = (MemberDTO)request.getSession().getAttribute("member");
		boolean check=false;
		if(memberDTO==null||memberDTO.getUser_grade().equals("1")) {
			check = false;
		} else if(memberDTO.getUser_grade().equals("2")) {
			check = true;
		} else {
			check = false;
		}
		
		
		if(!check) {
			request.setAttribute("message", "권한이 없습니다");
			request.setAttribute("url", "../../../../../");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/result.jsp");
			view.forward(request, response);
			
		}
		
		return check;
		
		
	}

}
