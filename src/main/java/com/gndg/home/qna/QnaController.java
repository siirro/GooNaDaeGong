package com.gndg.home.qna;

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

import com.gndg.home.member.MemberDTO;
import com.gndg.home.orders.OrdersDTO;

@Controller
@RequestMapping("/qna/*")
public class QnaController {
	
	@Autowired
	private QnaService qnaService;
	
	@PostMapping("fileDelete")
	@ResponseBody
	public String deleteNoticeFile(QnaFileDTO qnaFileDTO, HttpSession session)throws Exception{
		int result = qnaService.deleteQnaFile(qnaFileDTO, session.getServletContext());
		String jsonResult = "{\"result\":\""+result+"\"}";
		return jsonResult;
	}
	
	@GetMapping("inquiryUpdate")
	public ModelAndView updateQna(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		qnaDTO = qnaService.getDetail(qnaDTO);
		mv.addObject("qnaDTO", qnaDTO);
		mv.setViewName("qna/inquiryUpdate");
		return mv;
	}
	
	@PostMapping("inquiryUpdate")
	public ModelAndView updateQna(QnaDTO qnaDTO, MultipartFile [] multipartFiles, HttpSession session)throws Exception{
		int result = qnaService.updateQna(qnaDTO);
		
		ModelAndView mv = new ModelAndView();
		String message = "문의 수정 실패";
		if(result!=0) {
			message = "문의 내용이 성공적으로 수정되었습니다.";
		}
		
				
//		mv.addObject("url", "./detail?qna_num="+qnaDTO.getQna_num());
		mv.addObject("url", "../mypage/myQNA");
		mv.addObject("message", message);
		mv.setViewName("common/result");
		
		return mv;
		
	}
	
	@GetMapping("inquiry")
	public ModelAndView addQna(HttpSession session)throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		mv.addObject("member", memberDTO);
		
		List<OrdersDTO> ar = qnaService.getOrders(memberDTO);
		mv.addObject("ordersDTO", ar);
		
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
		
		String message = "문의 등록이 실패했습니다. 다시 시도해주세요";
		
		if(result!=0) {
			message = "문의가 등록되었습니다. 답변에는 영업일 기준 1~3일이 소요됩니다.";
		}
		
				
		mv.addObject("url", "../mypage/myQNA");
		mv.addObject("message", message);
		mv.setViewName("common/result");
		
		return mv;
		
	}
	
	
	
	

}
