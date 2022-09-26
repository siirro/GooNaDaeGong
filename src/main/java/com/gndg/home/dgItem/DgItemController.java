package com.gndg.home.dgItem;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value="/dgItem/*")
public class DgItemController {
	
	@Autowired
	private DgItemService dgItemService;
	
	/* 상품 수정 */
	@GetMapping("update")
	public String setUpdateItem(@RequestParam("num")Long item_num, Model model) throws Exception {
		System.out.println("UPDATE GET");
		
		ObjectMapper objectMapper = new ObjectMapper();
		DgItemDTO dgItemDTO = dgItemService.getDetailItem(item_num);
		
		model.addAttribute("dgItemDTO", dgItemDTO);
		
		List list = dgItemService.getCategory();
		
		String getCategory = objectMapper.writeValueAsString(list);
		model.addAttribute("getCategory", getCategory);
		
		System.out.println(dgItemDTO.getCate_ref());
		System.out.println(dgItemDTO.getCate_name());
		
		return "/dgItem/update";
	}
	
	/* 상품 조회 */
	@GetMapping("detail")
	public String detail(@RequestParam("num")Long item_num, Model model) throws Exception {
		System.out.println("DETAIL GET");
		
		DgItemDTO dgItemDTO = dgItemService.getDetailItem(item_num);

		
		model.addAttribute("dgItemDTO", dgItemDTO);
		
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
	
	/* 상품등록 */
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
	public String add(DgItemDTO dgItemDTO) throws Exception{
		System.out.println("ADD POST");
		System.out.println(dgItemDTO);
		System.out.println(dgItemDTO.getItem_contents());
		
		dgItemService.setAddItem(dgItemDTO);
		
		return "index";
	}

}
