package com.gndg.home.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.util.Pager;

@Controller
@RequestMapping("/faq/*")
public class FaqController {
	
	@Autowired
	private FaqService faqService;
	
	@GetMapping("add")
	public String addFaq()throws Exception{
		return "faq/add";
	}
	
	@PostMapping("add")
	public String addFaq(FaqDTO faqDTO)throws Exception{
		int result = faqService.addFaq(faqDTO);
		return "redirect:./list";
	}
	
	@GetMapping("list")
	public ModelAndView getList(Pager pager, Long faq_cate)throws Exception {
		ModelAndView mv = new ModelAndView();
		
		List<FaqDTO> ar = faqService.getList(pager, faq_cate);
		
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("faq/list");
		
		return mv;
	}

}
