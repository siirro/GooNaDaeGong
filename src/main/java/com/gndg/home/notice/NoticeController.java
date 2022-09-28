package com.gndg.home.notice;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.util.Pager;

@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("delete")
	public String deleteNotice(NoticeDTO noticeDTO)throws Exception{
		int result = noticeService.deleteNotice(noticeDTO);
		return "redirect:./list";
	}
	
	@GetMapping("update")
	public ModelAndView updateNotice(NoticeDTO noticeDTO, ModelAndView mv)throws Exception{

		noticeDTO = noticeService.getDetail(noticeDTO);
		mv.addObject("detail", noticeDTO);
		mv.setViewName("notice/update");
		return mv;
		
	}
	
	@PostMapping("update")
	public String updateNotice(NoticeDTO noticeDTO)throws Exception{
		int result = noticeService.updateNotice(noticeDTO);
		return "redirect:./detail?nt_num="+noticeDTO.getNt_num();
		
	}
	
	
	@GetMapping("add")
	public String addNotice()throws Exception{
		return "notice/add";
	}
	
	@PostMapping("add")
	public String addNotice(NoticeDTO noticeDTO, MultipartFile [] multipartFiles, HttpSession session)throws Exception{
		int result = noticeService.addNotice(noticeDTO, multipartFiles, session.getServletContext());
		return "redirect:./list";
	}
	
	@GetMapping("list")
	public ModelAndView getList(Pager pager, Long code)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<NoticeDTO> ar = noticeService.getList(pager, code);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.addObject("code", code);
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
