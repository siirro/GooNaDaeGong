package com.gndg.home.manager;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Map.Entry;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.util.Set;

import org.apache.commons.mail.HtmlEmail;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gndg.home.cancel.CancelDTO;
import com.gndg.home.cancel.CancelService;
import com.gndg.home.cancel.ExchangeDTO;
import com.gndg.home.cancel.RefundDTO;
import com.gndg.home.member.MemberDTO;
import com.gndg.home.member.MemberService;
import com.gndg.home.mypage.MypageService;
import com.gndg.home.orders.OrdersDTO;
import com.gndg.home.orders.OrdersService;
import com.gndg.home.pay.PayDTO;
import com.gndg.home.pay.PayService;
import com.gndg.home.qna.QnaDTO;
import com.gndg.home.qna.QnaService;
import com.gndg.home.report.ReportDTO;
import com.gndg.home.report.ReportService;
import com.gndg.home.util.OrderPager;
import com.gndg.home.util.Pager;

@Controller
@RequestMapping("/manager/*")
public class ManagerController {
	
	@Autowired
	private QnaService qnaService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private ReportService reportService;
	@Autowired
	private OrdersService ordersService;
	@Autowired
	private CancelService cancelService;
	@Autowired
	private PayService payService;
	@Autowired
	private MypageService mypageService;
	
	String token;
	
	
	//============================================================
	
	@RequestMapping(value = "item/add", method=RequestMethod.GET)
	public String managerIndex2()throws Exception{
		
		return "manager/add";
	}
	
	
	
	
//	==============================QNA 조회=========================
	@RequestMapping(value = "qna/list", method=RequestMethod.GET)
	public ModelAndView managerQnaList(Pager pager, String qna_status)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<QnaDTO> ar = qnaService.getList(pager, qna_status);
		
		mv.addObject("qnalist", ar);
		mv.addObject("pager", pager);
		mv.setViewName("manager/qnalist");
		return mv;
	}
	
	@RequestMapping(value = "qna/detail", method=RequestMethod.GET)
	public ModelAndView managerQnaDetail(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		qnaDTO = qnaService.getDetail(qnaDTO);
		mv.addObject("qnaDTO", qnaDTO);
		mv.setViewName("manager/qnadetail");
		
		return mv;
	}
	
	//qna 답변 등록 ajax
	@PostMapping("qna/comment")
	@ResponseBody
	public String updateQnaComment(QnaDTO qnaDTO) throws Exception{
		int result = qnaService.updateQnaComment(qnaDTO);
		String jsonResult = "{\"result\":\""+result+"\"}";
		return jsonResult;
	}
	
	//qna 답변 조회 ajax
	@PostMapping(value = "qna/commentlist", produces = "application/text; charset=utf8")
	@ResponseBody
	public String getComment(QnaDTO qnaDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		qnaDTO = qnaService.getComment(qnaDTO);
		System.out.println(qnaDTO.getQna_comment());
		String comment = qnaDTO.getQna_comment();
		//mv.addObject("qnaDTO", qnaDTO);
		
		String jsonResult = "{\"comment\":\""+comment+"\"}";
		return jsonResult;
	}
	
	@PostMapping("qna/update")
	public ModelAndView statusChange(QnaDTO qnaDTO)throws Exception{
		qnaDTO = qnaService.getDetail(qnaDTO);
		String message = "";
		int result = 0;
		if(qnaDTO.getQna_comment()==null) {
			message = "답변이 등록되지 않았습니다.";
			
		} else {
			result = qnaService.statusChange(qnaDTO);
		}
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setUser_id(qnaDTO.getUser_id());
		memberDTO = mypageService.getMyInfo(memberDTO);
		
		ModelAndView mv = new ModelAndView();
		
		
		if(result!=0) {
			message = "1대1 문의 처리상태를 완료로 변경했습니다. 회원에게 답변 알림 이메일이 발송됩니다.";
			
			//이메일 발송.
			Properties props = new Properties();
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "587");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
			
			Session session = Session.getInstance(props, new Authenticator() {
				@Override
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("dbfdkfdbf@gmail.com", "qkyckhhsnzabbcpb");
				}
			});
			
			String receiver = memberDTO.getUser_email(); // 메일 받을 주소
			String title = "구디나라 1대1 문의 답변이 등록되었습니다.";
			String content = "<h2 style='color:blue'><a href='localhost/mypage/myQNA'>문의 확인하기</a></h2>";
			Message message2 = new MimeMessage(session);
			try {
				message2.setFrom(new InternetAddress("sendMail@gmail.com", "관리자", "utf-8"));
				message2.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
				message2.setSubject(title);
				message2.setContent(content, "text/html; charset=utf-8");
	
				Transport.send(message2);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			//이메일발송
			

			
			
//			
		}
		
				
		mv.addObject("url", "./detail?qna_num="+qnaDTO.getQna_num());
		mv.addObject("message", message);
		mv.setViewName("common/result");
		
		return mv;
		
		
	}
//	==============================QNA 조회 끝=========================
	
	
	
//	============================= 회원 조회 =========================
	@GetMapping("member/list")
	public ModelAndView getMemberList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<MemberDTO> ar = memberService.getMemberList(pager);
		
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("manager/memberlist");
		
		return mv;
	}
	
	@GetMapping("member/updateYN")
	public ModelAndView updateYN(MemberDTO memberDTO)throws Exception{
		int result = memberService.updateYN(memberDTO);
		ModelAndView mv = new ModelAndView();
		
		String message = "회원상태 변경 실패";
		if(result!=0) {
			message = "회원 상태를 변경했습니다.";
		}
		
				
		mv.addObject("url", "./list");
		mv.addObject("message", message);
		mv.setViewName("common/result");
		
		return mv;
		
	}
//	============================= 회원 조회 끝=========================

	
//	============================= 신고 조회=========================
	@GetMapping("report/list")
	public ModelAndView getReportList(Pager pager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<ReportDTO> ar = reportService.getReportList(pager);
		mv.addObject("list", ar);
		mv.addObject("pager", pager);
		mv.setViewName("manager/reportlist");
		
		return mv;
	}
	
	@GetMapping("report/detail")
	public ModelAndView getReportDetail(ReportDTO reportDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		reportDTO = reportService.getReportDetail(reportDTO);
		mv.addObject("detail", reportDTO);
		mv.setViewName("manager/reportdetail");
		return mv;
	}
	
	@GetMapping("report/updateStatus")
	public String updateStatus(ReportDTO reportDTO)throws Exception{
		int result = reportService.updateStatus(reportDTO);
		return "redirect:./list";
	}
	
	@GetMapping("report/updateYN")
	public String updateYN(ReportDTO reportDTO)throws Exception{
		int result = reportService.updateYN(reportDTO);
		return "redirect:./list";
	}
	
	

//	============================= 신고 조회 끝=========================
	
	
//	============================= 주문내역 조회 =========================
	@GetMapping("mall/order")
	public ModelAndView getList(OrdersDTO ordersDTO, OrderPager orderPager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<OrdersDTO> ar = ordersService.getList(orderPager, ordersDTO);
		mv.addObject("list", ar);
		mv.addObject("pager", orderPager);
		mv.setViewName("manager/order/list");
		return mv;
	}
	@GetMapping("mall/orderDetail")
	public ModelAndView getDetail(OrdersDTO ordersDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		ordersDTO = ordersService.getDetail(ordersDTO);
		mv.addObject("ordersDTO", ordersDTO);
		mv.setViewName("manager/order/detail");
		return mv;
		
	}
	
	@GetMapping("mall/orderUpdateStatus")
	public ModelAndView updateStatus(OrdersDTO ordersDTO)throws Exception{
		int result = ordersService.updateStatus(ordersDTO);
		ModelAndView mv = new ModelAndView();
		
		String message = "주문상태 변경 실패";
		if(result!=0) {
			message = "주문상태를 변경했습니다.";
		}
		mv.addObject("url", "./orderDetail?merchant_uid="+ordersDTO.getMerchant_uid());
		mv.addObject("message", message);
		mv.setViewName("common/result");
		
		return mv;
	}
//	============================= 주문내역 조회 끝 =========================

//	============================= 취소내역 조회 =========================
	@GetMapping("mall/cancel")
	public ModelAndView getList(OrderPager orderPager, CancelDTO cancelDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<OrdersDTO> ar = cancelService.getList(orderPager);
		System.out.println(ar);
		mv.addObject("list", ar);
		mv.addObject("pager", orderPager);

		mv.setViewName("manager/cancellist");
		return mv;
	}
	
	@GetMapping("mall/cancelDetail")
	public ModelAndView getDetail(CancelDTO cancelDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		cancelDTO = cancelService.getDetail(cancelDTO);
		OrdersDTO ordersDTO = new OrdersDTO();
		ordersDTO.setMerchant_uid(cancelDTO.getMerchant_uid());
		ordersDTO = ordersService.getDetail(ordersDTO);
		mv.addObject("ordersDTO", ordersDTO);
		mv.addObject("detail", cancelDTO);
		mv.setViewName("manager/canceldetail");
		return mv;
	}
//	============================= 취소내역 조회 =========================

//	============================= 교환내역 조회 =========================
	@GetMapping("mall/exchange")
	public ModelAndView getListE(OrderPager orderPager, ExchangeDTO exchangeDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<OrdersDTO> ar = cancelService.getListE(orderPager);
		mv.addObject("list", ar);
		mv.addObject("pager", orderPager);

		mv.setViewName("manager/exchangelist");
		return mv;
	}
	
	@GetMapping("mall/exchangeDetail")
	public ModelAndView getDetail(ExchangeDTO exchangeDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		exchangeDTO = cancelService.getDetailE(exchangeDTO);
		OrdersDTO ordersDTO = new OrdersDTO();
		ordersDTO.setMerchant_uid(exchangeDTO.getMerchant_uid());
		ordersDTO = ordersService.getDetail(ordersDTO);
		mv.addObject("ordersDTO", ordersDTO);
		mv.addObject("detail", exchangeDTO);
		mv.setViewName("manager/exchangedetail");
		return mv;
	}
//	============================= 교환내역 조회 =========================

//	============================= 반품내역 조회 =========================
	@GetMapping("mall/refund")
	public ModelAndView getListR(OrderPager orderPager, RefundDTO refundDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<OrdersDTO> ar = cancelService.getListR(orderPager);
		mv.addObject("list", ar);
		mv.addObject("pager", orderPager);

		mv.setViewName("manager/refundlist");
		return mv;
	}
	
	@GetMapping("mall/refundDetail")
	public ModelAndView getDetail(RefundDTO refundDTO)throws Exception{
		ModelAndView mv = new ModelAndView();
		refundDTO = cancelService.getDetailR(refundDTO);
		OrdersDTO ordersDTO = new OrdersDTO();
		ordersDTO.setMerchant_uid(refundDTO.getMerchant_uid());
		ordersDTO = ordersService.getDetail(ordersDTO);
		mv.addObject("ordersDTO", ordersDTO);
		mv.addObject("detail", refundDTO);
		mv.setViewName("manager/refunddetail");
		return mv;
	}
//	============================= 반품내역 조회 =========================
	//=========================== 결제내역 조회 =========================
	
	@GetMapping("mall/payment")
	public ModelAndView getListPay(OrderPager orderPager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<PayDTO> ar = payService.getList(orderPager);
		
		
		//rest api 토큰 발급받기
		HttpURLConnection conn = null;
		String access_token = null;
		URL url = new URL("https://api.iamport.kr/users/getToken");
		conn = (HttpURLConnection)url.openConnection();
		
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-Type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.setDoOutput(true);
		
		JSONObject obj = new JSONObject();
		obj.put("imp_key", "7781488188655887");
		obj.put("imp_secret", "zZUHA0UdodAq48a1ljvk6dqpMh6DAbOR5LhIVjRuusLTmR3akP2UZfDvUnLkeRCoB9oYXIsxhF1wABIp");
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
		bw.write(obj.toString());
		bw.flush();
		bw.close();
		
		int result = 0;
		int responseCode = conn.getResponseCode();
		System.out.println("응답 코드 : "+responseCode);
		if(responseCode == 200) {
			System.out.println("코드를발급받았다");
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			StringBuilder sb = new StringBuilder();
			String line = null;
			while ((line = br.readLine()) != null) {
				sb.append(line + "\n");
			}
			br.close();
			String gg = sb.toString();
			System.out.println(gg);
			result = 1;
			
			JSONParser jsonParser = new JSONParser();

			JSONObject jsonObj = (JSONObject) jsonParser.parse(gg);

			if((Long)jsonObj.get("code") == 0){
			JSONObject getToken = (JSONObject) jsonObj.get("response");
			System.out.println("getToken==>>"+getToken.get("access_token"));
			token = (String)getToken.get("access_token");
			System.out.println("진짜토근 : "+token);
			mv.addObject("access_token", token);
			
			
			

			

			}
		} else {
			System.out.println(conn.getResponseMessage());
		}
		
		mv.addObject("list", ar);
		mv.setViewName("manager/order/paylist");
		
		
		return mv;
	}
	

	
	
	//===============================결제취소=============================
	
	// Map을 사용해서 Http요청 파라미터를 만들어 주는 함수
	private List<NameValuePair> convertParameter(Map<String,String> paramMap){
		List<NameValuePair> paramList = new ArrayList<NameValuePair>();
		Set<Entry<String,String>> entries = paramMap.entrySet();
		for(Entry<String,String> entry : entries) {
			paramList.add(new BasicNameValuePair(entry.getKey(), entry.getValue()));
		}
		return paramList;
	}

	@PostMapping("mall/cancelPayment")
	@ResponseBody
	public String cancelPayment(@RequestBody PayDTO params, PayDTO payDTO)throws Exception{
		String jsonResult = "";
		// 결제취소
		HttpClient client = HttpClientBuilder.create().build();
		HttpPost post = new HttpPost("https://api.iamport.kr/payments/cancel");
		Map<String, String> map = new HashMap<String, String>();
		post.setHeader("Authorization", token);
		map.put("merchant_uid", params.getMerchant_uid().toString());
		String asd = "";
		try {
			post.setEntity(new UrlEncodedFormEntity(convertParameter(map)));
			HttpResponse res = client.execute(post);
			ObjectMapper mapper = new ObjectMapper();
			String enty = EntityUtils.toString(res.getEntity());
			JsonNode rootNode = mapper.readTree(enty);
			asd = rootNode.get("response").asText();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if (asd.equals("null")) {
			System.err.println("환불실패");
			int result1 = 0;
			jsonResult = "{\"result\":\""+result1+"\"}";
		} else {
			System.err.println("환불성공");
			payDTO.setMerchant_uid(params.getMerchant_uid());
			int result1 = payService.cancelPayment(payDTO);
			payService.cancelPayment2(payDTO);
			jsonResult = "{\"result\":\""+result1+"\"}";
		}
		
		return jsonResult;
	}

	
	
}
