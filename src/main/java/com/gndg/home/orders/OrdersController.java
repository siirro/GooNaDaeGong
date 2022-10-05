package com.gndg.home.orders;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.member.MemberDTO;

@Controller
@RequestMapping("/order/*")
public class OrdersController {
	
	@GetMapping("checkout")
	public ModelAndView order(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		
		mv.addObject("member", memberDTO);
		mv.setViewName("order/checkout");
		
		return mv;
	}

}
