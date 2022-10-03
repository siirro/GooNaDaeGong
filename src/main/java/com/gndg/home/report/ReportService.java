package com.gndg.home.report;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReportService {
	
	@Autowired
	private ReportDAO reportDAO;
	
	public List<ReportDTO> getReportList()throws Exception{
		return reportDAO.getReportList();
	}

}
