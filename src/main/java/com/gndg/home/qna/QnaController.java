package com.gndg.home.qna;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/qna/*")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@GetMapping("inquiry")
	public String addQna()throws Exception {
		
		return "qna/inquiry";
	}
	
	//qna 등록버튼 누름
	@PostMapping("inquiry")
	public ModelAndView addQna(QnaDTO qnaDTO, MultipartFile [] multipartFiles, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		int result = qnaService.addQna(qnaDTO, multipartFiles, session.getServletContext());
		
		mv.setViewName("index");
		return mv;
		
	}
	
	
	
	

}
