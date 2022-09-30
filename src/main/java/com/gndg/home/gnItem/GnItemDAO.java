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
	
	public int setAdd(GnItemDTO gnItemDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAdd", gnItemDTO);
	}
	
	public int setAddFile(GnItemFileDTO gnItemFileDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAddFile", gnItemFileDTO);
	}
	
	public List<GnItemDTO> getList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public GnItemDTO getDetail(GnItemDTO gnItemDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getDetail", gnItemDTO);
	}
	
	public int setUpdate(GnItemDTO gnItemDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", gnItemDTO);
	}
	
	public int setDelete(GnItemDTO gnItemDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", gnItemDTO);
	}
}
