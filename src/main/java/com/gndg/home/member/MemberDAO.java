package com.gndg.home.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.gndg.home.member.MemberDAO.";
	
	//회원가입
	public int setJoin(MemberDTO memberDTO)throws Exception{
		System.out.println("회원가입DAO");
		return sqlSession.insert(NAMESPACE+"setJoin", memberDTO);
	}
	//로그인
	public MemberDTO getLogin(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getLogin", memberDTO);
	}
	//아이디 찾기
	public MemberDTO getFindID(MemberDTO memberDTO)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getFindID", memberDTO);
	}

}
