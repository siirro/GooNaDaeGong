package com.gndg.home.notice;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.util.Pager;

@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.notice.NoticeDAO.";
	
	public List<NoticeFileDTO> detailNoticeFileAll(NoticeFileDTO noticeFileDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"detailNoticeFileAll", noticeFileDTO);
	}
	
	public int deleteNoticeFileAll(NoticeFileDTO noticeFileDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"deleteNoticeFileAll", noticeFileDTO);
	}
	
	public int deleteNoticeFile(NoticeFileDTO noticeFileDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"deleteNoticeFile", noticeFileDTO);
	}
	
	public NoticeFileDTO detailNoticeFile(NoticeFileDTO noticeFileDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"detailNoticeFile", noticeFileDTO);
	}
	
	public int updateNotice(NoticeDTO noticeDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"updateNotice", noticeDTO);
	}
	
	public int deleteNotice(NoticeDTO noticeDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"deleteNotice", noticeDTO);
	}
	
	public int addNoticeFile(NoticeFileDTO noticeFileDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addNoticeFile", noticeFileDTO);
	}
	
	public int addNotice(NoticeDTO noticeDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addNotice", noticeDTO);
	}

	public List<NoticeDTO> getList(Pager pager, Long code)throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", pager.getStartRow());
		map.put("lastRow", pager.getLastRow());
		map.put("code", code);
		map.put("kind", pager.getKind());
		map.put("search", pager.getSearch());
		
		return sqlSession.selectList(NAMESPACE+"getList", map);
		
	}
	
	public List<NoticeDTO> getListHidden(Pager pager, Long code)throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("startRow", pager.getStartRow());
		map.put("lastRow", pager.getLastRow());
		map.put("code", code);
		map.put("kind", pager.getKind());
		map.put("search", pager.getSearch());
		
		return sqlSession.selectList(NAMESPACE+"getListHidden", map);
	}
	
	public Long getCountHidden(Pager pager, Long code)throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", code);
		map.put("kind", pager.getKind());

		map.put("search", pager.getSearch());
		
		return sqlSession.selectOne(NAMESPACE+"getCountHidden", map);
		
	}
	
	public Long getCount(Pager pager, Long code)throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("code", code);
		map.put("kind", pager.getKind());

		map.put("search", pager.getSearch());
		
		return sqlSession.selectOne(NAMESPACE+"getCount", map);
		
	}
	
	public NoticeDTO getDetail(NoticeDTO noticeDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getDetail", noticeDTO);
	}
}
