package com.gndg.home.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	//회원가입
	@RequestMapping(value="join")
	public String setJoin()throws Exception{
		return "/member/join";
	}
	
	@RequestMapping(value="join", method = RequestMethod.POST)
	public String setJoin(MemberDTO memberDTO)throws Exception{
		System.out.println("회원가입 controller");
		memberService.setJoin(memberDTO);
		
		return "redirect:/";
	}
	
	//카카오 로그인
//	@RequestMapping(value="")
//	public String kakaoLogin(String code)throws Exception{
//		return "redirect:/";
//	} 
	//소셜로그인은 진짜 모르겟다..ㅠㅠ
	
	//구글 로그인
	@RequestMapping(value="google")
	public String googleLogin()throws Exception{
		return "/member/google";
	}
	
	//로그인
	@RequestMapping(value="login")
	public String getLogin()throws Exception{
		return "/member/login";
	}
	@RequestMapping(value="login", method = RequestMethod.POST)
	public String getLogin(MemberDTO memberDTO,HttpSession session)throws Exception{
		memberDTO = memberService.getLogin(memberDTO);
		session.setAttribute("member", memberDTO);
		
		return "./home";
	}
	
	//아이디찾기
	@RequestMapping(value="findID")
	public String getFindID()throws Exception{
		return "/member/findID";
	}
	@RequestMapping(value="findID", method = RequestMethod.POST)
	public MemberDTO getFindID(MemberDTO memberDTO)throws Exception{
		memberDTO = memberService.getFindID(memberDTO);
		
		return null;
	}
	
	//로그아웃
	@RequestMapping(value="logout")
	public String logout(HttpSession session)throws Exception{
		session.invalidate();
		return "redirect:/";
	}
	
	
}
