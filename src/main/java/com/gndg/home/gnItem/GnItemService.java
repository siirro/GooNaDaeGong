package com.gndg.home.gnItem;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.gndg.home.File.FileManager;
import com.gndg.home.util.Category;

@Service
public class GnItemService {

	@Autowired
	private GnItemDAO gnItemDAO;
	@Autowired
	private FileManager fileManager;
	
	
	public List<Category> getCategory() throws Exception {
		return gnItemDAO.getCategory();
	}
	
	public int setAdd(GnItemDTO gnItemDTO, MultipartFile [] files, ServletContext servletContext) throws Exception {
		int result = gnItemDAO.setAdd(gnItemDTO);
		String path = "resources/upload/gnItem";

		for(MultipartFile multipartFile:files) {
			if(multipartFile.isEmpty()) {
				continue; //비어있으면 다음꺼 실행
			}
			
			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
			GnItemFileDTO gnItemFileDTO = new GnItemFileDTO();
			gnItemFileDTO.setItem_num(gnItemDTO.getItem_num());
			gnItemFileDTO.setFileName(fileName);
			gnItemFileDTO.setOriName(multipartFile.getOriginalFilename());
			gnItemDAO.setAddFile(gnItemFileDTO);
		}
		return result;
	}
	
	public List<GnItemDTO> getList() throws Exception {
		return gnItemDAO.getList();
	}
	
	public GnItemDTO getDetail(GnItemDTO gnItemDTO) throws Exception {
		//조회수
		gnItemDAO.setHit(gnItemDTO);
		return gnItemDAO.getDetail(gnItemDTO);
	}
	
	public int setUpdate(GnItemDTO gnItemDTO, MultipartFile []  files, ServletContext servletContext) throws Exception {
		int result = gnItemDAO.setUpdate(gnItemDTO);
		if(result<1) {
			return result;
		}
		
		String path = "resources/upload/gnItem";
		for(MultipartFile multipartFile:files) {
			if(multipartFile.isEmpty()) {
				continue;
			}
			
			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
			GnItemFileDTO gnItemFileDTO = new GnItemFileDTO();
			gnItemFileDTO.setItem_num(gnItemDTO.getItem_num());
			gnItemFileDTO.setFileName(fileName);
			gnItemFileDTO.setOriName(multipartFile.getOriginalFilename());
			gnItemDAO.setAddFile(gnItemFileDTO);
		}
		return result;
	}
	
	public int setDelete(GnItemDTO gnItemDTO) throws Exception {
		return gnItemDAO.setDelete(gnItemDTO);
	}
	
	public int setFileDelete(GnItemFileDTO gnItemFileDTO, ServletContext servletContext) throws Exception {
		gnItemFileDTO = gnItemDAO.getFileDetail(gnItemFileDTO);
		int result = gnItemDAO.setFileDelete(gnItemFileDTO);
		String path = "resources/upload/gnItem";
		if(0<result) {
			boolean check = fileManager.deleteFile(servletContext, path, gnItemFileDTO);
			System.out.println("fileDelete :"+check);
		}
		return result;
	}
	
	public int setLikeAdd(GnItemLikeDTO gnItemLikeDTO) throws Exception {
		return gnItemDAO.setLikeAdd(gnItemLikeDTO);
	}
	
	public int setLikeDelete(GnItemLikeDTO gnItemLikeDTO) throws Exception {
		return gnItemDAO.setLikeDelete(gnItemLikeDTO);
	}
	
	public GnItemLikeDTO getLikeUser(GnItemLikeDTO gnItemLikeDTO) throws Exception {
		return gnItemDAO.getLikeUser(gnItemLikeDTO);
	}
	
	public Long getLikeItem(GnItemLikeDTO gnItemLikeDTO) throws Exception {
		return gnItemDAO.getLikeItem(gnItemLikeDTO);
	}
	
	public int setHit(GnItemDTO gnItemDTO) throws Exception {
		return gnItemDAO.setHit(gnItemDTO);
	}
	
	public int setStateUpdate(GnItemDTO gnItemDTO) throws Exception {
		return gnItemDAO.setStateUpdate(gnItemDTO);
	}
}
