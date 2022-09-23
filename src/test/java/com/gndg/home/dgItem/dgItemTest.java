package com.gndg.home.dgItem;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gndg.home.AbstractTest;
import com.gndg.home.dgItem.DgItemDAO;

public class dgItemTest extends AbstractTest{
	
	@Autowired
	private DgItemDAO dgItemDAO;
	
	@Test
	public void getCategoryTest() throws Exception {
		List<CategoryDTO> ar = dgItemDAO.getCategory();
		for(CategoryDTO ca : ar) {
			System.out.println("category : " + ca.getCate_name());
		}
		assertEquals(201, ar.size());
		
	}
}
