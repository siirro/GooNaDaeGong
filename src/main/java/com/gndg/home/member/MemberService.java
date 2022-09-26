package com.gndg.home.member;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	//아이디 중복검사
	public Long getDuplicationID(MemberDTO memberDTO)throws Exception{
		return memberDAO.getDuplicationID(memberDTO);
	}
	//email 중복검사
	public Long getDuplicationEmail(MemberDTO memberDTO)throws Exception{
		return memberDAO.getDuplicationEmail(memberDTO);
	}
	
	//회원가입
	public int setJoin(MemberDTO memberDTO)throws Exception{
		System.out.println("회원가입 service");
		return memberDAO.setJoin(memberDTO);
	}
	//카카오 로그인 토큰 받아오는 메소드
	public String getAccessToken(String authorize_code) {
		String access_Token ="";
		String refresh_Token="";
		String reqURL="https://kauth.kakao.com/oauth/token";
		
		try {
			URL url = new URL(reqURL);
			
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			
			//POST 요청을 위해 기본값이 false인 setDoOutPut을 true로
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			
			//POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=7fd3f72a12710b29220e17ed15eadb6c");	//내가 발급받은 키
			sb.append("&redirect_uri=http://localhost/member/kakao");	//본인이 설정해놓은 경로
			sb.append("&code="+authorize_code);
			bw.write(sb.toString());
			bw.flush();
			
			//결과 코드가 200이라면 성공
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode == "+responseCode);
			
			//요청을 통해 얻은 json타입의 response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			
			
			while((line = br.readLine()) != null) {
				result += line;
			}//while end
			
			System.out.println("response body == "+result);
			
			//Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
			
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
	
			System.out.println("access_token == "+access_Token);
			System.out.println("refresh_token == "+refresh_Token);
			
			br.close();
			bw.close();
		
		}catch(IOException e) {
			e.printStackTrace();
		}
		return access_Token;
		
	}
	//카카오 로그인정보 받아오는 method
    public HashMap<String, Object> getUserInfo (String access_Token) {

        //    요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
        HashMap<String, Object> userInfo = new HashMap<String, Object>();
        String reqURL = "https://kapi.kakao.com/v2/user/me";
        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");

            //    요청에 필요한 Header에 포함될 내용
            conn.setRequestProperty("Authorization", "Bearer " + access_Token);

            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

            String line = "";
            String result = "";

            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);

            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);

            JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
            JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

            String nickname = properties.getAsJsonObject().get("nickname").getAsString();
//            String profile_image = properties.getAsJsonObject().get("profile_image").getAsString();
            String email = kakao_account.getAsJsonObject().get("email").getAsString();

            userInfo.put("nickname", nickname);
            userInfo.put("email", email);
//            userInfo.put("profile_image", profile_image);

        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return userInfo;
    }
	
	//로그인
	public MemberDTO getLogin(MemberDTO memberDTO)throws Exception{
		return memberDAO.getLogin(memberDTO);
		
	}
	//아이디 찾기
	public String getFindID(MemberDTO memberDTO)throws Exception{
		return memberDAO.getFindID(memberDTO);
	}
	
	//비밀번호 찾기
	public void getFindPWCheck(MemberDTO memberDTO,HttpServletResponse response)throws Exception{
		response.setContentType("text/html;charset=utf-8");
		
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			memberDTO.setUser_pw(pw);
			// 비밀번호 변경
			int result = memberDAO.setUpdatePW(memberDTO);
			// 비밀번호 변경 메일 발송
			sendEmail(memberDTO,"findpw");
			
	}
//		response.setContentType("text/html;charset=utf-8");
//		System.out.println("비밀번호 찾기 service 1");
//		memberDTO = memberDAO.getFindPWCheck(memberDTO);	//비밀번호만 받아옴
////		System.out.println("비밀번호 찾기 service 비밀번호 == "+userPW);
//		System.out.println("비밀번호 찾기 service 2");
//		
//		String pw ="";
//		for(int i =0; i<12; i++) {
//			pw += (char)((Math.random() * 26)+97);
//		}
//		 memberDTO.setUser_pw(pw);
//		System.out.println("비밀번호 찾기 service 3");
//		//비밀번호 변경
//		memberDAO.setUpdatePW(memberDTO);
//		System.out.println("비밀번호 찾기 service 4");
//		sendEmail(memberDTO, "findpw");
//		System.out.println("비밀번호 찾기 service 5");
//		
//	}
	//이메일쏘기
		public void sendEmail(MemberDTO memberDTO,String fw)throws Exception{
			System.out.println("이메일 service 1");
			//Mail Server 설정
			String charSet = "utf-8";
			String hostSMTP = "smtp.naver.com";
			String hostSMTPid = "keroro3086@naver.com"; // 보내는사람 이메일
			String hostSMTPpw = ""; // 보내는사람 비밀번호
			
			System.out.println("이메일 service 2");
			
			//보내는 사람 Email/보내는사람 이름/제목/내용
			String fromEmail = "keroro3086@naver.com"; // 보내는 사람 이메일
			String fromName ="GNDG";
			String subject="GooDeeNaraDaeKiGongJu 임시비밀번호 안내 이메일 입니다.";
			String msg ="";
			
			if(fw.equals("findpw")) {
				msg += "<div align='center'>";
				msg += memberDTO.getUser_id()+"님의 임시 비밀번호 입니다.";
				msg += "<p>임시 비밀번호:"+memberDTO.getUser_pw()+"</p>";
				msg += "마이페이지에서 비밀번호를 수정하고 사용해주세요."+"</div>";
			}
			
			System.out.println("이메일 service 3");
			//받는 사람 Email 주소
			String mail = memberDTO.getUser_email();
			try {
			System.out.println("이메일 servicer 4");
				HtmlEmail email = new HtmlEmail();
				email.setDebug(true);
				email.setCharset(charSet);	//encoding 타입
				email.setSSL(true);
				email.setHostName(hostSMTP);	//네이버를 쓰겠다는 의지 네이버smtp서버명
				email.setSmtpPort(587); //네이버 이메일 사용할경우 번호
				
				System.out.println("이메일 servicer 5");
				
				email.setAuthentication(hostSMTPid, hostSMTPpw);
				email.setTLS(true);
				email.addTo(mail, charSet);
				email.setFrom(fromEmail, fromName, charSet);
				email.setSubject(subject);
				email.setHtmlMsg(msg);
				email.send();
				
				System.out.println("이메일 servicer 6");
			}catch(Exception e) {
				System.out.println("메일발송 실패"+ e);
			}
		}
}
