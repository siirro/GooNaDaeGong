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
	
	//카테고리 불러오기
	public List<Category> getCategory() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getCategory");
	}
	
	//상품 등록
	public int setAdd(ItemDTO itemDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAdd", itemDTO);
	}
	
	//상품 이미지파일 추가
	public int setAddFile(ItemFileDTO itemFileDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setAddFile", itemFileDTO);
	}
	
	//상품 리스트 조회
	public List<ItemDTO> getList() throws Exception {
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	//상품 상세페이지 조회
	public ItemDTO getDetail(ItemDTO itemDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getDetail", itemDTO);
	}
	
	//상품 수정
	public int setUpdate(ItemDTO itemDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setUpdate", itemDTO);
	}
	
	//상품 삭제
	public int setDelete(ItemDTO itemDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setDelete", itemDTO);
	}
	
	//상품 수정할때 이미지파일 삭제
	public ItemFileDTO getFileDetail(ItemFileDTO itemFileDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getFileDetail", itemFileDTO);
	}
	public int setFileDelete(ItemFileDTO itemFileDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setFileDelete", itemFileDTO);
	}
	
	//좋아요 등록
	public int setLikeAdd(ItemLikeDTO itemLikeDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setLikeAdd", itemLikeDTO);
	}
	
	//좋아요 취소
	public int setLikeDelete(ItemLikeDTO itemLikeDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setLikeDelete", itemLikeDTO);
	}
	
	//회원당 해당 상품 좋아요 확인
	public ItemLikeDTO getLikeUser(ItemLikeDTO itemLikeDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getLikeUser", itemLikeDTO);
	}
	
	//상품당 좋아요수 조회
	public Long getLikeItem(ItemLikeDTO itemLikeDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getLikeItem", itemLikeDTO);
	}
	
	//조회수
	public int setHit(ItemDTO itemDTO) throws Exception {
		return sqlSession.update(NAMESPACE+"setHit", itemDTO);
	}
	
	//후기 조회
	public List<ItemReviewDTO> getReview(ItemReviewDTO itemReviewDTO) throws Exception {
		return sqlSession.selectList(NAMESPACE+"getReview", itemReviewDTO);
	}

	//후기 등록
	public int setReviewAdd(ItemReviewDTO itemReviewDTO) throws Exception {
		return sqlSession.insert(NAMESPACE+"setReviewAdd", itemReviewDTO);
	}
	
	//후기 삭제
	public int setReviewDelete(ItemReviewDTO itemReviewDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setReviewDelete", itemReviewDTO);
	}
	
	//후기 수정
	public int setReviewUpdate(ItemReviewDTO itemReviewDTO) throws Exception {
		return sqlSession.delete(NAMESPACE+"setReviewUpdate", itemReviewDTO);
	}
	
	//후기수
	public Long getReviewCount(ItemReviewDTO itemReviewDTO) throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getReviewCount", itemReviewDTO);
	}
	
}
