package com.gndg.home.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.member.MemberDTO;
import com.gndg.home.member.MemberFileDTO;
import com.gndg.home.member.MemberService;

@Controller
@RequestMapping("/mypage/*")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="mypage")
	public String mypage()throws Exception{
		return "/mypage/mypage";
	}
	@RequestMapping(value="myHeart")
	public String myHeart()throws Exception{
		return "/mypage/myHeart";
	}
	@RequestMapping(value="myOrder")
	public String myOrder()throws Exception{
		return "/mypage/myOrder";
	}
	@RequestMapping(value="myQNA")
	public String myQNA()throws Exception{
		return "/mypage/myQNA";
	}
	@RequestMapping(value="myReview")
	public String myReview()throws Exception{
		return "/mypage/myReview";
	}
	@RequestMapping(value="mySale")
	public String mySale()throws Exception{
		return "/mypage/mySale";
	}
	//회원정보 수정
//	@RequestMapping(value="myUpdate")
//	public String myUpdate(MemberDTO memberDTO, MultipartFile userfile)throws Exception{
////		HttpSession session = new httpsession
////		mypageService.setMyUpdate(memberDTO, userfile, session.getServletContext());
//		
//		return "/mypage/myUpdate";
//	}
	   @RequestMapping(value="myUpdate")
	    public ModelAndView myUpdate(HttpSession session)throws Exception{
	       ModelAndView mv = new ModelAndView();
	       MemberDTO memberDTO = new MemberDTO();
	       System.out.println();
	       
	      MemberDTO memberDTO2 =  (MemberDTO)session.getAttribute("member");
	       memberDTO.setUser_id(memberDTO2.getUser_id());
	      System.out.println("개인정보 수정 아이딘== "+memberDTO.getUser_id());
	     memberDTO =  mypageService.getMyInfo(memberDTO);
	     System.out.println(memberDTO.getUser_id());
	     System.out.println(memberDTO.getUser_pw());
	     System.out.println(memberDTO.getUser_name());
	     System.out.println(memberDTO.getUser_email());
	     System.out.println(memberDTO.getUser_phone());
	     System.out.println(memberDTO.getUser_post());
	     System.out.println(memberDTO.getUser_addr());
	     System.out.println(memberDTO.getUser_addr2());
//	     System.out.println(memberDTO.getMemberFileDTO().getFileName());
	     MemberFileDTO memberFileDTO = new MemberFileDTO();
	     memberFileDTO.setUser_id(memberDTO2.getUser_id());
	     memberFileDTO =  mypageService.getMyInfoFile(memberFileDTO);
//	     System.out.println(memberFileDTO.getFileName());
	         mv.addObject("update", memberDTO);
	         mv.addObject("fileupdate", memberFileDTO);
	         mv.setViewName("/mypage/myUpdate");
	     
	        return mv;
	    }
	
	@RequestMapping(value="myUpdate", method = RequestMethod.POST)
	public String myUpdate(MemberDTO memberDTO, MultipartFile userfile, HttpSession session)throws Exception{
		mypageService.setMyUpdate(memberDTO, userfile, session.getServletContext());
		
		return "/mypage/mypage";
	}
	@RequestMapping(value="myDelete" , method = RequestMethod.POST)
	public String myDelete(HttpSession session)throws Exception{
	    MemberDTO memberDTO = new MemberDTO();
	    MemberDTO memberDTO2 =  (MemberDTO)session.getAttribute("member");
	    memberDTO.setUser_id(memberDTO2.getUser_id());
	    mypageService.setMyDelete(memberDTO);
		return "redirect:/";
	}

}
