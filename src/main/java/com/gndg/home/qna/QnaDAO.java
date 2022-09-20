package com.gndg.home.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.notice.NoticeDTO;

@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.qna.QnaDAO.";

	public List<QnaDTO> getList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
		
	}

}
