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
	
	//최신글
	public List<ItemDTO> getNewItemList(ItemDTO itemDTO)throws Exception{
	    return sqlSession.selectList(NAMESPACE+"getNewItemList", itemDTO);
	}
	
	//인기글
	public List<ItemDTO> getPopularItemList(ItemDTO itemDTO)throws Exception{
	    return sqlSession.selectList(NAMESPACE+"getPopularItemList", itemDTO);
	}
	//인기글 갯수
	public Long getPopularItemCount()throws Exception{
	    return sqlSession.selectOne(NAMESPACE+"getPopularItemCount");
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
	
	public List<ItemDTO> getList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList");
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
