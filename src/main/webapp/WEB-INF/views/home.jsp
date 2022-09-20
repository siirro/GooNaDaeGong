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
<!-- 관리자센터 링크 -->
<a href="./manager">관리자센터-부트스트랩(커밋 천개정도 있음)</a>
<br>
<a href="./manager2">부트스트랩 일부만 가져왔더니 버전안맞음</a>

<!-- 고객센터 링크 (참고:마켓컬리) -->
<li class="nav-item dropdown">
	<a class="nav-link dropdown-toggle show" id="navbarDropdownBlog" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="true">고객센터</a>
	<ul class="dropdown-menu dropdown-menu-end show" aria-labelledby="navbarDropdownBlog" data-bs-popper="none">
	<li><a class="dropdown-item" href="./notice/list">공지사항</a></li>
	<li><a class="dropdown-item" href="blog-post.html">FAQ</a></li>
	<li><a class="dropdown-item" href="blog-post.html">1:1문의</a></li>
	</ul>
</li>

</body>
</html>
