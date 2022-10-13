package com.gndg.home.item;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gndg.home.cart.CartDTO;
import com.gndg.home.cart.CartService;
import com.gndg.home.member.MemberDTO;
import com.gndg.home.util.Category;
import com.gndg.home.util.Pager;

@Controller
@RequestMapping("/item/*")
public class ItemController {

	@Autowired
	private ItemService itemService;
	@Autowired
	private CartService cartService;
	
    //카트 추가  
    @RequestMapping(value="AddCart", method = RequestMethod.POST)
    @ResponseBody
    public int setAddCart(CartDTO cartDTO, HttpSession session)throws Exception{
        MemberDTO member =  (MemberDTO)session.getAttribute("member");
        cartDTO.setUser_id(member.getUser_id());
        int result = cartService.setAddCart(cartDTO);
        
        return result;
    }
	
	/* HTML, CSS 테스트 */
	@GetMapping("add2")
	public String add2() throws Exception {
		System.out.println("add2 GET"); 
		
		return "item/add2";
	} 
	
	/* 통합 검색 */
	@GetMapping("search")
	public String getSearch() throws Exception {
		
		return "/item/list";
	}
	
	@PostMapping("search")
	public String getSearch(String search, Model model, ItemDTO itemDTO) throws Exception {
		List<ItemDTO> ar = itemService.getSearch(search);
		
		model.addAttribute("list", ar);	
		
		System.out.println("검색어 : " + search);
		
		return "/item/list";
	}
	

	//카테고리
	@GetMapping("category")
	@ResponseBody
	public List<Category> getCategory() throws Exception {
		return itemService.getCategory();
	}

	//상품등록
	@GetMapping("add")
	public String setAdd() throws Exception {
		return "/item/add";
	}

	@PostMapping("add")
	public ModelAndView setAdd(ItemDTO itemDTO, MultipartFile[] files, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
		itemDTO.setUser_id(memberDTO.getUser_id());
		int result = itemService.setAdd(itemDTO, files, session.getServletContext());
		String message = "등록실패";
		if (result > 0) {
			message = "글이 등록되었습니다.";
		}
		mv.addObject("message", message);
		mv.addObject("url", "list");
		mv.setViewName("common/result");
		return mv;
	}

	//상품리스트
	@GetMapping("list")
	public ModelAndView getList(ItemDTO itemDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ItemDTO> ar = itemService.getList(itemDTO);
		
		//좋아요수
		ArrayList<Long> counts = new ArrayList<Long>();
		for(int i=0; i<ar.size(); i++) {
			ItemLikeDTO itemLikeDTO = new ItemLikeDTO();
			itemLikeDTO.setItem_num(ar.get(i).getItem_num());
			Long count = itemService.getLikeItem(itemLikeDTO);
			counts.add(count);
		}
		
		Long total =  itemService.getTotal(itemDTO);
		
		mv.addObject("total", total);
		
		mv.addObject("list", ar);
		mv.addObject("count", counts);
		mv.setViewName("item/list");
		return mv;
	}

	//상세페이지
	@GetMapping("detail")
	public ModelAndView getDetail(ItemDTO itemDTO,HttpSession session) throws Exception {
	    ModelAndView mv = new ModelAndView();
	    //장바구니
	    MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
	    itemDTO.setUser_id(memberDTO.getUser_id());
	    mv.addObject("cart", itemDTO);
	    
		itemDTO = itemService.getDetail(itemDTO);
		mv.addObject("dto", itemDTO);

		//json
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(itemDTO);
		mv.addObject("json", json);

		//가격 천단위 콤마
		DecimalFormat Format = new DecimalFormat("###,###");
		String price = Format.format(itemDTO.getItem_price());
		mv.addObject("price", price);
		
		//해당 상품 좋아요 컬러
		ItemLikeDTO itemLikeDTO = new ItemLikeDTO();
		itemLikeDTO.setItem_num(itemDTO.getItem_num());
		itemLikeDTO.setUser_id(itemDTO.getUser_id());
		itemLikeDTO = itemService.getLikeUser(itemLikeDTO);
		mv.addObject("like", itemLikeDTO);
				
		mv.setViewName("item/detail");
		
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
		List<ItemFileDTO> productList = new ArrayList<ItemFileDTO>();
		
		for(Long l : newAr) {
			List<ItemFileDTO> productListdetail = itemService.getProduct(l);
			
			if (productListdetail.size()!= 0) {
				productList.add(productListdetail.get(0));
			}
			
		}
		
		
		session.setAttribute("productList", productList);
		
		model.addAttribute("productList", productList);
		
		
		return mv;
	}

	//상품수정
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

	//상품삭제
	@GetMapping("delete")
	public String setDelete(ItemDTO itemDTO) throws Exception {
		int result = itemService.setDelete(itemDTO);
		return "redirect:list";
	}

	//상품수정시 파일삭제
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
	
	//좋아요수 조회
	@GetMapping("likeCount")
	@ResponseBody
	public Long getLikeItem(ItemLikeDTO itemLikeDTO) throws Exception {
		Long count = itemService.getLikeItem(itemLikeDTO);
		return count;
	}
	
	
	//후기 조회
	@GetMapping("reviewList")
	@ResponseBody
	public ModelAndView getReview(Pager pager, ItemReviewDTO itemReviewDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<ItemReviewDTO> ar = itemService.getReview(pager, itemReviewDTO);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("item/review");
		return mv;
	}

	//후기 등록
	@PostMapping("reviewAdd")
	@ResponseBody
	public int setReviewAdd(ItemReviewDTO itemReviewDTO, MultipartFile multipartFile, HttpSession session) throws Exception {
		int result = itemService.setReviewAdd(itemReviewDTO, multipartFile, session.getServletContext());
		return result;
	}
	
	//후기 삭제
	//후기 수정
	
	//후기수
	@GetMapping("reviewCount")
	@ResponseBody
	public Long getReviewCount(ItemReviewDTO itemReviewDTO) throws Exception {
		Long count = itemService.getReviewCount(itemReviewDTO);
		return count;
	}
}
