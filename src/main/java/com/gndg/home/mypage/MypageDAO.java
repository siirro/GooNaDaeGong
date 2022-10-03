package com.gndg.home.mypage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gndg.home.member.MemberDTO;
import com.gndg.home.member.MemberFileDTO;

@Repository
public class MypageDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.mypage.MypageDAO.";

	//회원정보 수정
	public int setMyUpdate(MemberDTO memberDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setMyUpdate", memberDTO);
	}
	//회원프로필 수정
	public int setMyFileUpdate(MemberFileDTO memberFileDTO)throws Exception{
		return sqlSession.update(NAMESPACE+"setMyFileUpdate", memberFileDTO);
	}
	//로그인 회원정보
	public MemberDTO getMyInfo(MemberDTO memberDTO)throws Exception{
	    return sqlSession.selectOne(NAMESPACE+"getMyInfo", memberDTO);
	}
	//로그인 회원프로필
	public MemberFileDTO getMyInfoFile(MemberFileDTO memberFileDTO)throws Exception{
	    return sqlSession.selectOne(NAMESPACE+"getMyInfoFile", memberFileDTO);
	}
	//탈퇴
	public int setMyDelete(MemberDTO memberDTO)throws Exception{
	    return sqlSession.update(NAMESPACE+"setMyDelete", memberDTO);
	}
}
