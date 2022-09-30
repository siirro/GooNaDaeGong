package com.gndg.home.dgItem;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.File.FileDTO;
import com.gndg.home.util.Category;

@Repository
public class DgItemDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.dgItem.DgItemDAO.";
	
	/* 상품이미지 */
	public int setAddFile(DgItemFileDTO dgItemFileDTO) throws Exception { 
		return sqlSession.insert(NAMESPACE+"setAddFile", dgItemFileDTO);
	}
	
	/* 상품삭제 */
	public int deleteItem(Long item_num) throws Exception {
		return sqlSession.delete(NAMESPACE + "deleteItem", item_num);
	}
	
	/* 상품수정 */
	public int setUpdateItem(DgItemDTO dgItemDTO) throws Exception {
		return sqlSession.update(NAMESPACE + "setUpdateItem", dgItemDTO);
	}
	
	/* 상품조회 + 카테고리 조인*/
	public DgItemDetailDTO getDetailItem(Long item_num) throws Exception {
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
	public List<Category> getCategory() throws Exception {
		return sqlSession.selectList(NAMESPACE + "getCategory");
	}
}
