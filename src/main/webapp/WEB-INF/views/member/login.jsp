<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/member/logintest.css">
</head>
<body>
	<div class="wrap">
	    <c:import url="../template/header.jsp"></c:import>
	    <section>
	        <div class="css-1bb6q2p etkckst2">
	            <div class="css-a7gihu etkckst1">로그인</div>
	            <div class="css-10zt1af etkckst0">
	                <form action="login" method="post" id="frmLogin">
	                    <div class="css-46b038 e18ap6t76">
	                        <div class="css-1accgqb e1uzxhvi6">
	                            <div class="css-176lya2 e1uzxhvi3">
	                                <input id="user_id" name="user_id" placeholder="아이디를 입력해주세요" type="text" class="css-1bkd15f e1uzxhvi2" value="" >
									<div id="id_check" class="check"></div>
	                            </div>
	                        </div>
	                        <div class="css-1accgqb e1uzxhvi6">
	                            <div class="css-176lya2 e1uzxhvi3">
	                                <input id="user_pw" name="user_pw" placeholder="비밀번호를 입력해주세요" type="password" autocomplete="off" class="css-1bkd15f e1uzxhvi2" value="" >
									<div id="pw_check" class="check"></div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="css-1vjdduq e18ap6t75">
	                        <a class="css-i4t6me e18ap6t74" href="./findID">아이디 찾기</a>
	                        <span class="css-1cgn39v e18ap6t73"></span>
	                        <a class="css-i4t6me e18ap6t74" href="./findPW">비밀번호 찾기</a>
	                    </div>
	                    <div class="css-s4i9n2 e18ap6t71">
	                        <button class="css-qaxuc4 e4nu7ef3" type="button" id="loginbtn" height="54" radius="3">
	                            <span class="css-ymwvow e4nu7ef1">로그인</span>
	                        </button>
	                        <button class="css-hxorrg e4nu7ef3" type="button" height="54" radius="3" onClick="location.href='./join'">
	                            <span class="css-ymwvow e4nu7ef1">회원가입</span>
	                        </button>
	                    </div>
	                </form>
					<!-- <form action="kakao">
						 카카오 로그인
						<div id="kakao_id_login" style="text-align: center">
							<a  href="https://kauth.kakao.com/oauth/authorize?client_id=7fd3f72a12710b29220e17ed15eadb6c&redirect_uri=http://localhost/member/kakao&response_type=code">
								<img  src="/resources/images/member/kakao_login_medium_wide.png"   />
							</a>
						</div>
					</form> -->
	            </div>
	        </div>
	    </section>
	   <c:import url="../template/footer.jsp"></c:import>
	</div>
	<script src="/resources/js/member/login.js"></script>
</body>
</html>