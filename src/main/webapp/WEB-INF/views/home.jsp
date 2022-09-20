<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<body>

<h1>
	Hello world!  
	환영합니다 
</h1>


<P>  The time on the server is ${serverTime}. </P>

<c:if test="${member.user_id eq null}">
<a href="/member/login">로그인</a><br>
<a href="/member/join">회원가입</a><br>
</c:if>
<hr>
<c:if test="${member.user_id ne null}">
<a href="/member/logout">로그아웃</a>
</c:if>
<br>
<br>
<a href="/member/google">구글 로그인</a><br>
<a href="/member/findID">아이디 찾기</a>
</body>
</html>
