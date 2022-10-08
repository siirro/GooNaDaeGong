package com.gndg.home.notice;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.sql.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gndg.home.AbstractTest;
import com.gndg.home.cart.CartDTO;
import com.gndg.home.faq.FaqDAO;
import com.gndg.home.faq.FaqDTO;
import com.gndg.home.member.MemberDTO;
import com.gndg.home.orders.OrdersDAO;
import com.gndg.home.orders.OrdersDTO;
import com.gndg.home.pay.PayDAO;
import com.gndg.home.pay.PayDTO;
import com.gndg.home.util.Pager;

public class PayTest extends AbstractTest{
	
	@Autowired
	private PayDAO payDAO;
	
	@Autowired
	private OrdersDAO ordersDAO;

	//결제DB 저장
//	@Test
//	public void addPay()throws Exception{
//		PayDTO payDTO = new PayDTO();
//		payDTO.setImp_uid("11");
//		
//		payDTO.setPay_total(150L);
//		payDTO.setPay_result(2L);
//		payDTO.setPay_date("d");
//		
//		int result = payDAO.addPay(payDTO);
//	}
	
	//주문창에서 카트에잇는 상품리스트뽑아오기
//	@Test
//	public void getOrderItem()throws Exception{
//		MemberDTO memberDTO = new MemberDTO();
//		memberDTO.setUser_id("11");
//		List<CartDTO> ar = ordersDAO.getOrderItem(memberDTO);
////		assertNotNull(ar);
//		assertEquals(2, ar.size());
//	}
	
	@Test
	public void getDetail()throws Exception{
		OrdersDTO ordersDTO = new OrdersDTO();
		ordersDTO.setMerchant_uid(1665221685045L);
		ordersDTO = ordersDAO.getDetail(ordersDTO);
		
	}
	
//	@Test
//	public void getCount()throws Exception{
//		
//	}
	
//	@Test
//	public void getCount()throws Exception{
//		
//	}
	
	
}
