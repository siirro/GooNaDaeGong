package com.gndg.home.member;

import static org.junit.Assert.assertNotEquals;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gndg.home.AbstractTest;

public class MemberDAOTest extends AbstractTest {
	
	@Autowired
	private MemberDAO memberDAO;

	@Test
	public void JoinTest()throws Exception {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setUser_id("1");
		memberDTO.setUser_pw("1");
		memberDTO.setUser_name("1");
		memberDTO.setUser_email("1@1.com");
		memberDTO.setUser_phone("010-1111-1111");
		memberDTO.setUser_post("12345");
		memberDTO.setUser_addr("가산동");
		memberDTO.setUser_addr2("201호");
		memberDTO.setUser_file("sample.jsp");
		
		int result = memberDAO.setJoin(memberDTO); 
		assertNotEquals(result, result);
	}

}
