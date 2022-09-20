package com.gndg.home.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/manager/*")
public class ManagerController {
	
	@RequestMapping(value = "itemadd", method=RequestMethod.GET)
	public String managerIndex2()throws Exception{
		
		return "managerboot/add";
	}
	
	@RequestMapping(value = "qna", method=RequestMethod.GET)
	public String managerQNA()throws Exception{
		
		return "managerboot/qnalist";
	}

}
