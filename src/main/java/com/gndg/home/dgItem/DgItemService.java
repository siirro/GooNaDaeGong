package com.gndg.home.dgItem;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.gndg.home.File.FileManager;
import com.gndg.home.util.Category;

@Service
public class DgItemService {

	@Autowired
	private DgItemDAO dgItemDAO;
	
	@Autowired
	private FileManager fileManager;
	
	/* 통합 검색 */
	public List<DgItemDTO> getSearch(String search) throws Exception {
		System.out.println("Service search");
		
		return dgItemDAO.getSearch(search); 
	}
	
	/* 최근 본 상품 */
	public List<DgItemFileDTO> getProduct(Long item_num) throws Exception {
		System.out.println("Service product");
		
		return dgItemDAO.getProduct(item_num);
	}
	
	/* 후기 가져오기 */
	public List<DgItemReviewDTO> getReply(Long item_num) throws Exception {
		System.out.println("Service getReply");
		
		return dgItemDAO.getReply(item_num);
	}
	
	/* 후기 작성 */
	public int setAddReply(DgItemReviewDTO dgItemReviewDTO) throws Exception {
		System.out.println("Service Reply");
		
		return dgItemDAO.setAddReply(dgItemReviewDTO);
	}
	
	/* 상품삭제 */
	public int deleteItem(Long item_num) throws Exception {
		System.out.println("Service Delete");
		
		return dgItemDAO.deleteItem(item_num);
	}
	
	/* 상품수정 */
	public int setUpdateItem(DgItemDTO dgItemDTO) throws Exception {
		System.out.println("Service Update");
		
		return dgItemDAO.setUpdateItem(dgItemDTO);
	}

	
	/* 상품조회 + 카테고리 조인 */
	public DgItemDetailDTO getDetailItem(Long item_num) throws Exception {
		System.out.println("Service Detail");
		
		return dgItemDAO.getDetailItem(item_num);
	}
	
	/* 상품 갯수 */
	public int getCount(Category category) throws Exception {
		
		return dgItemDAO.getCount(category);
	}
	
	/* 상품목록 */
	public List<DgItemDTO> getListItem(DgItemDTO dgItemDTO) throws Exception {
		System.out.println("Service List");
		
		return dgItemDAO.getListItem(dgItemDTO);
	}

	/* 상품등록  + 상품이미지  */
	public int setAddItem(DgItemDTO dgItemDTO, MultipartFile [] files, ServletContext servletContext) throws Exception {
		int result = dgItemDAO.setAddItem(dgItemDTO);
		System.out.println("Service Add");
		String path = "resources/upload/item";
		System.out.println("삐삐 ==" +dgItemDTO.getItem_num());
		System.out.println("삽입완?=="+dgItemDTO.getCate_num());
		
		for(MultipartFile multipartFile: files) {
				if(multipartFile.isEmpty()) {
					continue;
				}
			
			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
			DgItemFileDTO dgItemFileDTO = new DgItemFileDTO();
			dgItemFileDTO.setFileName(fileName);
			dgItemFileDTO.setOriName(multipartFile.getOriginalFilename());
			dgItemFileDTO.setItem_num(dgItemDTO.getItem_num());
			dgItemDAO.setAddFile(dgItemFileDTO);
		}
		
		return result;
	}

	/* 카테고리 불러오기 */
	public List<Category> getCategory() throws Exception {
		System.out.println("Service Category");

		return dgItemDAO.getCategory();
	}
}
