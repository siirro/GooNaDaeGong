package com.gndg.home.manager;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.cancel.CancelDTO;
import com.gndg.home.cancel.CancelService;
import com.gndg.home.member.MemberDTO;
import com.gndg.home.member.MemberService;
import com.gndg.home.orders.OrdersDTO;
import com.gndg.home.orders.OrdersService;
import com.gndg.home.qna.QnaDTO;
import com.gndg.home.qna.QnaService;
import com.gndg.home.report.ReportDTO;
import com.gndg.home.report.ReportService;
import com.gndg.home.util.OrderPager;
import com.gndg.home.util.Pager;

@Controller
@RequestMapping("/manager/*")
public class ManagerController {
	
	@Autowired
	private QnaService qnaService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private ReportService reportService;
	@Autowired
	private OrdersService ordersService;
	@Autowired
	private CancelService cancelService;
	
	//============================================================
	
	@RequestMapping(value = "item/add", method=RequestMethod.GET)
	public String managerIndex2()throws Exception{
		
		return "manager/add";
	}
	
	
	
	
//	==============================QNA 조회=========================
	@RequestMapping(value = "qna/list", method=RequestMethod.GET)
	public ModelAndView managerQnaList(Pager pager, Long code)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<QnaDTO> ar = qnaService.getList(pager, code);
		System.out.println(ar.size());
		
		mv.addObject("qnalist", ar);
		
		mv.addObject("pager", pager);
		mv.addObject("code", code);
		mv.setViewName("manager/qnalist");
		return mv;
	}
	
	@RequestMapping(value = "qna/detail", method=RequestMethod.GET)
	public ModelAndView managerQnaDetail(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		qnaDTO = qnaService.getDetail(qnaDTO);
		mv.addObject("qnaDTO", qnaDTO);
		mv.setViewName("manager/qnadetail");
		
		return mv;
	}
	
	//qna 답변 등록
	@PostMapping("qna/comment")
	@ResponseBody
	public String updateQnaComment(QnaDTO qnaDTO) throws Exception{
		int result = qnaService.updateQnaComment(qnaDTO);
		String jsonResult = "{\"result\":\""+result+"\"}";
		return jsonResult;
	}
	
	//qna 답변 조회 ajax
	@PostMapping(value = "qna/commentlist", produces = "application/text; charset=utf8")
	@ResponseBody
	public String getComment(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		qnaDTO = qnaService.getComment(qnaDTO);
		System.out.println(qnaDTO.getQna_comment());
		String comment = qnaDTO.getQna_comment();
		//mv.addObject("qnaDTO", qnaDTO);
		
		String jsonResult = "{\"comment\":\""+comment+"\"}";
		return jsonResult;
	}
	
	@PostMapping("qna/update")
	public String statusChange(QnaDTO qnaDTO)throws Exception{
		int result = qnaService.statusChange(qnaDTO);
		
		return "redirect:./detail?qna_num="+qnaDTO.getQna_num();
	}
//	==============================QNA 조회 끝=========================
	
	
	
//	============================= 회원 조회 =========================
	@GetMapping("member/list")
	public ModelAndView getMemberList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MemberDTO> ar = memberService.getMemberList(pager);
		
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("manager/memberlist");
		
		return mv;
	}
	
	@GetMapping("member/updateYN")
	public String updateYN(MemberDTO memberDTO)throws Exception{
		int result = memberService.updateYN(memberDTO);
		return "redirect:./list";
	}
//	============================= 회원 조회 끝=========================

	
//	============================= 신고 조회=========================
	@GetMapping("report/list")
	public ModelAndView getReportList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ReportDTO> ar = reportService.getReportList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("manager/reportlist");
		
		return mv;
	}
	
	@GetMapping("report/detail")
	public ModelAndView getReportDetail(ReportDTO reportDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		reportDTO = reportService.getReportDetail(reportDTO);
		mv.addObject("detail", reportDTO);
		mv.setViewName("manager/reportdetail");
		return mv;
	}
	
	@GetMapping("report/updateStatus")
	public String updateStatus(ReportDTO reportDTO)throws Exception{
		int result = reportService.updateStatus(reportDTO);
		return "redirect:./list";
	}
	
	@GetMapping("report/updateYN")
	public String updateYN(ReportDTO reportDTO)throws Exception{
		int result = reportService.updateYN(reportDTO);
		return "redirect:./list";
	}
	
	

//	============================= 신고 조회 끝=========================
	
	
//	============================= 주문내역 조회 =========================
	@GetMapping("mall/order")
	public ModelAndView getList(OrdersDTO ordersDTO, OrderPager orderPager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<OrdersDTO> ar = ordersService.getList(orderPager, ordersDTO);
		mv.addObject("list", ar);
		mv.addObject("pager", orderPager);
		mv.addObject("code", ordersDTO.getCode());
		mv.setViewName("manager/order/list");
		return mv;
	}
	@GetMapping("mall/detail")
	public ModelAndView getDetail(OrdersDTO ordersDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		return mv;
		
	}
//	============================= 주문내역 조회 끝 =========================

//	============================= 취소내역 조회 =========================
	@GetMapping("mall/cancel")
	public ModelAndView getList(OrderPager orderPager, CancelDTO cancelDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<OrdersDTO> ar = cancelService.getList(orderPager);
		System.out.println(ar);
		mv.addObject("list", ar);
		mv.addObject("pager", orderPager);

		mv.setViewName("manager/cancellist");
		return mv;
	}

	
	
	
	
	
}
