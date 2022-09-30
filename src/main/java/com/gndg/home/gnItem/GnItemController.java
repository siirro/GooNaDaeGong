package com.gndg.home.gnItem;

import java.text.DecimalFormat;
import java.text.NumberFormat;
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

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gndg.home.util.Category;

@Controller
@RequestMapping("/gnItem/*")
public class GnItemController {
	
	@Autowired
	private GnItemService gnItemService;
	
	//카테고리
	@GetMapping("category")
	@ResponseBody
	public List<Category> getCategory() throws Exception {
		return gnItemService.getCategory();
	}
	
	
	//거래글등록
	@GetMapping("add")
	public String setAdd() throws Exception {
		return "/gnItem/add";
	}
	
	@PostMapping("add")
	public ModelAndView setAdd(GnItemDTO gnItemDTO, MultipartFile [] files, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = gnItemService.setAdd(gnItemDTO, files, session.getServletContext());
		
		String message="등록실패";
		if(result>0) {
			message="글이 등록되었습니다.";
		}
		mv.addObject("message", message);
		mv.addObject("url", "list");
		mv.setViewName("common/result");
		return mv;
	}
	
	
	//거래글리스트
	@GetMapping("list")
	public ModelAndView getList() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<GnItemDTO> ar = gnItemService.getList();
		mv.addObject("list", ar);
		mv.setViewName("gnItem/list");
		return mv;
	}
	
	
	//거래글상세페이지
	@GetMapping("detail")
	public ModelAndView getDetail(GnItemDTO gnItemDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		gnItemDTO = gnItemService.getDetail(gnItemDTO);
		mv.addObject("dto", gnItemDTO);
		
		DecimalFormat Format = new DecimalFormat("###,###");
		String price = Format.format(gnItemDTO.getItem_price());
		mv.addObject("price", price);
		mv.setViewName("gnItem/detail");
		return mv;
	}
	
	//거래글수정
	@GetMapping("update")
	public ModelAndView setUpdate(GnItemDTO gnItemDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		gnItemDTO = gnItemService.getDetail(gnItemDTO);
		mv.addObject("dto", gnItemDTO);
		mv.setViewName("gnItem/update");
		return mv;
	}
	
	@PostMapping("update")
	public String setUpdate(GnItemDTO gnItemDTO, MultipartFile [] files, HttpSession session) throws Exception {
		int result = gnItemService.setUpdate(gnItemDTO);
		return "redirect:detail?item_num="+gnItemDTO.getItem_num();
	}
	
	
	//거래글삭제
	@GetMapping("delete")
	public String setDelete(GnItemDTO gnItemDTO) throws Exception {
		int result = gnItemService.setDelete(gnItemDTO);
		return "redirect:list";
	}
}
