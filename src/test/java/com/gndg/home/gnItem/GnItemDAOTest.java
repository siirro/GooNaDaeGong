package com.gndg.home.gnItem;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gndg.home.AbstractTest;
import com.gndg.home.item.ItemDAO;
import com.gndg.home.item.ItemDTO;
import com.gndg.home.item.ItemFileDTO;
import com.gndg.home.util.Category;

public class GnItemDAOTest extends AbstractTest {

	@Autowired
	public ItemDAO gnItemDAO;
	
	//@Test
	public void getCategoryTest() throws Exception {
		List<Category> ar = gnItemDAO.getCategory();
		assertEquals(153, ar.size());
	}
	
	//@Test
	public void setAddTest() throws Exception {
		
		for(int i=1; i<60; i++) {
			ItemDTO gnItemDTO = new ItemDTO();
			gnItemDTO.setCate_num("1234");
			gnItemDTO.setUser_id("11");
			gnItemDTO.setItem_name("아이폰"+i+" Pro Max");
			gnItemDTO.setItem_contents("상품내용");
			gnItemDTO.setItem_price(10000000L+i);
			gnItemDTO.setItem_deal("안전거래");
			gnItemDTO.setItem_condition("새상품(미개봉)");
			int result = gnItemDAO.setAdd(gnItemDTO);
		}
		System.out.println("Finish");
	}
	
	//@Test
	public void setAddFileTest() throws Exception {
		ItemFileDTO gnItemFileDTO = new ItemFileDTO();
		gnItemFileDTO.setFileNum(4L);
		gnItemFileDTO.setItem_num(83L);
		gnItemFileDTO.setFileName("123456789_img2.jpg");
		gnItemFileDTO.setOriName("img2.jpg");
		int result = gnItemDAO.setAddFile(gnItemFileDTO);
		assertEquals(1, result);
	}
	
	//@Test
	public void setUpdateTest() throws Exception {
		ItemDTO gnItemDTO = new ItemDTO();
		gnItemDTO.setCate_num("1234");
		gnItemDTO.setItem_name("test");
		gnItemDTO.setItem_contents("test");
		gnItemDTO.setItem_price(1234L);
		gnItemDTO.setItem_deal("test");
		gnItemDTO.setItem_condition("test");
		gnItemDTO.setItem_num(121L);
		int result = gnItemDAO.setUpdate(gnItemDTO);
		assertEquals(1, result);
	}
	
	@Test
	public void setDeleteTest() throws Exception {
		ItemDTO gnItemDTO = new ItemDTO();
		gnItemDTO.setItem_num(489L);
		int result = gnItemDAO.setDelete(gnItemDTO);
		assertEquals(1, result);
	}
	
}
