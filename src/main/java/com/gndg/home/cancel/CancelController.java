package com.gndg.home.cancel;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.member.MemberDTO;
import com.gndg.home.orders.OrdersDTO;
import com.gndg.home.orders.OrdersService;
import com.gndg.home.qna.QnaService;

@Controller
public class CancelController {
	
	@Autowired
	private QnaService qnaService;
	@Autowired
	private CancelService cancelService;
	@Autowired
	private OrdersService ordersService;
	
	
	@GetMapping("refund/inquiry")
	public ModelAndView goRefund(@RequestParam("merchant_uid") Long merchant_uid, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		OrdersDTO ordersDTO = new OrdersDTO();
		ordersDTO.setMerchant_uid(merchant_uid);
		Long result = cancelService.ableCS(ordersDTO);
		
		
		if(result==0) {
			mv.setViewName("mypage/refund");
		} else {
			String message = "이미 처리중인 주문입니다.";
			mv.addObject("url", "../mypage/myOrder");
			mv.addObject("message", message);
			mv.setViewName("common/result");
		}

		return mv;
		
//		ModelAndView mv = new ModelAndView();
//		
//		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
//		mv.addObject("member", memberDTO);
//		List<OrdersDTO> ar = qnaService.getOrders(memberDTO);
//		mv.addObject("ordersDTO", ar);
//		mv.setViewName("mypage/refund");
//		
//		return mv;
	}
	
	@PostMapping("refund/inquiry")
	public ModelAndView addExchange(RefundDTO refundDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		String message = "반품 신청에 실패했습니다. 다시 시도해주세요";
		RefundDTO refundDTO2 = new RefundDTO();
		refundDTO2 = cancelService.getDetailR(refundDTO);
		
		
		if(refundDTO2==null) {
			int result = cancelService.addRefund(refundDTO);
			OrdersDTO ordersDTO = new OrdersDTO();
			ordersDTO.setMerchant_uid(refundDTO.getMerchant_uid());
			ordersDTO.setOrd_status("반품신청");
			ordersService.updateStatus(ordersDTO);
			if(result!=0) {
				message = "문의가 등록되었습니다. 처리에는 영업일 기준 1~3일이 소요됩니다.";
			}
		} else {
			message = "이미 반품 신청한 주문입니다.";
			mv.addObject("url", "../mypage/myOrder");
			mv.addObject("message", message);
			mv.setViewName("common/result");
			return mv;
			
		}
		
		mv.addObject("url", "../mypage/myOrder");
		mv.addObject("message", message);
		mv.setViewName("common/result");
		
		return mv;
		
		
	}
	
	
	
	@GetMapping("exchange/inquiry")
	public ModelAndView goExchange(@RequestParam("merchant_uid") Long merchant_uid, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		OrdersDTO ordersDTO = new OrdersDTO();
		ordersDTO.setMerchant_uid(merchant_uid);
		Long result = cancelService.ableCS(ordersDTO);
		
		
		if(result==0) {
			mv.setViewName("mypage/exchange");
		} else {
			String message = "이미 처리중인 주문입니다.";
			mv.addObject("url", "../mypage/myOrder");
			mv.addObject("message", message);
			mv.setViewName("common/result");
		}

		return mv;
		
//		
//		ModelAndView mv = new ModelAndView();
//		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
//		mv.addObject("member", memberDTO);
//		List<OrdersDTO> ar = qnaService.getOrders(memberDTO);
//		mv.addObject("ordersDTO", ar);
//		mv.setViewName("mypage/exchange");
//		
//		return mv;
	}
	
	@PostMapping("exchange/inquiry")
	public ModelAndView addExchange(ExchangeDTO exchangeDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		String message = "교환 신청에 실패했습니다. 다시 시도해주세요";
		ExchangeDTO exchangeDTO2 = new ExchangeDTO();
		exchangeDTO2 = cancelService.getDetailE(exchangeDTO);
		
		
		if(exchangeDTO2==null) {
			int result = cancelService.addExchange(exchangeDTO);
			OrdersDTO ordersDTO = new OrdersDTO();
			ordersDTO.setMerchant_uid(exchangeDTO.getMerchant_uid());
			ordersDTO.setOrd_status("교환신청");
			ordersService.updateStatus(ordersDTO);
			if(result!=0) {
				message = "문의가 등록되었습니다. 처리에는 영업일 기준 1~3일이 소요됩니다.";
			}
		} else {
			message = "이미 교환 신청한 주문입니다.";
			mv.addObject("url", "../mypage/myOrder");
			mv.addObject("message", message);
			mv.setViewName("common/result");
			return mv;
			
		}
		
		mv.addObject("url", "../mypage/myOrder");
		mv.addObject("message", message);
		mv.setViewName("common/result");
		
		return mv;
		
		
	}

	@GetMapping("cancel/inquiry")
	public ModelAndView goCancel(@RequestParam("merchant_uid") Long merchant_uid, HttpSession session)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		OrdersDTO ordersDTO = new OrdersDTO();
		ordersDTO.setMerchant_uid(merchant_uid);
		Long result = cancelService.ableCS(ordersDTO);
		
		
		if(result==0) {
			mv.setViewName("mypage/cancel");
		} else {
			String message = "이미 처리중인 주문입니다.";
			mv.addObject("url", "../mypage/myOrder");
			mv.addObject("message", message);
			mv.setViewName("common/result");
		}

		return mv;
		
//		ModelAndView mv = new ModelAndView();
//		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
//		mv.addObject("member", memberDTO);
//		List<OrdersDTO> ar = qnaService.getOrders(memberDTO);
//		mv.addObject("ordersDTO", ar);
//		mv.setViewName("mypage/cancel");
//		
//		return mv;
	}
	
	@PostMapping("cancel/inquiry")
	public ModelAndView addCancel(CancelDTO cancelDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		String message = "취소 신청에 실패했습니다. 다시 시도해주세요";
		CancelDTO cancelDTO2 = new CancelDTO();
		cancelDTO2 = cancelService.getDetail(cancelDTO);
		
		
		if(cancelDTO2==null) {
			int result = cancelService.addCancel(cancelDTO);
			OrdersDTO ordersDTO = new OrdersDTO();
			ordersDTO.setMerchant_uid(cancelDTO.getMerchant_uid());
			ordersDTO.setOrd_status("취소신청");
			ordersService.updateStatus(ordersDTO);
			if(result!=0) {
				message = "문의가 등록되었습니다. 처리에는 영업일 기준 1~3일이 소요됩니다.";
			}
		} else {
			message = "이미 취소한 주문입니다.";
			mv.addObject("url", "../mypage/myOrder");
			mv.addObject("message", message);
			mv.setViewName("common/result");
			return mv;
			
		}
		
		mv.addObject("url", "../mypage/myOrder");
		mv.addObject("message", message);
		mv.setViewName("common/result");
		
		return mv;
		
		
	}
	
	

}
