package com.gndg.home.notice;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.sql.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gndg.home.AbstractTest;
import com.gndg.home.faq.FaqDAO;
import com.gndg.home.faq.FaqDTO;
import com.gndg.home.pay.PayDAO;
import com.gndg.home.pay.PayDTO;
import com.gndg.home.util.Pager;

public class PayTest extends AbstractTest{
	
	@Autowired
	private PayDAO payDAO;

	//결제DB 저장
	@Test
	public void addPay()throws Exception{
		PayDTO payDTO = new PayDTO();
		payDTO.setImp_uid("11");
		
		payDTO.setPay_total(150L);
		payDTO.setPay_result(2L);
		payDTO.setPay_date("d");
		
		int result = payDAO.addPay(payDTO);
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
