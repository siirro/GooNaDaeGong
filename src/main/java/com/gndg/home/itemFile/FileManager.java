package com.gndg.home.itemFile;

import java.io.File;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;


@Component
public class FileManager {
	
	//save
	public String saveFile(ServletContext servletContext, String path, MultipartFile multipartFile) throws Exception {
		
		//1.저장할 폴더의 실제 경로 반환(OS기준)
		String realPath = servletContext.getRealPath(path);
		System.out.println("RealPath : " + realPath);
		
		//2.폴더(directory) 체크
		//저장할 폴더의 정보를 가지는 자바 객체 생성
		File file = new File(realPath);
		if(!file.exists()) {
			file.mkdirs();
		}
		
		//3.저장할 파일명 생성
		String fileName = UUID.randomUUID().toString();
		fileName = fileName + "_" + multipartFile.getOriginalFilename();
		
		//4.HDD에 저장
		file = new File(file, fileName); //부모, 자식
		multipartFile.transferTo(file);
		
		return fileName;
	}
	
	
	//delete
	public boolean deleteFile(ServletContext servletContext, String path, ItemFileDTO itemFileDTO) throws Exception {
		String realPath = servletContext.getRealPath(path);
		System.out.println("RealPath : "+realPath);
		File file = new File(realPath, itemFileDTO.getIf_fileName());
		
		return file.delete();
	}
	
}
