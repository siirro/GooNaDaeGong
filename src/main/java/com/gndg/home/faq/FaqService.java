package com.gndg.home.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gndg.home.util.Pager;

@Service
public class FaqService {
	
	@Autowired
	private FaqDAO faqDAO;
	
	public int deleteFaq(FaqDTO faqDTO)throws Exception{
		return faqDAO.deleteFaq(faqDTO);
	}
	
	public int updateFaq(FaqDTO faqDTO)throws Exception{
		return faqDAO.updateFaq(faqDTO);
	}
	
	public int addFaq(FaqDTO faqDTO)throws Exception{
		return faqDAO.addFaq(faqDTO);
	}
	
	public List<FaqDTO> getList(Pager pager, Long faq_cate)throws Exception{
		
		Long totalCount = faqDAO.getListCount(faq_cate);
		pager.setPerPage(5L);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		
		List<FaqDTO> ar = faqDAO.getList(pager, faq_cate);
		return ar;
	}
	
	

}
