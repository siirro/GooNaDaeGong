package com.gndg.home.dgItem;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
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

//import edu.emory.mathcs.backport.java.util.Arrays;

@Controller
@RequestMapping(value="/dgItem/*")
public class DgItemController {
	
	@Autowired
	private DgItemService dgItemService;
	
	
	/* HTML, CSS 확인용 */
	@GetMapping("dgTest")
	public String dgTest(Model model,DgItemDTO dgItemDTO) throws Exception {
		System.out.println("Test GET");
		List<DgItemDTO> list = dgItemService.getListItem(dgItemDTO);
		
		model.addAttribute("list", list);
		
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
	
	/* 통합 검색 */
	@GetMapping("search")
	public String getSearch() throws Exception {
		
		return "dgItem/list";
	}
	
	@PostMapping("search")
	public String getSearch(String search, Model model, DgItemDTO dgItemDTO) throws Exception {
		List<DgItemDTO> ar = dgItemService.getSearch(search);
		
		model.addAttribute("list", ar);	
		
		System.out.println("싯팔 : " +search);
		
		
		return "dgItem/list";
	}
	
	/* 최근 본 상품 */
//	@GetMapping("detail")
//	public String getProduct(@RequestParam String fileName, @RequestParam Long item_num, HttpServletRequest request, Model model) throws Exception {
//		System.out.println("PRODUCT GET");
//		
//		HttpSession session = request.getSession();
//		
//		List<DgItemFileDTO> productList = dgItemService.getProduct(item_num);
//		
//		session.setAttribute("productList", productList);
//		
//		model.addAttribute("productList", productList);
//		
//		System.out.println("랭스 : " + productList);
//		
////		session.setAttribute("productFileName", fileName);
////		session.setAttribute("productItemNum", item_num);
////		
////		model.addAttribute("productFileName", fileName);
////		model.addAttribute("productItemNum", item_num);
//		
//		return "dgItem/detail";
//	}
	
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
	public String detail(@RequestParam("item_num")Long item_num, HttpServletRequest request, Model model) throws Exception {
		System.out.println("DETAIL GET");
		
		DgItemReviewDTO dgItemReviewDTO = new DgItemReviewDTO();
		
		//상품 상세보기
		DgItemDetailDTO dgItemDetailDTO = dgItemService.getDetailItem(item_num);

		model.addAttribute("dgItemDetailDTO", dgItemDetailDTO);
		model.addAttribute("dgItemFileDTOs", dgItemDetailDTO.getDgItemFileDTOs());	
		
		/* 후기 가져오기*/
		List<DgItemReviewDTO> getReply = dgItemService.getReply(item_num);
		model.addAttribute("rvDTO", getReply);
		
		HttpSession session = request.getSession();
		
		
		/* 최근 본 상품 넣기 */
		List<Long> ar = (List<Long>)session.getAttribute("product");
		
		if(ar == null) {
			ar = new ArrayList<Long>();
			session.setAttribute("product", ar);
		} 
		
		ar.add(item_num);
		
		Set<Long> set = new HashSet<Long>(ar);
		
		List<Long> newAr = new ArrayList<Long>(set);	
				
		/* 최근 본 상품 가져오기 */
		List<DgItemFileDTO> productList = new ArrayList<DgItemFileDTO>();
		
		for(Long l : newAr) {
			List<DgItemFileDTO> productListdetail = dgItemService.getProduct(l);
			
			productList.add(productListdetail.get(0));
		}
		
		
		session.setAttribute("productList", productList);
		
		model.addAttribute("productList", productList);
		
		System.out.println("랭스 : " + productList);
		System.out.println("0번째 : " + productList.get(0));
		
		return "dgItem/detail";
	}
	
	/* 상품 갯수 */
//	@GetMapping
//	public String getCount(Category category, Model model) throws Exception {
//		System.out.println("COUNT GET");
//		
//		category = dgItemService.getCount(category);
//		
//		
//		
//		return "dgItem/list";
//	}
	
	/* 상품목록 */
	@GetMapping("list")
	public String list(Model model,DgItemDTO dgItemDTO) throws Exception {
		System.out.println("LIST GET");
		
		List<DgItemDTO> list = dgItemService.getListItem(dgItemDTO);
		
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
