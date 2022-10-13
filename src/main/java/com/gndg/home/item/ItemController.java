package com.gndg.home.item;

import java.util.ArrayList;
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
import com.gndg.home.member.MemberDTO;
import com.gndg.home.util.Category;

@Controller
@RequestMapping("/item/*")
public class ItemController {

	@Autowired
	private ItemService itemService;

	//카테고리 불러오기
	@GetMapping("category")
	@ResponseBody
	public List<Category> getCategory() throws Exception {
		return itemService.getCategory();
	}

	//상품 등록
	@GetMapping("add")
	public String setAdd() throws Exception {
		return "/item/add";
	}

	@PostMapping("add")
	public ModelAndView setAdd(ItemDTO itemDTO, MultipartFile[] files, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = itemService.setAdd(itemDTO, files, session.getServletContext());
		String message = "등록실패";
		if (result > 0) {
			message = "등록되었습니다.";
		}
		mv.addObject("message", message);
		mv.addObject("url", "list");
		mv.setViewName("common/result");
		return mv;
	}

	//상품 리스트 조회
	@GetMapping("list")
	public ModelAndView getList() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ItemDTO> ar = itemService.getList();
		
		//좋아요수
		ArrayList<Long> counts = new ArrayList<Long>();
		for(int i=0; i<ar.size(); i++) {
			ItemLikeDTO itemLikeDTO = new ItemLikeDTO();
			itemLikeDTO.setItem_num(ar.get(i).getItem_num());
			Long count = itemService.getLikeItem(itemLikeDTO);
			counts.add(count);
		}
		
		mv.addObject("list", ar);
		mv.addObject("count", counts);
		mv.setViewName("item/list");
		return mv;
	}

	//상품 상세페이지 조회
	@GetMapping("detail")
	public ModelAndView getDetail(ItemDTO itemDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		itemDTO = itemService.getDetail(itemDTO);
		mv.addObject("dto", itemDTO);

		//json
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(itemDTO);
		mv.addObject("json", json);
		
		//해당 상품 좋아요 컬러
		ItemLikeDTO itemLikeDTO = new ItemLikeDTO();
		itemLikeDTO.setItem_num(itemDTO.getItem_num());
		itemLikeDTO.setUser_id(itemDTO.getUser_id());
		itemLikeDTO = itemService.getLikeUser(itemLikeDTO);
		mv.addObject("like", itemLikeDTO);
				
		mv.setViewName("item/detail");
		return mv;
	}

	//상품 수정
	@GetMapping("update")
	public ModelAndView setUpdate(ItemDTO itemDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		itemDTO = itemService.getDetail(itemDTO);
		mv.addObject("dto", itemDTO);
		mv.setViewName("item/update");
		return mv;
	}

	@PostMapping("update")
	public String setUpdate(ItemDTO itemDTO, MultipartFile[] files, HttpSession session) throws Exception {
		int result = itemService.setUpdate(itemDTO, files, session.getServletContext());
		return "redirect:detail?item_num=" + itemDTO.getItem_num();
	}

	//상품 삭제
	@GetMapping("delete")
	public String setDelete(ItemDTO itemDTO) throws Exception {
		int result = itemService.setDelete(itemDTO);
		return "redirect:list";
	}

	//상품 수정할때 이미지파일 삭제
	@PostMapping("fileDelete")
	@ResponseBody
	public int setFileDelete(ItemFileDTO itemFileDTO, HttpSession session) throws Exception {
		int result = itemService.setFileDelete(itemFileDTO, session.getServletContext());
		return result;
	}
	
	//좋아요 등록&취소
	@PostMapping("like")
	@ResponseBody
	public int setLike(ItemLikeDTO itemLikeDTO) throws Exception {
		int result = 0;
		ItemLikeDTO likeDTO = itemService.getLikeUser(itemLikeDTO);
		if(likeDTO == null) {
			return itemService.setLikeAdd(itemLikeDTO);
		}else {
			itemService.setLikeDelete(itemLikeDTO);
		}
		return result;
	}
	
	//상품당 좋아요수 조회
	@GetMapping("likeCount")
	@ResponseBody
	public Long getLikeItem(ItemLikeDTO itemLikeDTO) throws Exception {
		Long count = itemService.getLikeItem(itemLikeDTO);
		return count;
	}
	
	
	//후기 조회
	@GetMapping("reviewList")
	@ResponseBody
	public ModelAndView getReview(ItemReviewDTO itemReviewDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ItemReviewDTO> ar = itemService.getReview(itemReviewDTO);
		mv.addObject("list", ar);
		mv.setViewName("item/reviewList");
		return mv;
	}

	//후기 등록
	@PostMapping("review")
	@ResponseBody
	public int setReviewAdd(ItemReviewDTO itemReviewDTO, MultipartFile multipartFile, HttpSession session) throws Exception {
		System.out.println("c1"+itemReviewDTO);
		System.out.println("c1"+multipartFile);
		int result = itemService.setReviewAdd(itemReviewDTO, multipartFile, session.getServletContext());
		System.out.println("c2"+itemReviewDTO);
		System.out.println("c2"+multipartFile);
		return result;
		
	}
	
	//후기 삭제
	@GetMapping("reviewDelete")
	@ResponseBody
	public int setReviewDelete(ItemReviewDTO itemReviewDTO) throws Exception {
		int result = itemService.setReviewDelete(itemReviewDTO);
		return result;
	}
	
	//후기 수정
	@PostMapping("reviewUpdate")
	@ResponseBody
	public int setReviewUpdate(ItemReviewDTO itemReviewDTO) throws Exception {
		int result = itemService.setReviewUpdate(itemReviewDTO);
		return result;
	}
	
	//후기수
	@GetMapping("reviewCount")
	@ResponseBody
	public Long getReviewCount(ItemReviewDTO itemReviewDTO) throws Exception {
		Long count = itemService.getReviewCount(itemReviewDTO);
		return count;
	}
}
