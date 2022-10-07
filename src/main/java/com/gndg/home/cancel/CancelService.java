package com.gndg.home.cancel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gndg.home.orders.OrdersDTO;
import com.gndg.home.util.OrderPager;

@Service
public class CancelService {
	
	@Autowired
	private CancelDAO cancelDAO;
	
	public List<OrdersDTO> getList(OrderPager orderPager)throws Exception{
		Long totalCount = cancelDAO.getListCount(orderPager);
		orderPager.getNum(totalCount);
		orderPager.getRowNum();
		List<OrdersDTO> ar = cancelDAO.getList(orderPager);
		return ar;
	}

}
