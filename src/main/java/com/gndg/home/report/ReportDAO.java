package com.gndg.home.report;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReportDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.report.ReportDAO.";
	
	public List<ReportDTO> getReportList()throws Exception{
		return sqlSession.selectList(NAMESPACE+"getReportList");
	}

}
