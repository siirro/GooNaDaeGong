package com.gndg.home.faq;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gndg.home.util.Pager;

@Service
public class FaqService {
	
	@Autowired
	private FaqDAO faqDAO;
	
	public List<FaqDTO> getAllList(Pager pager)throws Exception{
		
		Long totalCount = faqDAO.getAllListCount();
		pager.getNum(totalCount);
		pager.getRowNum();
		
		List<FaqDTO> ar = faqDAO.getAllList(pager);
		return ar;
	}
	
	

}
