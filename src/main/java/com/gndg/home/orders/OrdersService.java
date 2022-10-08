package com.gndg.home.orders;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gndg.home.cart.CartDTO;
import com.gndg.home.member.MemberDTO;
import com.gndg.home.util.OrderPager;

@Service
public class OrdersService {
	
	@Autowired
	private OrdersDAO ordersDAO;
	
	public int updateStatus(OrdersDTO ordersDTO)throws Exception{
		return ordersDAO.updateStatus(ordersDTO);
	}
	
	public OrdersDTO getDetail(OrdersDTO ordersDTO)throws Exception{
		return ordersDAO.getDetail(ordersDTO);
	}
	
	public int addGoodsOrder(GoodsOrdersDTO goodsorderDTO)throws Exception{
		return ordersDAO.addGoodsOrder(goodsorderDTO);
	}
	
	public List<CartDTO> getOrderItem(MemberDTO memberDTO)throws Exception{
		return ordersDAO.getOrderItem(memberDTO);
	}
	
	public int addOrders(OrdersDTO ordersDTO)throws Exception{
		return ordersDAO.addOrders(ordersDTO);
	}
	
	public List<OrdersDTO> getList(OrderPager orderPager, OrdersDTO ordersDTO)throws Exception{
		Long totalCount = ordersDAO.getListCount(orderPager, ordersDTO);
		orderPager.getNum(totalCount);
		orderPager.getRowNum();
		
		List<OrdersDTO> ar = ordersDAO.getList(orderPager, ordersDTO);
		return ar;
	}

}
