package com.gndg.home.cart;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gndg.home.AbstractTest;

public class CartDAOTest extends AbstractTest{

	@Autowired
	private CartDAO cartDAO;
	
	@Test
//	public void CartAddTest()throws Exception {
//		CartDTO cartDTO = new CartDTO();
//		cartDTO.setUser_id("22");
//		cartDTO.setItem_num(41L);
//		cartDTO.setItem_count(2L);
//		int result = cartDAO.setAddCart(cartDTO);
//		
//		assertNotEquals(0, result);
//	}
	
//	public void UpdateCartTest()throws Exception{
//		CartDTO cartDTO = new CartDTO();
//		cartDTO.setCart_num(7L);
//		cartDTO.setItem_count(3L);
//		
//		int result = cartDAO.setUpdateCart(cartDTO);
//		assertNotEquals(0, result);
//	}
	
//	public void CartDeleteTest()throws Exception{
//		CartDTO cartDTO = new CartDTO();
//		cartDTO.setCart_num(6L);
//		int result = cartDAO.setDeleteCart(cartDTO);
//		
//		assertNotEquals(0, result);
//	}
	
//	public void CartItemList()throws Exception{
//		CartDTO cartDTO = new CartDTO();
//		cartDTO.setUser_id("22");
//		List<CartDTO> al = cartDAO.getItemList(cartDTO);
//
//		assertEquals(4L, al.size());
//	}
	public void CartMemberTest()throws Exception{
		CartDTO cartDTO = new CartDTO();
		cartDTO.setUser_id("2");
		 cartDTO = cartDAO.getMemberCart(cartDTO);
	}

}
