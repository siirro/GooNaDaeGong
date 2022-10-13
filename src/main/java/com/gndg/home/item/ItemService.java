package com.gndg.home.item;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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
	
	public int setAdd(ItemDTO itemDTO, MultipartFile [] files, ServletContext servletContext) throws Exception {
		int result = itemDAO.setAdd(itemDTO);
		String path = "resources/upload/item";

		for(MultipartFile multipartFile:files) {
			if(multipartFile.isEmpty()) {
				continue; //비어있으면 다음꺼 실행
			}
			
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
		Long totalCount = itemDAO.getListCount();
		pager.setPerPage(12L);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		
		return itemDAO.getList(pager);

	}
	
	public ItemDTO getDetail(ItemDTO itemDTO) throws Exception {
		//조회수
		itemDAO.setHit(itemDTO);
		return itemDAO.getDetail(itemDTO);
	}
	
	public int setUpdate(ItemDTO itemDTO, MultipartFile []  files, ServletContext servletContext) throws Exception {
		int result = itemDAO.setUpdate(itemDTO);
		if(result<1) {
			return result;
		}
		
		String path = "resources/upload/item";
		for(MultipartFile multipartFile:files) {
			if(multipartFile.isEmpty()) {
				continue;
			}
			
			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
			ItemFileDTO itemFileDTO = new ItemFileDTO();
			itemFileDTO.setItem_num(itemDTO.getItem_num());
			itemFileDTO.setFileName(fileName);
			itemFileDTO.setOriName(multipartFile.getOriginalFilename());
			itemDAO.setAddFile(itemFileDTO);
		}
		return result;
	}
	
	public int setDelete(ItemDTO itemDTO) throws Exception {
		return itemDAO.setDelete(itemDTO);
	}
	
	public int setFileDelete(ItemFileDTO itemFileDTO, ServletContext servletContext) throws Exception {
		itemFileDTO = itemDAO.getFileDetail(itemFileDTO);
		int result = itemDAO.setFileDelete(itemFileDTO);
		String path = "resources/upload/item";
		if(0<result) {
			boolean check = fileManager.deleteFile(servletContext, path, itemFileDTO);
			System.out.println("fileDelete :"+check);
		}
		return result;
	}
	
	public int setLikeAdd(ItemLikeDTO itemLikeDTO) throws Exception {
		return itemDAO.setLikeAdd(itemLikeDTO);
	}
	
	public int setLikeDelete(ItemLikeDTO itemLikeDTO) throws Exception {
		return itemDAO.setLikeDelete(itemLikeDTO);
	}
	
	public ItemLikeDTO getLikeUser(ItemLikeDTO itemLikeDTO) throws Exception {
		return itemDAO.getLikeUser(itemLikeDTO);
	}
	
	public Long getLikeItem(ItemLikeDTO itemLikeDTO) throws Exception {
		return itemDAO.getLikeItem(itemLikeDTO);
	}
	
	public int setHit(ItemDTO itemDTO) throws Exception {
		return itemDAO.setHit(itemDTO);
	}
	
	public int setReviewAdd(ItemReviewDTO itemReviewDTO, MultipartFile multipartFile, ServletContext servletContext) throws Exception {
		int result = itemDAO.setReviewAdd(itemReviewDTO);
		String realPath = servletContext.getRealPath("resources/upload/review");
		System.out.println("RealPath : "+realPath);
		File file = new File(realPath);
		if(!multipartFile.isEmpty()) {
			if(!file.exists()) {
				file.mkdirs();
			}
			
			String fileName = fileManager.saveFile(servletContext, realPath, multipartFile);
			itemReviewDTO.setRv_file(fileName);
			itemDAO.setReviewAdd(itemReviewDTO);
		}
		return result;
	}
	
	public List<ItemReviewDTO> getReview(Pager pager, ItemReviewDTO itemReviewDTO) throws Exception {
		Long totalCount = itemDAO.getReviewCount(itemReviewDTO);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		
		return itemDAO.getReview(pager, itemReviewDTO);
	}
	
	
	
	public Long getReviewCount(ItemReviewDTO itemReviewDTO) throws Exception {
		return itemDAO.getReviewCount(itemReviewDTO);
	}
	
}
