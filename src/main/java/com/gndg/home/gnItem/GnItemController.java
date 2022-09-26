package com.gndg.home.gnItem;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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
	public String setGnItem() throws Exception {
		return "/gnItem/add";
	}
	
	@PostMapping("add")
	public String setGnItem(GnItemDTO gnItemDTO, MultipartFile [] files) throws Exception {
		System.out.println("상품등록 실행");
		int result = gnItemService.setGnItem(gnItemDTO);
		return "redirect:list";
	}
	
	
	//거래글리스트
	@GetMapping("list")
	public ModelAndView getGnList() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<GnItemDTO> ar = gnItemService.getGnList();
		mv.addObject("list", ar);
		mv.setViewName("gnItem/list");
		return mv;
	}
	
	
	//거래글디테일
	@GetMapping("detail")
	public ModelAndView getGnDetail(GnItemDTO gnItemDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("dto", gnItemDTO);
		mv.setViewName("gnItem/detail");
		return mv;
	}
	
}
