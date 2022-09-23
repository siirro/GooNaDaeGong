package com.gndg.home.qna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.notice.NoticeDTO;
import com.gndg.home.util.Pager;

@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.qna.QnaDAO.";
	
	//==============================================================
	
	//qna 입력
	public int addQna(QnaDTO qnaDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addQna", qnaDTO);
	}
	
	

	// qna 전체 리스트 - 관리자메뉴, 코드, 서치, 페이지
	public List<QnaDTO> getList(Pager pager, Long code)throws Exception{
		
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("startRow", pager.getStartRow());
		map.put("lastRow", pager.getLastRow());
		map.put("search", pager.getSearch());
		map.put("kind", pager.getKind());
		map.put("code", code);
		
		return sqlSession.selectList(NAMESPACE+"getList", map);
	}
	
	// qna 전체 리스트 - 글갯수
	public Long getCount(Pager pager, Long code)throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("startRow", pager.getStartRow());
		map.put("lastRow", pager.getLastRow());
		map.put("search", pager.getSearch());
		map.put("kind", pager.getKind());
		map.put("code", code);
		
		return sqlSession.selectOne(NAMESPACE+"getCount", map);
	}
	
	
	// qna 디테일 - 관리자메뉴
	public QnaDTO getDetail(QnaDTO qnaDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getDetail", qnaDTO);
	}
	
	// qna 답변 등록
	public int updateQnaComment(QnaDTO qnaDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"updateQnaComment", qnaDTO);
	}
	
	// qna 답변 조회
	public QnaDTO getComment(QnaDTO qnaDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getComment", qnaDTO);
	}

}
