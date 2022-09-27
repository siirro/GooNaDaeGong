package com.gndg.home.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.notice.NoticeDAO.";
	
	public int addNoticeFile(NoticeFileDTO noticeFileDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addNoticeFile", noticeFileDTO);
	}
	
	public int addNotice(NoticeDTO noticeDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addNotice", noticeDTO);
	}

	public List<NoticeDTO> getList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
		
	}
	
	public NoticeDTO getDetail(NoticeDTO noticeDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getDetail", noticeDTO);
	}
}
