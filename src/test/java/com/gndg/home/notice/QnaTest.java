package com.gndg.home.notice;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gndg.home.AbstractTest;
import com.gndg.home.qna.QnaDAO;
import com.gndg.home.qna.QnaDTO;
import com.gndg.home.qna.QnaService;
import com.gndg.home.util.Pager;

public class QnaTest extends AbstractTest{
	
	@Autowired
	private QnaDAO qnaDAO;

	//겟리스트 1단계는 성공. 2단계:서치까지 성공. 3단계:페이징
//	@Test
//	public void getList()throws Exception{
//		Pager pager = new Pager();
//		List<QnaDTO> ar = qnaDAO.getList(pager);
//		assertEquals(1, ar.size());
//	}

	//겟디테일 1단계 성공
//	@Test
//	public void getDetail()throws Exception{
//		QnaDTO qnaDTO = new QnaDTO();
//		qnaDTO.setQna_num(32L);
//		qnaDTO = qnaDAO.getDetail(qnaDTO);
//		assertNotNull(qnaDTO);
//	}
	
	//겟카운트 잘불러와짐
//	@Test
//	public void getCount()throws Exception{
//		Pager pager = new Pager();
//		QnaDTO qnaDTO = new QnaDTO();
//		Long count = qnaDAO.getCount(pager, qnaDTO.getCode());
//		assertNotNull(count);
//	}
	
	//답변 수정
//	@Test
//	public void updateQnaComment()throws Exception{
//		QnaDTO qnaDTO = new QnaDTO();
//		qnaDTO.setQna_num(168L);
//		qnaDTO.setQna_comment("테스트돌리기");
//		int result = qnaDAO.updateQnaComment(qnaDTO);
//		assertEquals(1, result);
//	}
	
	//답변 조회
//	@Test
//	public void getComment()throws Exception{
//		QnaDTO qnaDTO = new QnaDTO();
//		qnaDTO.setQna_num(168L);
//		
//		qnaDTO = qnaDAO.getComment(qnaDTO);
//		assertEquals("테스트돌리기", qnaDTO.getQna_comment());
//		
//	}
	
	//qna입력 성공
//	@Test
//	public void addQna()throws Exception{
//		QnaDTO qnaDTO = new QnaDTO();
//		qnaDTO.setUser_id("1");
//		qnaDTO.setQna_cate("기타");
//		qnaDTO.setQna_title("제목");
//		qnaDTO.setQna_contents("내용");
//		qnaDTO.setCode(1L);
//		int result = qnaDAO.addQna(qnaDTO);
//		assertEquals(1, result);
//	}
	
//	@Test
//	public void getCount()throws Exception{
//		
//	}
	
//	@Test
//	public void getCount()throws Exception{
//		
//	}
	
//	@Test
//	public void getCount()throws Exception{
//		
//	}
	
	
}
