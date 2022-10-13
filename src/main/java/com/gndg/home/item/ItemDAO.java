package com.gndg.home.item;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.util.Category;

@Repository
public class ItemDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.item.ItemDAO.";
	
	/* 상품 총 개수 */
	public Long getTotal(ItemDTO itemDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE + "getTotal", itemDTO);
	}
	
	/* 통합 검색 */
	public List<ItemDTO> getSearch(String search) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getSearch", search);
	}
	
	/* 최근 본 상품 */
	public List<ItemFileDTO> getProduct(Long item_num) throws Exception {
		return sqlSession.selectList(NAMESPACE + "getProduct", item_num);
	}
	
	public List<Category> getCategory() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getCategory");
	}
	
	public int setAdd(ItemDTO itemDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAdd", itemDTO);
	}
	
	public int setAddFile(ItemFileDTO itemFileDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAddFile", itemFileDTO);
	}
	
	public List<ItemDTO> getList(ItemDTO itemDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList",itemDTO);
	}
	
	public ItemDTO getDetail(ItemDTO itemDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getDetail", itemDTO);
	}
	
	public int setUpdate(ItemDTO itemDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", itemDTO);
	}
	
	public int setDelete(ItemDTO itemDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", itemDTO);
	}
	
	public ItemFileDTO getFileDetail(ItemFileDTO itemFileDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getFileDetail", itemFileDTO);
	}
	
	public int setFileDelete(ItemFileDTO itemFileDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setFileDelete", itemFileDTO);
	}
	
	public int setLikeAdd(ItemLikeDTO itemLikeDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setLikeAdd", itemLikeDTO);
	}
	
	public int setLikeDelete(ItemLikeDTO itemLikeDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setLikeDelete", itemLikeDTO);
	}
	
	public ItemLikeDTO getLikeUser(ItemLikeDTO itemLikeDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getLikeUser", itemLikeDTO);
	}
	
	public Long getLikeItem(ItemLikeDTO itemLikeDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getLikeItem", itemLikeDTO);
	}
	
	public int setHit(ItemDTO itemDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setHit", itemDTO);
	}
	
	public int setReviewAdd(ItemReviewDTO itemReviewDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setReviewAdd", itemReviewDTO);
	}
	
	public List<ItemReviewDTO> getReview(ItemReviewDTO itemReviewDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getReview", itemReviewDTO);
	}
		
	public Long getReviewCount(ItemReviewDTO itemReviewDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getReviewCount", itemReviewDTO);
	}
	
}
