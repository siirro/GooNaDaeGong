package com.gndg.home.qna;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.member.MemberDTO;

@Controller
@RequestMapping("/qna/*")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@GetMapping("inquiry")
	public ModelAndView addQna(HttpSession session)throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		
		mv.addObject("member", memberDTO);
		
//		QnaDTO qnaDTO =  (QnaDTO)session.getAttribute("member");
//		qnaDTO.setUser_id(qnaDTO.getUser_id);
		mv.setViewName("qna/inquiry");
		return mv;
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
