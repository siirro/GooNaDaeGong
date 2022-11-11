package com.gndg.home.notice;

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
import com.gndg.home.util.Pager;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	
	@GetMapping("hidden")
	public ModelAndView getListHidden(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<NoticeDTO> ar = noticeService.getListHidden(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("notice/hiddenlist");
		
		return mv;
	}
	
	@PostMapping("fileDelete")
	@ResponseBody
	public String deleteNoticeFile(NoticeFileDTO noticeFileDTO, HttpSession session)throws Exception{
		int result = noticeService.deleteNoticeFile(noticeFileDTO, session.getServletContext());
		String jsonResult = "{\"result\":\""+result+"\"}";
		return jsonResult;
	}
	
	@GetMapping("update")
	public ModelAndView updateNotice(NoticeDTO noticeDTO, ModelAndView mv)throws Exception{
		noticeDTO = noticeService.getDetail(noticeDTO);
		mv.addObject("detail", noticeDTO);
		mv.setViewName("notice/update");
		return mv;
	}
	
	@PostMapping("update")
	public ModelAndView updateNotice(NoticeDTO noticeDTO, MultipartFile [] multipartFiles, HttpSession session)throws Exception{
		int result = noticeService.updateNotice(noticeDTO, multipartFiles, session.getServletContext());
		ModelAndView mv = new ModelAndView();
		String message = "공지사항 수정 실패";
		if(result!=0) {
			message = "공지사항 수정 성공";
		}
		mv.addObject("url", "./detail?nt_num="+noticeDTO.getNt_num());
		mv.addObject("message", message);
		mv.setViewName("common/result");
		return mv;
	}
	
	@GetMapping("delete")
	public ModelAndView deleteNotice(NoticeDTO noticeDTO, HttpSession session)throws Exception{
		int result = noticeService.deleteNotice(noticeDTO, session.getServletContext());
		ModelAndView mv = new ModelAndView();
		String message = "공지사항 삭제 실패";
		if(result!=0) {
			message = "공지사항 삭제 성공";
		}	
		mv.addObject("url", "./list");
		mv.addObject("message", message);
		mv.setViewName("common/result");
		return mv;
	}
	
	@GetMapping("add")
	public String addNotice()throws Exception{
		return "notice/add";
	}
	
	@PostMapping("add")
	public ModelAndView addNotice(NoticeDTO noticeDTO, MultipartFile [] multipartFiles, HttpSession session)throws Exception{
		int result = noticeService.addNotice(noticeDTO, multipartFiles, session.getServletContext());
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		String message = "공지사항 등록 실패";
		if(result!=0) {
			message = "공지사항 등록 성공";
		}
		mv.addObject("url", "./list");
		mv.addObject("message", message);
		mv.setViewName("common/result");
		return mv;
	}
	
	@GetMapping("list")
	public ModelAndView getList(Pager pager, HttpSession session)throws Exception{
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");

		ModelAndView mv = new ModelAndView();
		List<NoticeDTO> ar = noticeService.getList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.addObject("member", memberDTO);
		mv.setViewName("notice/list");
		
		return mv;
	}
	
	
	
	@GetMapping("detail")
	public ModelAndView getDetail(NoticeDTO noticeDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		noticeDTO = noticeService.getDetail(noticeDTO);
		mv.addObject("detail", noticeDTO);
		mv.setViewName("notice/detail");
		
		return mv;
	}
	
	
	
	
	

}
