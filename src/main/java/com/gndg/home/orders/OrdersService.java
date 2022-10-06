package com.gndg.home.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrdersService {
	
	@Autowired
	private OrdersDAO ordersDAO;
	
	public int addOrders(OrdersDTO ordersDTO)throws Exception{
		return ordersDAO.addOrders(ordersDTO);
	}

}
