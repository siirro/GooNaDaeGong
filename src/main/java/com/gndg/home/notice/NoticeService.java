package com.gndg.home.notice;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.gndg.home.File.FileManager;
import com.gndg.home.util.Pager;

@Service
public class NoticeService {
	
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Autowired
	private FileManager fileManager;
	
	public int deleteNoticeFile(NoticeFileDTO noticeFileDTO, ServletContext servletContext)throws Exception{
		noticeFileDTO = noticeDAO.detailNoticeFile(noticeFileDTO);
		int result = noticeDAO.deleteNoticeFile(noticeFileDTO);
		String path="resources/upload/notice";
		
		if(result>0) {
			fileManager.deleteFile(servletContext, path, noticeFileDTO);
		}
		
		return result;
	}
	
	public int updateNotice(NoticeDTO noticeDTO, MultipartFile [] files, ServletContext servletContext)throws Exception{
		int result = noticeDAO.updateNotice(noticeDTO);
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
	
	public int deleteNotice(NoticeDTO noticeDTO, ServletContext servletContext)throws Exception{
		NoticeFileDTO noticeFileDTO = new NoticeFileDTO();
		noticeFileDTO.setNt_num(noticeDTO.getNt_num());
		List<NoticeFileDTO> ar = noticeDAO.detailNoticeFileAll(noticeFileDTO);
		
		int result = noticeDAO.deleteNoticeFileAll(noticeFileDTO);
		//찐파일삭제
		for(int i=0; i<ar.size();i++) {
			String path = "resources/upload/notice";
			if(result>0) {
				fileManager.deleteFile(servletContext, path, ar.get(i));
			}
		}

		return noticeDAO.deleteNotice(noticeDTO);
	}
	
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
	
	public List<NoticeDTO> getList(Pager pager)throws Exception {
		
		Long totalCount = noticeDAO.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		List<NoticeDTO> ar = noticeDAO.getList(pager);
		return ar;
	}
	
	public List<NoticeDTO> getListHidden(Pager pager)throws Exception {
			
		Long totalCount = noticeDAO.getCountHidden(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		List<NoticeDTO> ar = noticeDAO.getListHidden(pager);
		return ar;
	}

	public NoticeDTO getDetail(NoticeDTO noticeDTO)throws Exception{
		return noticeDAO.getDetail(noticeDTO);
	}
		

}
