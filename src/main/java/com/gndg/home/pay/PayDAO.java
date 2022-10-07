package com.gndg.home.pay;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PayDAO {
	
	@Autowired
	private SqlSession sqlsession;
	private final String NAMESPACE = "com.gndg.home.pay.PayDAO.";
	
	public int addPay(PayDTO payDTO)throws Exception{
		return sqlsession.insert(NAMESPACE+"addPay", payDTO);
	}

}
