package com.gndg.home.report;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.util.Pager;

@Repository
public class ReportDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.report.ReportDAO.";
	
	public List<ReportDTO> getReportList(Pager pager)throws Exception{
		return sqlSession.selectList(NAMESPACE+"getReportList", pager);
	}
	
	public Long getReportListCount(Pager pager)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getReportListCount", pager);
	}
	
	public ReportDTO getReportDetail(ReportDTO reportDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getReportDetail", reportDTO);
	}
	
	public int updateStatus(ReportDTO reportDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"updateStatus", reportDTO);
	}
	
	public int updateYN(ReportDTO reportDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"updateYN", reportDTO);
	}

}
