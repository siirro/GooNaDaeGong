package com.gndg.home;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.orders.OrdersService;
import com.gndg.home.qna.QnaDTO;
import com.gndg.home.qna.QnaService;
import com.gndg.home.util.Pager;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private OrdersService ordersService;
	@Autowired
	private QnaService qnaService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	
	
	//홈컨트롤러 잠깐 임시로 YR
	@RequestMapping(value = "/manager", method=RequestMethod.GET)
	public ModelAndView managerIndex2(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		Long orderCount = ordersService.countNewOrder();
		Long cancelCount = ordersService.countNewCancel();
		Long exchangeCount = ordersService.countNewExchange();
		Long refundCount = ordersService.countNewRefund();
		Long qnaCount = ordersService.countNewQna();
		mv.addObject("order", orderCount);
		mv.addObject("cancel", cancelCount);
		mv.addObject("exchange", exchangeCount);
		mv.addObject("refund", refundCount);
		mv.addObject("qna", qnaCount);
		mv.setViewName("manager/index");
		String qna_status = "대기";		
		List<QnaDTO> ar = qnaService.getList(pager, qna_status);
		mv.addObject("qnalist", ar);
		
		mv.addObject("pager", pager);
		
		return mv;
	}
	

	
	@RequestMapping(value = "/pay", method=RequestMethod.GET)
	public String managerIndex3()throws Exception{
		return "pay";
	}
	//홈컨트롤러 잠깐 임시로 YR 끝

	
}
