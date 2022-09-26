package com.gndg.home.qna;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public int addQna(QnaDTO qnaDTO)throws Exception{
		int result = qnaService.addQna(qnaDTO);
		
		return result;
		
	}
	
	
	
	

}
