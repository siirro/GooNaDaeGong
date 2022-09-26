package com.gndg.home.dgItem;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DgItemDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.dgItem.DgItemDAO.";
	
	/* 상품조회 + 카테고리 조인*/
	public DgItemDTO getDetailItem(Long item_num) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getDetailItem", item_num);
	}
	
	/* 상품목록 */
	public List<DgItemDTO> getListItem() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getListItem");
	}
	
	/* 상품등록 */
	public int setAddItem(DgItemDTO dgItemDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setAddItem", dgItemDTO);
	}
	
	/* 카테고리 불러오기 */
	public List<CategoryDTO> getCategory() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getCategory");
	}
}
