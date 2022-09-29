package com.gndg.home.faq;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.util.Pager;

@Repository
public class FaqDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.faq.FaqDAO.";
	
	public List<FaqDTO> getAllList(Pager pager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getAllList", pager);
	}
	
	public Long getAllListCount()throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getAllListCount");
	}
	
	

}
