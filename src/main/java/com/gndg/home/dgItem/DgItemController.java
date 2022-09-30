package com.gndg.home.dgItem;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value="/dgItem/*")
public class DgItemController {
	
	@Autowired
	private DgItemService dgItemService;
	
	/* 상품삭제 */	
	@PostMapping("delete")
	public String deleteItem(@RequestParam("num")Long item_num) throws Exception {
		System.out.println("DELETE POST");
		
		dgItemService.deleteItem(item_num);
		
		return "redirect:./list";
	}
	
	/* 상품 수정 */
	@GetMapping("update")
	public String setUpdateItem(@RequestParam("num")Long item_num, Model model) throws Exception {
		System.out.println("UPDATE GET");
		
		ObjectMapper objectMapper = new ObjectMapper();
		DgItemDetailDTO dgItemDetailDTO = dgItemService.getDetailItem(item_num);
		
		model.addAttribute("dgItemDTO", dgItemDetailDTO);
		
		List list = dgItemService.getCategory();
		
		String getCategory = objectMapper.writeValueAsString(list);
		model.addAttribute("getCategory", getCategory);
		
		return "/dgItem/update";
	}
	
	@PostMapping("update")
	public String setUpdateItem(DgItemDTO dgItemDTO) throws Exception {
		System.out.println("UPDATE POST");
		
		dgItemService.setUpdateItem(dgItemDTO);
		
		return "redirect:./detail?num="+dgItemDTO.getItem_num();
	}
	
	/* 상품 조회 */
	@GetMapping("detail")
	public String detail(@RequestParam("num")Long item_num, Model model) throws Exception {
		System.out.println("DETAIL GET");
		
		DgItemDetailDTO dgItemDetailDTO = dgItemService.getDetailItem(item_num);

		model.addAttribute("dgItemDetailDTO", dgItemDetailDTO);
		model.addAttribute("dgItemFileDTOs", dgItemDetailDTO.getDgItemFileDTOs());	
		
		return "dgItem/detail";
	}
	
	/* 상품목록 */
	@GetMapping("list")
	public String list(Model model) throws Exception {
		System.out.println("LIST GET");
		
		List<DgItemDTO> list = dgItemService.getListItem();
		
		model.addAttribute("list", list);
		
		return "dgItem/list"; 
	}
	
	/* 상품등록 + 상품이미지 */
	@GetMapping("add")
	public String add(Model model) throws Exception {
		System.out.println("ADD GET");
		ObjectMapper objectMapper = new ObjectMapper();
		
		List list = dgItemService.getCategory();
		
		String getCategory = objectMapper.writeValueAsString(list);
		
		model.addAttribute("getCategory", getCategory);
		
		System.out.println("변경 전 : " + list);
		System.out.println("변경 후 " + getCategory);
		
		return "dgItem/add";
	}
	
	@PostMapping("add")
	public ModelAndView add(DgItemDTO dgItemDTO, MultipartFile [] files, HttpSession session) throws Exception{
		System.out.println("ADD POST");
		System.out.println(dgItemDTO);
		System.out.println(dgItemDTO.getItem_contents());
		
		ModelAndView mv = new ModelAndView();
		int result = dgItemService.setAddItem(dgItemDTO, files, session.getServletContext());
		mv.setViewName("redirect:./list");
		
		return mv;
	}

}
