package com.gndg.home.qna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gndg.home.util.Pager;

@Service
public class QnaService {
	
	@Autowired
	private QnaDAO qnaDAO;
		
	public List<QnaDTO> getList(Pager pager, Long code) throws Exception{
		Long totalCount = qnaDAO.getCount(pager, code);
		pager.getNum(totalCount);
		pager.getRowNum();
		List<QnaDTO> ar = qnaDAO.getList(pager, code);
		return ar;
	}
	
	public QnaDTO getDetail(QnaDTO qnaDTO) throws Exception{
		return qnaDAO.getDetail(qnaDTO);
	}
	
	public int updateQnaComment(QnaDTO qnaDTO)throws Exception{
		return qnaDAO.updateQnaComment(qnaDTO);
	}
	
	public QnaDTO getComment(QnaDTO qnaDTO)throws Exception{
		return qnaDAO.getComment(qnaDTO);
	}
}
