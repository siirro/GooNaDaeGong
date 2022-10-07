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
import com.gndg.home.member.MemberDTO;

@Controller
@RequestMapping(value="/dgItem/*")
public class DgItemController {
	
	@Autowired
	private DgItemService dgItemService;
	
	/* HTML, CSS 확인용 */
	@GetMapping("dgTest")
	public String dgTest() throws Exception {
		System.out.println("Test GET");
		
		return "dgItem/dgTest"; 
	}
	
	@GetMapping("detail2")
	public String detail2() throws Exception {
		System.out.println("detail2 GET");
		
		return "dgItem/detail2"; 
	}
	
	@GetMapping("add2")
	public String add2() throws Exception {
		System.out.println("add2 GET");
		
		return "dgItem/add2"; 
	}	
	/* HTML, CSS 확인용 끝 */
	
	/* 후기 작성 */
	@GetMapping("review")
	public String dgReview(DgItemReviewDTO dgItemReviewDTO, HttpSession session) throws Exception {
		System.out.println("REVIEW GET");
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		dgItemReviewDTO.setUser_id(memberDTO.getUser_id());
		
		
		System.out.println("있나?" + dgItemReviewDTO.getItem_num());
		
		
		return "dgItem/review";
	}
	
	@PostMapping("review")
	public String dgReview(DgItemReviewDTO dgItemReviewDTO, Model model) throws Exception {
		System.out.println("REVIEW POST");
		
		DgItemDTO dgItemDTO = new DgItemDTO();
		
		if(dgItemReviewDTO.getRv_file() == null ) {
			dgItemReviewDTO.setRv_file(" ");
		}
		
		
		
		dgItemService.setAddReply(dgItemReviewDTO);
		
		return "redirect:./detail?item_num="+dgItemReviewDTO.getItem_num();
	}
	
	/* 상품삭제 */	
	@PostMapping("delete")
	public String deleteItem(@RequestParam("item_num")Long item_num) throws Exception {
		System.out.println("DELETE POST");
		
		dgItemService.deleteItem(item_num);
		
		return "redirect:./list";
	}
	
	/* 상품 수정 */
	@GetMapping("update")
	public String setUpdateItem(@RequestParam("item_num")Long item_num, Model model) throws Exception {
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
		
		return "redirect:./detail?item_num="+dgItemDTO.getItem_num();
	}
	
	/* 상품 조회 + 후기 */
	@GetMapping("detail")
	public String detail(@RequestParam("item_num")Long item_num, Model model) throws Exception {
		System.out.println("DETAIL GET");
		
		DgItemReviewDTO dgItemReviewDTO = new DgItemReviewDTO();
		
		DgItemDetailDTO dgItemDetailDTO = dgItemService.getDetailItem(item_num);

		model.addAttribute("dgItemDetailDTO", dgItemDetailDTO);
		model.addAttribute("dgItemFileDTOs", dgItemDetailDTO.getDgItemFileDTOs());	
		
		/* 후기 가져오기*/
		List<DgItemReviewDTO> getReply = dgItemService.getReply(item_num);
		model.addAttribute("rvDTO", getReply);
		
		
		
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
