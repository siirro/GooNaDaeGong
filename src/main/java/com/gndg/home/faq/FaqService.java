package com.gndg.home.faq;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.gndg.home.File.FileManager;
import com.gndg.home.notice.NoticeFileDTO;
import com.gndg.home.util.Pager;

@Service
public class FaqService {
	
	@Autowired
	private FaqDAO faqDAO;
	
	@Autowired
	private FileManager fileManager;
	
	
	public int deleteFaqFile(FaqFileDTO faqFileDTO, ServletContext servletContext)throws Exception {
		faqFileDTO = faqDAO.detailFaqFile(faqFileDTO);
		
		int result = faqDAO.deleteFaqFile(faqFileDTO);
		String path="resources/upload/faq";
		
		if(result>0) {
			fileManager.deleteFile(servletContext, path, faqFileDTO);
		}
		
		return result;
	}
	
	public int deleteFaq(FaqDTO faqDTO, ServletContext servletContext)throws Exception{
		FaqFileDTO faqFileDTO = new FaqFileDTO();
		faqFileDTO.setFaq_num(faqDTO.getFaq_num());
		List<FaqFileDTO> ar = faqDAO.detailFaqFileAll(faqFileDTO);
		
		int result = faqDAO.deleteFaqFileAll(faqFileDTO);
		
		for(int i=0;i<ar.size();i++) {
			String path = "resources/upload/faq";
			if(result>0) {
				fileManager.deleteFile(servletContext, path, ar.get(i));
			}
		}
		return faqDAO.deleteFaq(faqDTO);
	}
	
	public int updateFaq(FaqDTO faqDTO, MultipartFile [] files, ServletContext servletContext)throws Exception{
		int result = faqDAO.updateFaq(faqDTO);
		String path = "resources/upload/faq";
		
		for(MultipartFile multipartFile : files) {
			if(multipartFile.isEmpty()) {
				continue;
			}
			
			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
			FaqFileDTO faqFileDTO = new FaqFileDTO();
			faqFileDTO.setFileName(fileName);
			faqFileDTO.setOriName(multipartFile.getOriginalFilename());
			faqFileDTO.setFaq_num(faqDTO.getFaq_num());
			
			faqDAO.addFaqFile(faqFileDTO);
			
			
		}
		
		return result;
	}
	
	public int addFaq(FaqDTO faqDTO, MultipartFile [] files, ServletContext servletContext)throws Exception{
		int result = faqDAO.addFaq(faqDTO);
		String path = "resources/upload/faq";
		
		for(MultipartFile multipartFile : files) {
			if(multipartFile.isEmpty()) {
				continue;
			}
			
			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
			FaqFileDTO faqFileDTO = new FaqFileDTO();
			faqFileDTO.setFileName(fileName);
			faqFileDTO.setOriName(multipartFile.getOriginalFilename());
			faqFileDTO.setFaq_num(faqDTO.getFaq_num());
			
			faqDAO.addFaqFile(faqFileDTO);
		}
		
		
		return result;
	}
	
	public List<FaqDTO> getList(Pager pager, Long faq_cate)throws Exception{
		
		Long totalCount = faqDAO.getListCount(faq_cate);
		pager.setPerPage(5L);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		List<FaqDTO> ar = faqDAO.getList(pager, faq_cate);
		return ar;
	}
	
	public FaqDTO getDetail(FaqDTO faqDTO)throws Exception{
		return faqDAO.getDetail(faqDTO);
	}
	
	

}
