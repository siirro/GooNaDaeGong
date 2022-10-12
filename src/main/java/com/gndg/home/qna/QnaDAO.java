package com.gndg.home.qna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.member.MemberDTO;
import com.gndg.home.notice.NoticeDTO;
import com.gndg.home.orders.OrdersDTO;
import com.gndg.home.util.Pager;

@Repository
public class QnaDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.qna.QnaDAO.";
	
	//==============================================================
	
	public int deleteNoticeFile(QnaDTO qnaDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"deleteNoticeFile", qnaDTO);
	}
	
	public QnaFileDTO detailQnaFile(QnaDTO qnaDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"detailQnaFile", qnaDTO);
	}
	
	public int updateQna(QnaDTO qnaDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"updateQna", qnaDTO);
	}
	
	public List<OrdersDTO> getOrders(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getOrders", memberDTO);
	}
	
	
	public int addQnaFile(QnaFileDTO qnaFileDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(NAMESPACE+"addQnaFile", qnaFileDTO);
	}
	
	//qna 입력
	public int addQna(QnaDTO qnaDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addQna", qnaDTO);
	}
	
	

	// qna 전체 리스트 - 관리자메뉴, 코드, 서치, 페이지
	public List<QnaDTO> getList(Pager pager, String qna_status)throws Exception{
		
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("startRow", pager.getStartRow());
		map.put("lastRow", pager.getLastRow());
		map.put("search", pager.getSearch());
		map.put("kind", pager.getKind());
		map.put("qna_status", qna_status);
		
		return sqlSession.selectList(NAMESPACE+"getList", map);
	}
	
	// qna 전체 리스트 - 글갯수
	public Long getCount(Pager pager, String qna_status)throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("startRow", pager.getStartRow());
		map.put("lastRow", pager.getLastRow());
		map.put("search", pager.getSearch());
		map.put("kind", pager.getKind());
		map.put("qna_status", qna_status);

		
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
	
	public int statusChange(QnaDTO qnaDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"statusChange", qnaDTO);
	}

}
