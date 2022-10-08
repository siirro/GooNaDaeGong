package com.gndg.home.cancel;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.member.MemberDTO;
import com.gndg.home.orders.OrdersDTO;
import com.gndg.home.qna.QnaService;

@Controller
public class CancelController {
	
	@Autowired
	private QnaService qnaService;
	@Autowired
	private CancelService cancelService;

	@GetMapping("cancel/inquiry")
	public ModelAndView goCancel(HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		mv.addObject("member", memberDTO);
		List<OrdersDTO> ar = qnaService.getOrders(memberDTO);
		mv.addObject("ordersDTO", ar);
		mv.setViewName("mypage/cancel");
		
		return mv;
	}
	
	@PostMapping("cancel/inquiry")
	public ModelAndView addCancel(CancelDTO cancelDTO)throws Exception{
		String message = "취소 신청에 실패했습니다. 다시 시도해주세요";
		
		cancelDTO.getCan_num();
		
		int result = cancelService.addCancel(cancelDTO);
		
		ModelAndView mv = new ModelAndView();
		
		
		if(result!=0) {
			message = "문의가 등록되었습니다. 처리에는 영업일 기준 1~3일이 소요됩니다.";
		}
		
				
		mv.addObject("url", "../../../../");
		mv.addObject("message", message);
		mv.setViewName("common/result");
		
		return mv;
	}

}
