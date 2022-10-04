package com.gndg.home.report;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gndg.home.util.Pager;

@Service
public class ReportService {
	
	@Autowired
	private ReportDAO reportDAO;
	
	public List<ReportDTO> getReportList(Pager pager)throws Exception{
		Long totalCount = reportDAO.getReportListCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		return reportDAO.getReportList(pager);
	}
	
	public ReportDTO getReportDetail(ReportDTO reportDTO)throws Exception{
		return reportDAO.getReportDetail(reportDTO);
	}
	
	public int updateStatus(ReportDTO reportDTO)throws Exception{
		return reportDAO.updateStatus(reportDTO);
	}
	
	public int updateYN(ReportDTO reportDTO)throws Exception{
		return reportDAO.updateYN(reportDTO);
	}

}
