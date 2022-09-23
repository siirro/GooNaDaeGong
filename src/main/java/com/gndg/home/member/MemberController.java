package com.gndg.home.member;

import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
	@RequestMapping(value="/kakao")
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code)throws Exception{
		System.out.println("code======="+code);
		String access_Token = memberService.getAccessToken(code);
		HashMap<String, Object> userInfo= memberService.getUserInfo(access_Token);
		System.out.println("####access_Token###"+access_Token);
		System.out.println("###userInfo### : "+ userInfo.get("email"));
		System.out.println("###nickname### : " + userInfo.get("nickname") );
//		System.out.println("###profile_image### : "+ userInfo.get("profile_image"));
		
		return "/member/login";
	} 
	//소셜로그인은 진짜 모르겟다..ㅠㅠ
	
	//구글 로그인
	@RequestMapping(value="google")
	public String googleLogin()throws Exception{
		return "/member/google";
	}
	
	//네이버 로그인
	@RequestMapping(value="/naver")
	public String naverLogin()throws Exception{
		return "callback";
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
	@ResponseBody
	public String getFindID(MemberDTO memberDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		String userID = memberService.getFindID(memberDTO);
		mv.addObject("findID", memberDTO);
		mv.setViewName("/member/result");
		return userID;
	}
	
	
	//비밀번호찾기
	@RequestMapping(value="findPW")
	public String getFindPW()throws Exception{
		return"/member/findPW";
	}

	//비밀번호 찾기
	@RequestMapping(value="findPW", method=RequestMethod.POST)
	@ResponseBody
	public void getFindPWCheck(MemberDTO memberDTO, HttpServletResponse response)throws Exception{
		ModelAndView mv= new ModelAndView();
		System.out.println("비밀번호 찾기 controller1");
		memberService.getFindPWCheck(memberDTO,response);
		System.out.println("비밀번호 찾기 controller2");
		System.out.println("비밀번호=="+memberDTO.getUser_pw());
	}
	
	//로그아웃
	@RequestMapping(value="logout")
	public String logout(HttpSession session)throws Exception{
		session.invalidate();
		return "redirect:/";
	}
	
	
}
