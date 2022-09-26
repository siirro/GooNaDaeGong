package com.gndg.home.gnItem;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gndg.home.AbstractTest;
import com.gndg.home.util.Category;

public class GnItemDAOTest extends AbstractTest {

	@Autowired
	public GnItemDAO gnItemDAO;
	
	@Test
	public void getCategoryTest() throws Exception {
		List<Category> ar = gnItemDAO.getCategory();
		assertEquals(153, ar.size());
	}
	
	@Test
	public void setGnItemTest() throws Exception {
		GnItemDTO gnItemDTO = new GnItemDTO();
		gnItemDTO.setItem_num(2L);
		gnItemDTO.setCate_num("1111");
		gnItemDTO.setUser_id("ㅇㅅㅇ");
		gnItemDTO.setItem_name("아이폰12pro");
		gnItemDTO.setItem_contents("아이폰12pro A급 판매합니다");
		gnItemDTO.setItem_price(500000L);
		gnItemDTO.setItem_deal("안전거래");
		int result = gnItemDAO.setGnItem(gnItemDTO);
		assertEquals(1, result);
	}
}
