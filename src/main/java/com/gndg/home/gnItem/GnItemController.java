package com.gndg.home.gnItem;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gndg.home.dgItem.DgItemDTO;
import com.gndg.home.dgItem.DgItemFileDTO;
import com.gndg.home.dgItem.DgItemReviewDTO;
import com.gndg.home.util.Category;

@Controller
@RequestMapping("/gnItem/*")
public class GnItemController {

	@Autowired
	private GnItemService gnItemService;

	/* 상품 갯수 */
	@GetMapping
	public String getCount(Category category, Model model) throws Exception {
		System.out.println("COUNT GET");
	
		category = itemService.getCount(category);
		
		return "item/list";
}

	/* 통합 검색 */
	@GetMapping("search")
	public String getSearch() throws Exception {
		
		return "item/list";
	}

	@PostMapping("search")
	public String getSearch(String search, Model model, ItemDTO itemDTO) throws Exception {
		List<ItemDTO> ar = itemService.getSearch(search);
		
		model.addAttribute("list", ar);	
		
		System.out.println("검색어 : " + search);
		
		
		return "item/list";
	}

	/* HTML, CSS 확인용 */
	@GetMapping("dgTest")
	public String dgTest(Model model,ItemDTO itemDTO) throws Exception {
		System.out.println("Test GET");
		List<ItemDTO> list = itemService.getListItem(itemDTO);
		
		model.addAttribute("list", list);
		
		return "item/dgTest"; 
	
	}
	
	@GetMapping("add2")
	public String add2() throws Exception {
		System.out.println("add2 GET");
		
		return "item/add2"; 
	}	
	/* HTML, CSS 확인용 끝 */

	//카테고리
	@GetMapping("category")
	@ResponseBody
	public List<Category> getCategory() throws Exception {
		return gnItemService.getCategory();
	}

	//상품등록
	@GetMapping("add")
	public String setAdd() throws Exception {
		return "/gnItem/add";
	}

	@PostMapping("add")
	public ModelAndView setAdd(GnItemDTO gnItemDTO, MultipartFile[] files, HttpSession session) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = gnItemService.setAdd(gnItemDTO, files, session.getServletContext());
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
	public ModelAndView getList() throws Exception {
		ModelAndView mv = new ModelAndView();
		List<GnItemDTO> ar = gnItemService.getList();
		
		//좋아요수
		ArrayList<Long> counts = new ArrayList<Long>();
		for(int i=0; i<ar.size(); i++) {
			GnItemLikeDTO gnItemLikeDTO = new GnItemLikeDTO();
			gnItemLikeDTO.setItem_num(ar.get(i).getItem_num());
			Long count = gnItemService.getLikeItem(gnItemLikeDTO);
			counts.add(count);
		}
		
		mv.addObject("list", ar);
		mv.addObject("count", counts);
		mv.setViewName("gnItem/list");
		return mv;
	}

	//상세페이지
	@GetMapping("detail")
	public ModelAndView getDetail(GnItemDTO gnItemDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		gnItemDTO = gnItemService.getDetail(gnItemDTO);
		mv.addObject("dto", gnItemDTO);

		//json
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(gnItemDTO);
		mv.addObject("json", json);

		//가격 천단위 콤마
		DecimalFormat Format = new DecimalFormat("###,###");
		String price = Format.format(gnItemDTO.getItem_price());
		mv.addObject("price", price);
		
		//해당 상품 좋아요 컬러
		GnItemLikeDTO gnItemLikeDTO = new GnItemLikeDTO();
		gnItemLikeDTO.setItem_num(gnItemDTO.getItem_num());
		gnItemLikeDTO.setUser_id(gnItemDTO.getUser_id());
		gnItemLikeDTO = gnItemService.getLikeUser(gnItemLikeDTO);
		mv.addObject("like", gnItemLikeDTO);
				
		mv.setViewName("gnItem/detail");
		
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
		
		
		return mv;
	}

	//상품수정
	@GetMapping("update")
	public ModelAndView setUpdate(GnItemDTO gnItemDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		gnItemDTO = gnItemService.getDetail(gnItemDTO);
		mv.addObject("dto", gnItemDTO);
		mv.setViewName("gnItem/update");
		return mv;
	}

	@PostMapping("update")
	public String setUpdate(GnItemDTO gnItemDTO, MultipartFile[] files, HttpSession session) throws Exception {
		int result = gnItemService.setUpdate(gnItemDTO, files, session.getServletContext());
		return "redirect:detail?item_num=" + gnItemDTO.getItem_num();
	}

	//상품삭제
	@GetMapping("delete")
	public String setDelete(GnItemDTO gnItemDTO) throws Exception {
		int result = gnItemService.setDelete(gnItemDTO);
		return "redirect:list";
	}

	//상품수정시 파일삭제
	@PostMapping("fileDelete")
	@ResponseBody
	public int setFileDelete(GnItemFileDTO gnItemFileDTO, HttpSession session) throws Exception {
		int result = gnItemService.setFileDelete(gnItemFileDTO, session.getServletContext());
		return result;
	}
	
	//좋아요 등록&취소
	@PostMapping("like")
	@ResponseBody
	public int setLike(GnItemLikeDTO gnItemLikeDTO) throws Exception {
		int result = 0;
		GnItemLikeDTO likeDTO = gnItemService.getLikeUser(gnItemLikeDTO);
		if(likeDTO == null) {
			return gnItemService.setLikeAdd(gnItemLikeDTO);
		}else {
			gnItemService.setLikeDelete(gnItemLikeDTO);
		}
		return result;
	}
	
	//좋아요수 조회
	@GetMapping("likeCount")
	@ResponseBody
	public Long getLikeItem(GnItemLikeDTO gnItemLikeDTO) throws Exception {
		Long count = gnItemService.getLikeItem(gnItemLikeDTO);
		return count;
	}
	
	
	//후기 조회
	@GetMapping("reviewList")
	@ResponseBody
	public ModelAndView getReview(GnItemReviewDTO gnItemReviewDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		List<GnItemReviewDTO> ar = gnItemService.getReview(gnItemReviewDTO);
		mv.addObject("list", ar);
		mv.setViewName("gnItem/review");
		return mv;
	}

	//후기 등록
	@PostMapping("reviewAdd")
	@ResponseBody
	public int setReviewAdd(GnItemReviewDTO gnItemReviewDTO, MultipartFile multipartFile, HttpSession session) throws Exception {
		int result = gnItemService.setReviewAdd(gnItemReviewDTO, multipartFile, session.getServletContext());
		return result;
	}
	
	//후기 삭제
	//후기 수정
	
	//후기수
	@GetMapping("reviewCount")
	@ResponseBody
	public Long getReviewCount(GnItemReviewDTO gnItemReviewDTO) throws Exception {
		Long count = gnItemService.getReviewCount(gnItemReviewDTO);
		return count;
	}
}
