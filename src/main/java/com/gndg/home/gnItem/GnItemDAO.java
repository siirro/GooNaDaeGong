package com.gndg.home.gnItem;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.util.Category;

@Repository
public class GnItemDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.gnItem.GnItemDAO.";
	
	public List<Category> getCategory() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getCategory");
	}
	
	public int setGnItem(GnItemDTO gnItemDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setGnItem", gnItemDTO);
	}
	
	public List<GnItemDTO> getGnList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getGnList");
	}
	
	public GnItemDTO getGnDetail(GnItemDTO gnItemDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getGnDetail", gnItemDTO);
	}
}
