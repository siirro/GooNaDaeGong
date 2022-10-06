package com.gndg.home.orders;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.pay.PayDTO;

@Repository
public class OrdersDAO {
	
	@Autowired
	private SqlSession sqlsession;
	private final String NAMESPACE = "com.gndg.home.orders.OrdersDAO.";
	
	public int addOrders(OrdersDTO ordersDTO)throws Exception{
		return sqlsession.insert(NAMESPACE+"addOrders", ordersDTO);
	}
	
	public List<OrdersDTO> getList()throws Exception{
		return sqlsession.selectList(NAMESPACE+"getList");
	}

}
