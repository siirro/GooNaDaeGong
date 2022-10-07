package com.gndg.home.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gndg.home.gnItem.GnItemDTO;
import com.gndg.home.member.MemberDTO;
import com.gndg.home.member.MemberFileDTO;
import com.gndg.home.member.MemberService;
import com.gndg.home.order.OrderDTO;
import com.gndg.home.qna.QnaDTO;

@Controller
@RequestMapping("/mypage/*")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	@Autowired
	private MemberService memberService;
	
	//마이페이지 메인
	@RequestMapping(value="mypage")
	public String mypage()throws Exception{
		return "/mypage/mypage";
	}
	
	//내 찜목록
	@RequestMapping(value="myHeart")
	public String myHeart()throws Exception{
		return "/mypage/myHeart";
	}
	
	//내 주문내역
	@RequestMapping(value="myOrder")
	public ModelAndView myOrder(OrderDTO orderDTO, HttpSession session)throws Exception{
	    ModelAndView mv = new ModelAndView();
	    MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
	    orderDTO.setUser_id(memberDTO.getUser_id());
	    
	    List<OrderDTO> al = mypageService.getMyOrder(orderDTO);
	    mv.addObject("order", al);
	    mv.setViewName("/mypage/myOrder");
	    
		return mv;
	}
	
	//내 주문 상세내역
	@RequestMapping(value="myOrderDetail")
	public ModelAndView myOrderDetail(OrderDTO orderDTO,HttpSession session,ModelAndView mv)throws Exception{
	    MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
	    orderDTO.setUser_id(memberDTO.getUser_id());
	    orderDTO = mypageService.getMyOrderDetail(orderDTO);
	    
//	    System.out.println("파일 가져와지나 ===="+orderDTO.getGnItemFileDTOs().get(0).getFileName());
	    
	    mv.addObject("detail", orderDTO);
	    mv.setViewName("/mypage/myOrderDetail");
	    return mv;
	}
	
	//내 QNA내역
	@RequestMapping(value="myQNA")
	public ModelAndView myQNA(QnaDTO qnaDTO, HttpSession session)throws Exception{
	        ModelAndView mv =new ModelAndView();
	        MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
	        qnaDTO.setUser_id(memberDTO.getUser_id());
	        List<QnaDTO> al = mypageService.getMyQna(qnaDTO);
	        
	        mv.addObject("qna", al);
	        mv.setViewName("/mypage/myQNA");
	    
		return mv;
	}
	
	
	//내 후기내역
	@RequestMapping(value="myReview")
	public String myReview()throws Exception{
		return "/mypage/myReview";
	}
	
	//내 판매내역
	@RequestMapping(value="mySale")
	public ModelAndView mySale(GnItemDTO gnItemDTO,HttpSession session)throws Exception{
	    ModelAndView mv = new ModelAndView();
	    MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");
	    gnItemDTO.setUser_id(memberDTO.getUser_id());
	    List<GnItemDTO> al = mypageService.getMySale(gnItemDTO);
	    
	    mv.addObject("sale", al);
	    mv.setViewName("/mypage/mySale");
	    
		return mv;
	}
	//회원정보 수정
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
	
	//회원정보 탈퇴
	@RequestMapping(value="myDelete" , method = RequestMethod.POST)
	@ResponseBody
	public int myDelete(HttpSession session)throws Exception{
	    MemberDTO memberDTO = new MemberDTO();
	    MemberDTO memberDTO2 =  (MemberDTO)session.getAttribute("member");
	    memberDTO.setUser_id(memberDTO2.getUser_id());
	    int result = mypageService.setMyDelete(memberDTO);
	    session.invalidate();
		return result;
	}

}
