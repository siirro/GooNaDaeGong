package com.gndg.home.interceptor;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class LoginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("member");

		if(obj != null) {
			//System.out.println("로그인 했음");
			return true;
		}else {
			//System.out.println("로그인 안함");
			//response.sendRedirect("../../../../../../../member/login.iu");
			
			request.setAttribute("message", "로그인이 필요합니다");
			request.setAttribute("url", "../../../../../../member/login");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/views/common/result.jsp");
			view.forward(request, response);
			return false;
		}
		
		
	}
	
	

}
