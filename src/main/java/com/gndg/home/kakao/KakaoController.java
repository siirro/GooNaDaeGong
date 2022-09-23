//package com.gndg.home.kakao;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//@Controller
//@RequestMapping("/kakaoLogin")
//public class KakaoController {
//	
//	private String kakaoAuthUrl;
//	private String kakaoApiKey;
//	private String redirectURI;
//			
//	@RequestMapping(value="/member/KakaoAuthUrl")
//	public String getKakaoAuthUrl(HttpServletRequest request)throws Exception{
//		String reqUrl = kakaoAuthUrl+"/oauth/authorize?cient+id="+kakaoApiKey+
//				"&redirect_uri="+redirectURI+"&response_type=code";
//		
//			return reqUrl;
//	}
	
//	@GetMapping("/kakao")
//		public String kakaoLogin(HttpServletResponse response, HttpServletRequest request)throws Exception{
//		HttpSession session = request.getSession();
////		
//		RestTemplate restTemplate = new RestTemplate();
////		ObjectMapper mapper = new ObjectMapper();
////		
//		//Access Token 받기
//		
//		HttpHeaders header = 
//		
//		
//		
//		
//		
//		String code = request.getParameter("code");
//		String error = request.getParameter("error");
//		
//		//카카오로그인 페이지에서 취소버튼 눌럿을경우
//		if(error != null) {
//			if(error.equals("access_denied")) {
//				return "redirect:/login";
//			}
//		}
//		
//		
//		return "";
//	}
//}
