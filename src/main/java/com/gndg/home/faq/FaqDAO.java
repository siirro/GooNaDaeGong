package com.gndg.home.faq;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.util.Pager;

@Repository
public class FaqDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.faq.FaqDAO.";
	
	public int deleteFaqFileAll(FaqFileDTO faqFileDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"deleteFaqFileAll", faqFileDTO);
	}
	
	public List<FaqFileDTO> detailFaqFileAll(FaqFileDTO faqFileDTO)throws Exception{
		return sqlSession.selectList(NAMESPACE+"detailFaqFileAll", faqFileDTO);
	}
	
	public int deleteFaqFile(FaqFileDTO faqFileDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"deleteFaqFile", faqFileDTO);
	}
	
	public FaqFileDTO detailFaqFile(FaqFileDTO faqFileDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"detailFaqFile", faqFileDTO);
	}
	
	public int addFaqFile(FaqFileDTO faqFileDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addFaqFile", faqFileDTO);
	}
	
	public int deleteFaq(FaqDTO faqDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"deleteFaq", faqDTO);
	}
	
	public int updateFaq(FaqDTO faqDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"updateFaq", faqDTO);
	}
	
	public int addFaq(FaqDTO faqDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"addFaq", faqDTO);
	}
	
	public List<FaqDTO> getList(Pager pager, Long faq_cate)throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("startRow", pager.getStartRow());
		map.put("lastRow", pager.getLastRow());
		map.put("faq_cate", faq_cate);
		return sqlSession.selectList(NAMESPACE+"getList", map);
	}
	
	public Long getListCount(Long faq_cate)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getListCount", faq_cate);
	}
	
	public FaqDTO getDetail(FaqDTO faqDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getDetail", faqDTO);
	}
	
	

}
