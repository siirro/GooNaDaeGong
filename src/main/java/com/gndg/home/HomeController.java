package com.gndg.home;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
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
		
		return "home";
	}
	
	
	//홈컨트롤러 잠깐 임시로 YR
	@RequestMapping(value = "/manager", method=RequestMethod.GET)
	public String managerIndex2()throws Exception{
		return "managerboot/index";
	}
	
	@RequestMapping(value = "/manager2", method=RequestMethod.GET)
	public String managerIndex()throws Exception{
		return "manager/index";
	}
	
	@RequestMapping(value = "/pay", method=RequestMethod.GET)
	public String managerIndex3()throws Exception{
		return "pay";
	}
	//홈컨트롤러 잠깐 임시로 YR 끝

	
}
