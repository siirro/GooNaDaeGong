package com.gndg.home.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	//회원가입
	public int setJoin(MemberDTO memberDTO)throws Exception{
		System.out.println("회원가입 service");
		return memberDAO.setJoin(memberDTO);
	}
	//로그인
	public MemberDTO getLogin(MemberDTO memberDTO)throws Exception{
		return memberDAO.getLogin(memberDTO);
		
	}
	//아이디 찾기
	public MemberDTO getFindID(MemberDTO memberDTO)throws Exception{
		return memberDAO.getFindID(memberDTO);
	}
}
