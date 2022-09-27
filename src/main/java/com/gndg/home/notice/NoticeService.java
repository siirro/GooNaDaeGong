package com.gndg.home.notice;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.gndg.home.File.FileManager;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Autowired
	private FileManager fileManager;
	
	public int addNotice(NoticeDTO noticeDTO, MultipartFile [] files, ServletContext servletContext)throws Exception{
		int result = noticeDAO.addNotice(noticeDTO);
		String path = "resources/upload/notice";
		
		for(MultipartFile multipartFile : files) {
			if(multipartFile.isEmpty()) {
				continue;
			}
			
			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
			NoticeFileDTO noticeFileDTO = new NoticeFileDTO();
			noticeFileDTO.setFileName(fileName);
			noticeFileDTO.setOriName(multipartFile.getOriginalFilename());
			noticeFileDTO.setNt_num(noticeDTO.getNt_num());
			
			noticeDAO.addNoticeFile(noticeFileDTO);
		}
		
		
		
		return result;
	}
	
	public List<NoticeDTO> getList()throws Exception {
		return noticeDAO.getList();
	}
	
	public NoticeDTO getDetail(NoticeDTO noticeDTO)throws Exception{
		return noticeDAO.getDetail(noticeDTO);
	}
		

}
