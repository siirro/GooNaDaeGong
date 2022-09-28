package com.gndg.home.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage/*")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
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

}
