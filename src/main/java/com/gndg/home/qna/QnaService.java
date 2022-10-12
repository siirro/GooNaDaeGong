package com.gndg.home.qna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.gndg.home.File.FileManager;
import com.gndg.home.member.MemberDTO;
import com.gndg.home.notice.NoticeFileDTO;
import com.gndg.home.orders.GoodsOrdersDTO;
import com.gndg.home.orders.OrdersDTO;
import com.gndg.home.util.Pager;

@Service
public class QnaService {
	
	@Autowired
	private QnaDAO qnaDAO;
	
	@Autowired
	private FileManager fileManager;
	
	public int deleteQnaFile(QnaFileDTO qnaFileDTO, ServletContext servletContext)throws Exception{
		qnaFileDTO = qnaDAO.detailQnaFile(qnaFileDTO);
		
		int result = qnaDAO.deleteNoticeFile(qnaFileDTO);
		String path="resources/upload/qna";
		
		if(result>0) {
			fileManager.deleteFile(servletContext, path, qnaFileDTO);
		}
		
		return result;
		
	}
	
	
	public int updateQna(QnaDTO qnaDTO, MultipartFile [] files, ServletContext servletContext)throws Exception{
		int result = qnaDAO.updateQna(qnaDTO);
//		String path = "resources/upload/notice";
//		
//		for(MultipartFile multipartFile : files) {
//			if(multipartFile.isEmpty()) {
//				continue;
//			}
//			
//			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
//			NoticeFileDTO noticeFileDTO = new NoticeFileDTO();
//			noticeFileDTO.setFileName(fileName);
//			noticeFileDTO.setOriName(multipartFile.getOriginalFilename());
//			noticeFileDTO.setNt_num(qnaDTO.getQna_num());
//			
//			qnaDAO.addQnaFile(qnaFileDTO);
//		}

		
		return result;
	}
	
	
	public List<OrdersDTO> getOrders(MemberDTO memberDTO)throws Exception{
		return qnaDAO.getOrders(memberDTO);
	}
	
	public int addQna(QnaDTO qnaDTO, MultipartFile [] files, ServletContext servletContext)throws Exception{
		int result = qnaDAO.addQna(qnaDTO);
		String path = "resources/upload/qna";
		
		for(MultipartFile multipartFile : files) {
			if(multipartFile.isEmpty()) {
				continue;
			}
			
			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
			QnaFileDTO qnaFileDTO = new QnaFileDTO();
			qnaFileDTO.setFileName(fileName);
			qnaFileDTO.setOriName(multipartFile.getOriginalFilename());
			
			qnaFileDTO.setQna_num(qnaDTO.getQna_num());
			qnaDAO.addQnaFile(qnaFileDTO);
		}
		
		
		
		return result;

	}
		
	public List<QnaDTO> getList(Pager pager, String qna_status) throws Exception{
		Long totalCount = qnaDAO.getCount(pager, qna_status);
		pager.getNum(totalCount);
		pager.getRowNum();
		List<QnaDTO> ar = qnaDAO.getList(pager, qna_status);
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
	
	public int statusChange(QnaDTO qnaDTO)throws Exception{
		qnaDTO = qnaDAO.getDetail(qnaDTO);
		return qnaDAO.statusChange(qnaDTO);
	}
}
