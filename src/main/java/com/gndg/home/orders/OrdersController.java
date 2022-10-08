package com.gndg.home.orders;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.cart.CartDTO;
import com.gndg.home.member.MemberDTO;
import com.gndg.home.pay.PayDTO;
import com.gndg.home.pay.PayService;

@Controller
@RequestMapping("/order/*")
public class OrdersController {
	
	@Autowired
	private PayService payService;
	
	@Autowired
	private OrdersService ordersService;
	
	@GetMapping("checkout")
	public ModelAndView order(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		
		List<CartDTO> ar = ordersService.getOrderItem(memberDTO);
		mv.addObject("cart", ar);
		mv.addObject("member", memberDTO);
		mv.setViewName("order/checkout");
		
		return mv;
	}
	
	
	
	@PostMapping("pay")
	@ResponseBody
	public String addPay(PayDTO payDTO)throws Exception{
		
		int result = payService.addPay(payDTO);
		
		
		String jsonResult = "{\"result\":\""+result+"\"}";
		return jsonResult;
	}
	
	@PostMapping("orders")
	@ResponseBody
	public String addOrder(OrdersDTO ordersDTO, HttpSession session)throws Exception{
		
		int result = ordersService.addOrders(ordersDTO);
		session.setAttribute("ordersDTO", ordersDTO);

		String jsonResult = "{\"result\":\""+result+"\"}";
		return jsonResult;
	}
	
	@PostMapping("goodsOrder")
	@ResponseBody
	public String addGoodsOrder(GoodsOrdersDTO goodsorderDTO, HttpSession session)throws Exception{
		
		int result = ordersService.addGoodsOrder(goodsorderDTO);
		//session.setAttribute("goodsOrdersDTO", goodsorderDTO);

		String jsonResult = "{\"result\":\""+result+"\"}";
		return jsonResult;
	}
	
	
	@GetMapping("success")
	public ModelAndView goSuccess(OrdersDTO ordersDTO, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		ordersDTO = (OrdersDTO)session.getAttribute("ordersDTO");
		mv.addObject("ordersDTO", ordersDTO);
		mv.setViewName("order/success");
		return mv;
	}

}
