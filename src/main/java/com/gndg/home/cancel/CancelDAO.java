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
	
	public Long ableCS(OrdersDTO ordersDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"ableCS", ordersDTO);
	}
	
	public int addRefund(RefundDTO refundDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addRefund", refundDTO);
	}
	
	public List<OrdersDTO> getListR(OrderPager orderPager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getListR", orderPager);
	}
	
	public Long getListCountR(OrderPager orderPager)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getListCountR", orderPager);
	}
	
	public RefundDTO getDetailR(RefundDTO refundDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getDetailR", refundDTO);
	}
	
	
	
	
	
	
	public int addExchange(ExchangeDTO exchangeDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addExchange", exchangeDTO);
	}
	
	public List<OrdersDTO> getListE(OrderPager orderPager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getListE", orderPager);
	}
	
	public Long getListCountE(OrderPager orderPager)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getListCountE", orderPager);
	}
	
	public ExchangeDTO getDetailE(ExchangeDTO exchangeDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getDetailE", exchangeDTO);
	}
	
	
	
	
	
	
	public int addCancel(CancelDTO cancelDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addCancel", cancelDTO);
	}
	
	public List<OrdersDTO> getList(OrderPager orderPager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList", orderPager);
	}
	
	public Long getListCount(OrderPager orderPager)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getListCount", orderPager);
	}
	
	public CancelDTO getDetail(CancelDTO cancelDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getDetail", cancelDTO);
	}
	

}
