package com.gndg.home.dgItem;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.util.Category;

@Repository
public class DgItemDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.dgItem.DgItemDAO.";
	
	/* 통합 검색 */
	public List<DgItemDTO> getSearch(String search) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getSearch", search);
	}
	
	/* 최근 본 상품 */
	public List<DgItemFileDTO> getProduct(Long item_num) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getProduct", item_num);
	}
	
	/* 후기 가져오기 */
	public List<DgItemReviewDTO> getReply(Long item_num) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getReply", item_num);
	}
	
	/* 후기 작성 */
	public int setAddReply(DgItemReviewDTO dgItemReviewDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "setAddReply", dgItemReviewDTO);
	}
	
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
	
	/* 상품 갯수 */
//	public int getCount(Category category) throws Exception {
//		return sqlSession.select(NAMESPACE + "getCount", category);
//	}
	
	/* 상품목록 */
	public List<DgItemDTO> getListItem(DgItemDTO dgItemDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getListItem",dgItemDTO);
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
