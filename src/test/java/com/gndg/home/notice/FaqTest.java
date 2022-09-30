package com.gndg.home.notice;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gndg.home.AbstractTest;
import com.gndg.home.faq.FaqDAO;
import com.gndg.home.faq.FaqDTO;
import com.gndg.home.util.Pager;

public class FaqTest extends AbstractTest{
	
	@Autowired
	private FaqDAO faqDAO;

	//겟리스트 성공
	@Test
	public void getList()throws Exception{
		Pager pager = new Pager();
		pager.setStartRow(1L);
		pager.setLastRow(10L);
		Long faq_cate = 7L;
		List<FaqDTO> ar = faqDAO.getList(pager, faq_cate);
		assertEquals(4, ar.size());
	}
	
//	@Test
//	public void getAllListCount()throws Exception{
//		Long result = faqDAO.getAllListCount();
//		assertNotNull(result);
//	}
	
//	@Test
//	public void getCount()throws Exception{
//		
//	}
	
//	@Test
//	public void getCount()throws Exception{
//		
//	}
	
//	@Test
//	public void getCount()throws Exception{
//		
//	}
	
	
}
