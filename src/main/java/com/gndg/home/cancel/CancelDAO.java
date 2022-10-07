package com.gndg.home.cancel;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.orders.OrdersDTO;
import com.gndg.home.util.OrderPager;
import com.gndg.home.util.Pager;

@Repository
public class CancelDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.cancel.CancelDAO.";
	
	public List<OrdersDTO> getList(OrderPager orderPager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList", orderPager);
	}
	
	public Long getListCount(OrderPager orderPager)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getListCount", orderPager);
	}
	

}
