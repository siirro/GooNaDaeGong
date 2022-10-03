package com.gndg.home.notice;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gndg.home.AbstractTest;
import com.gndg.home.member.MemberDAO;
import com.gndg.home.member.MemberDTO;
import com.gndg.home.qna.QnaDAO;
import com.gndg.home.qna.QnaDTO;
import com.gndg.home.util.Pager;

public class ManagerTest extends AbstractTest{
	
	@Autowired
	private MemberDAO memberDAO;
	
	//겟리스트 1단계는 성공. 2단계:서치 3단계:페이징
	@Test
	public void getMemberList()throws Exception{
		Pager pager = new Pager();
		pager.setKind("user_name");
		pager.setSearch("1");
		pager.setLastRow(10L);
		pager.setStartRow(1L);
		List<MemberDTO> ar = memberDAO.getMemberList(pager);
		assertEquals(3, ar.size());
	}
	



}
