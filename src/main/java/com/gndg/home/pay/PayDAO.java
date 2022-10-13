package com.gndg.home.pay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.util.OrderPager;

@Repository
public class PayDAO {
	
	@Autowired
	private SqlSession sqlsession;
	private final String NAMESPACE = "com.gndg.home.pay.PayDAO.";
	
	public int cancelPayment(PayDTO payDTO)throws Exception{
		return sqlsession.update(NAMESPACE+"cancelPayment", payDTO);
	}
	
	public int cancelPayment2(PayDTO payDTO)throws Exception{
		return sqlsession.update(NAMESPACE+"cancelPayment2", payDTO);
	}
	
	public List<PayDTO> getList(OrderPager orderPager)throws Exception{
		return sqlsession.selectList(NAMESPACE+"getList", orderPager);
	}
	
	public Long getListCount(OrderPager orderPager)throws Exception{
		return sqlsession.selectOne(NAMESPACE+"getListCount", orderPager);
	}
	
	public int addPay(PayDTO payDTO)throws Exception{
		return sqlsession.insert(NAMESPACE+"addPay", payDTO);
	}

}
