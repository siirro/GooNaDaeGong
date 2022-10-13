package com.gndg.home.item;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.gndg.home.File.FileManager;
import com.gndg.home.util.Category;
import com.gndg.home.util.Pager;

@Service
public class ItemService {

	@Autowired
	private ItemDAO itemDAO;
	@Autowired
	private FileManager fileManager;
	
	//최신글
	public List<ItemDTO> getNewItemList(ItemDTO itemDTO)throws Exception{
		return itemDAO.getNewItemList(itemDTO);
	}
   
	//인기글
	public List<ItemDTO> getPopularItemList(ItemDTO itemDTO,Pager pager)throws Exception{
        return itemDAO.getPopularItemList(itemDTO);
    }

	//카테고리 불러오기
	
	//최신글
	public List<ItemDTO> getNewItemList(ItemDTO itemDTO)throws Exception{
	    return itemDAO.getNewItemList(itemDTO);
	}
	
	//인기글
   public List<ItemDTO> getPopularItemList(ItemDTO itemDTO,Pager pager)throws Exception{
        return itemDAO.getPopularItemList(itemDTO);
    }
	

	/* 상품 총 개수 */
	public Long getTotal(ItemDTO itemDTO) throws Exception {
		System.out.println("Service Total");
		
		return itemDAO.getTotal(itemDTO);
	}
	
	/* 통합 검색 */
	public List<ItemDTO> getSearch(String search) throws Exception {
		System.out.println("Service Search");
		
		return itemDAO.getSearch(search); 
	}
	
	/* 최근 본 상품 */
	public List<ItemFileDTO> getProduct(Long item_num) throws Exception {
		System.out.println("Service Product");
		
		return itemDAO.getProduct(item_num);
	}
	
	
	public List<Category> getCategory() throws Exception {
		return itemDAO.getCategory();
	}
	
	//상품 등록
	public int setAdd(ItemDTO itemDTO, MultipartFile [] files, ServletContext servletContext) throws Exception {
		int result = itemDAO.setAdd(itemDTO);
		String path = "resources/upload/item";

		for(MultipartFile multipartFile:files) {
			if(multipartFile.isEmpty()) {
				continue; //비어있으면 다음꺼 실행
			}
			
			//상품 이미지파일 추가
			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
			ItemFileDTO itemFileDTO = new ItemFileDTO();
			itemFileDTO.setItem_num(itemDTO.getItem_num());
			itemFileDTO.setFileName(fileName);
			itemFileDTO.setOriName(multipartFile.getOriginalFilename());
			itemDAO.setAddFile(itemFileDTO);
		}
		return result;
	}
	

	public List<ItemDTO> getList(ItemDTO itemDTO,Pager pager) throws Exception {
		Long totalCount = itemDAO.getListCount(itemDTO);
		pager.setPerPage(12L);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		
		return itemDAO.getList(itemDTO,pager);

	}
	
	//상품 상세페이지 조회
	public ItemDTO getDetail(ItemDTO itemDTO) throws Exception {
		//조회수
		itemDAO.setHit(itemDTO);
		return itemDAO.getDetail(itemDTO);
	}
	
	//상품 수정
	public int setUpdate(ItemDTO itemDTO, MultipartFile []  files, ServletContext servletContext) throws Exception {
		//수정할 글을 먼저 불러옴
		int result = itemDAO.setUpdate(itemDTO); 
		
		if(result<1) {
			return result;
		}
		
		String path = "resources/upload/item";
		for(MultipartFile multipartFile:files) {
			if(multipartFile.isEmpty()) {
				continue;
			}
			
			//상품 이미지파일 추가
			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
			ItemFileDTO itemFileDTO = new ItemFileDTO();
			itemFileDTO.setItem_num(itemDTO.getItem_num());
			itemFileDTO.setFileName(fileName);
			itemFileDTO.setOriName(multipartFile.getOriginalFilename());
			itemDAO.setAddFile(itemFileDTO);
		}
		return result;
	}
	
	//상품 삭제
	public int setDelete(ItemDTO itemDTO) throws Exception {
		return itemDAO.setDelete(itemDTO);
	}
	
	//상품 수정할때 이미지파일 삭제
	public int setFileDelete(ItemFileDTO itemFileDTO, ServletContext servletContext) throws Exception {
		//저장되어 있는 이미지파일을 먼저 불러옴
		itemFileDTO = itemDAO.getFileDetail(itemFileDTO);
		
		//이미지파일 삭제
		int result = itemDAO.setFileDelete(itemFileDTO);
		String path = "resources/upload/item";
		if(0<result) {
			boolean check = fileManager.deleteFile(servletContext, path, itemFileDTO);
			System.out.println("fileDelete :"+check);
		}
		return result;
	}
	
	//좋아요 등록
	public int setLikeAdd(ItemLikeDTO itemLikeDTO) throws Exception {
		return itemDAO.setLikeAdd(itemLikeDTO);
	}
	
	//좋아요 취소
	public int setLikeDelete(ItemLikeDTO itemLikeDTO) throws Exception {
		return itemDAO.setLikeDelete(itemLikeDTO);
	}
	
	//회원당 해당 상품 좋아요 확인
	public ItemLikeDTO getLikeUser(ItemLikeDTO itemLikeDTO) throws Exception {
		return itemDAO.getLikeUser(itemLikeDTO);
	}
	
	//상품당 좋아요수 조회
	public Long getLikeItem(ItemLikeDTO itemLikeDTO) throws Exception {
		return itemDAO.getLikeItem(itemLikeDTO);
	}
	
	
	//후기 조회
	public List<ItemReviewDTO> getReview(ItemReviewDTO itemReviewDTO) throws Exception {
		return itemDAO.getReview(itemReviewDTO);
	}
	
	//후기 등록
	public int setReviewAdd(ItemReviewDTO itemReviewDTO,@RequestParam(value="rv_file", required = false) MultipartFile multipartFile, ServletContext servletContext) throws Exception {
		int result = itemDAO.setReviewAdd(itemReviewDTO);
		String realPath = "resources/upload/review";
		
		String fileName = fileManager.saveFile(servletContext, realPath, multipartFile);
		ItemFileDTO itemFileDTO = new ItemFileDTO();
		itemFileDTO.setItem_num(itemReviewDTO.getItem_num());
		itemFileDTO.setFileName(fileName);
		itemFileDTO.setOriName(multipartFile.getOriginalFilename());
		itemDAO.setAddFile(itemFileDTO);
		System.out.println(fileName);
		return result;
	}
	

	//후기 삭제
	public int setReviewDelete(ItemReviewDTO itemReviewDTO) throws Exception {
		return itemDAO.setReviewDelete(itemReviewDTO);
	}	


	public List<ItemReviewDTO> getReview(Pager pager, ItemReviewDTO itemReviewDTO) throws Exception {
		Long totalCount = itemDAO.getReviewCount(itemReviewDTO);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		
		return itemDAO.getReview(pager, itemReviewDTO);

	}
	
	//후기 수정
	public int setReviewUpdate(ItemReviewDTO itemReviewDTO) throws Exception {
		return itemDAO.setReviewUpdate(itemReviewDTO);
	}
	
	//후기수
	public Long getReviewCount(ItemReviewDTO itemReviewDTO) throws Exception {
		return itemDAO.getReviewCount(itemReviewDTO);
	}
}
