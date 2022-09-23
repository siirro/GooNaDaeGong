<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>


	<!-- 메인에서 연결 YR -->

		<!-- 관리자센터 링크 -->
		<a href="./manager">관리자센터</a>

		<br>
		<!-- 고객센터 링크 (참고:마켓컬리) -->
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle show" id="navbarDropdownBlog" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="true">고객센터</a>
			<ul class="dropdown-menu dropdown-menu-end show" aria-labelledby="navbarDropdownBlog" data-bs-popper="none">
				<li><a class="dropdown-item" href="./notice/list">공지사항</a></li>
				<li><a class="dropdown-item" href="./faq/list">FAQ</a></li>
				<li><a class="dropdown-item" href="./qna/inquiry">1:1문의</a></li>
				<li><a class="dropdown-item" href="./pay.html">결제</a></li>
			</ul>
		</li>

	<!-- 메인에서 연결 YR 끝 -->

</body>
</html>
