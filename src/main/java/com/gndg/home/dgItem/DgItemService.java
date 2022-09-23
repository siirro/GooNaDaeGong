package com.gndg.home.dgItem;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DgItemService {

	@Autowired
	private DgItemDAO dgItemDAO;
	
	/* 상품 수정*/
	public  DgItemDTO setUpdateItem(Long item_num) throws Exception {
		System.out.println("Service Update");
		
		return dgItemDAO.setUpdateItem(item_num);
	}
	
	/* 상품조회 + 카테고리 조인 */
	public DgItemDTO getViewItem(Long item_num) throws Exception {
		System.out.println("Service View");
		
		return dgItemDAO.getViewItem(item_num);
	}
	
	/* 상품목록 */
	public List<DgItemDTO> getListItem() throws Exception {
		System.out.println("Service List");
		
		return dgItemDAO.getListItem();
	}

	/* 상품등록 */
	public int setAddItem(DgItemDTO dgItemDTO) throws Exception {
		System.out.println("Service Add");
		
		return dgItemDAO.setAddItem(dgItemDTO);
	}

	/* 카테고리 불러오기 */
	public List<CategoryDTO> getCategory() throws Exception {
		System.out.println("Service Category");

		return dgItemDAO.getCategory();
	}
}
