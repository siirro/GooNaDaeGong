package com.gndg.home.faq;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.util.Pager;

@Controller
@RequestMapping("/faq/*")
public class FaqController {
	
	@Autowired
	private FaqService faqService;
	
	@PostMapping("fileDelete")
	@ResponseBody
	public String deleteFaqFile(FaqFileDTO faqFileDTO, HttpSession session)throws Exception{
		int result = faqService.deleteFaqFile(faqFileDTO, session.getServletContext());
		String jsonResult = "{\"result\":\""+result+"\"}";
		return jsonResult;
	}
	
	@GetMapping("delete")
	public String deleteFaq(FaqDTO faqDTO, HttpSession session)throws Exception{
		int result = faqService.deleteFaq(faqDTO, session.getServletContext());
		return "redirect:./list";
	}
	
	@GetMapping("update")
	public ModelAndView updateFaq(FaqDTO faqDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		faqDTO = faqService.getDetail(faqDTO);
		mv.addObject("detail", faqDTO);
		mv.setViewName("faq/update");
		return mv;
	}
	
	@PostMapping("update")
	public String updateFaq(FaqDTO faqDTO, MultipartFile [] multipartFiles, HttpSession session)throws Exception{
		
		int result = faqService.updateFaq(faqDTO, multipartFiles, session.getServletContext());
		return "redirect:./detail?faq_num="+faqDTO.getFaq_num();
	}
	
	@GetMapping("add")
	public String addFaq()throws Exception{
		return "faq/add";
	}
	
	@PostMapping("add")
	public String addFaq(FaqDTO faqDTO, MultipartFile [] multipartFiles, HttpSession session)throws Exception{
		int result = faqService.addFaq(faqDTO, multipartFiles, session.getServletContext());
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
	
	@GetMapping("detail")
	public ModelAndView getDetail(FaqDTO faqDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		faqDTO = faqService.getDetail(faqDTO);
		
		mv.addObject("detail", faqDTO);
		mv.setViewName("faq/detail");
		return mv;
	}
	

}
