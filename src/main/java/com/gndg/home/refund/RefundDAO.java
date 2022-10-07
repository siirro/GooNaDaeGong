package com.gndg.home.refund;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RefundDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.c.cDAO.";
	

}
