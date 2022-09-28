package com.gndg.home.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {
	@Autowired
	private CartDAO cartDAO;
	
	
	//카트추가
	public int setAddCart(CartDTO cartDTO)throws Exception{
		return cartDAO.setAddCart(cartDTO);
	}
	//카트 목록
	public List<CartDTO> getItemList(CartDTO cartDTO)throws Exception{
		return cartDAO.getItemList(cartDTO);
	}
	//카트 회원정보
	public CartDTO getMemberCart(CartDTO cartDTO)throws Exception{
		return cartDAO.getMemberCart(cartDTO);
	}
	
	//카트 수량 수정
	public int setUpdateCart(CartDTO cartDTO)throws Exception{
		return cartDAO.setUpdateCart(cartDTO);
	}
	
	//카트삭제
	public int setDeleteCart(CartDTO cartDTO)throws Exception{
		return cartDAO.setDeleteCart(cartDTO);
	}

}
