<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>구디나라 대기공주</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- 웹사이트 주소창 아이콘 -->
<!-- Favicon -->
<link href="/resources/images/index/logo.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
<link 	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
<link href="/resources/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

<!-- Customized Bootstrap Stylesheet -->
<link href="/resources/css/index/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/resources/css/index/style.css" rel="stylesheet">

 <style>
	.g2 {
		position: relative;
		left: 109px;
		top: -1px;
	}
	
	.g3 {
		left: 109px;
		top: -1px;
	}
	
	.g4 {
		left: 135px;
		top: -1px;
	}
</style>
</head>

<body>

	<c:import url="/WEB-INF/views/template/recentItem.jsp"></c:import>
	
	<!-- header start -->
	<header>
		<!-- Topbar Start -->
		<div class="container-fluid py-2 border-bottom d-none d-lg-block">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center text-lg-end" id="nav-padding">
						<div class="d-inline-flex align-items-center">
						
							<c:choose>
								<c:when test="${member.user_grade eq '2'}">
									<a  class="text-body px-2" href="../member/logout">로그아웃</a>
									<a class="text-body px-2" href="../manager">관리자센터</a>
								</c:when>
								<c:when test="${member.user_grade eq '1'}">
									<a  class="text-body px-2" href="../member/logout">로그아웃</a>
									<a class="text-body px-2" href="/cart/cart">장바구니	</a>
									<a  class="text-body px-2" href="../mypage/mypage">마이페이지</a>
								</c:when>
								<c:otherwise>
									<a class="text-body px-2" href="../member/join">회원가입</a>
									<a class="text-body px-2" href="../member/login">로그인</a>
								</c:otherwise>
							</c:choose>
							
							<!-- <c:if test="${member.user_grade == 2}">
								<a class="text-body px-2" href="../member/join">관리자센터</a>
							</c:if>
							<c:if test="${member.user_id eq null}">
								<a class="text-body px-2" href="../member/join">회원가입</a>
								<a class="text-body px-2" href="../member/login">로그인</a>
							</c:if>
							<c:if test="${member.user_id ne null}">
								<a  class="text-body px-2" href="../member/logout">로그아웃</a>
								<a class="text-body px-2" href="/cart/cart">장바구니	</a>
								<a  class="text-body px-2" href="../mypage/mypage">마이페이지</a>
							</c:if> -->
							
							<a href="#" class="nav-link dropdown-toggle text-body px-2" data-bs-toggle="dropdown">고객센터</a>
							<div class="dropdown-menu m-0">
								<a href="../notice/list" class="dropdown-item">공지사항</a>
								<a href="../faq/list" class="dropdown-item">FAQ</a>
								<a href="../qna/inquiry" class="dropdown-item">1:1문의</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Topbar End -->
		<!-- Nav Start -->
	<div class="container-fluid sticky-top bg-white shadow-sm header" style="position: 0px; padding-left: 250px">
		<div class="container">
			<nav class="navbar navbar-expand-lg bg-white navbar-light py-0 py-lg-0">
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#category">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="category">
					<div class="navbar-nav py-0">
						<div class="nav-item dropdown" style="width: 400px">
							<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" style="width: 70px">
								<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
  									<path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
								</svg>
							</a>
							<ul class="dropdown-menu m-0 category_ul">
							
								<li class="category_li"><a href="#" class="dropdown-item category_li">스마트폰</a>
									<ul class="dropdown-menu ms-5 category_ul g2">
									
										<li class="category_li"><a href="#" class="dropdown-item category_li">아이폰</a>
											<ul class="dropdown-menu ms-5 category_ul g3">
											 
												<li class="category_li"><a href="#" class="dropdown-item category_li">아이폰 14 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul g4">
														<li class="category_li"><a href="../item/list?cate_num=1111" class="dropdown-item ">아이폰 14</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1112" class="dropdown-item ">아이폰 14 플러스</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1113" class="dropdown-item ">아이폰 14 프로</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1114" class="dropdown-item ">아이폰 14 프로맥스</a></li>
													</ul></li>

												<li class="category_li"><a href="#" class="dropdown-item ">아이폰 SE3/SE2/8/7</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="top: 35px">
														<li class="category_li"><a href="../item/list?cate_num=1121" class="dropdown-item ">아이폰 SE3/SE2/8/7</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1122" class="dropdown-item ">아이폰 8+/7+</a></li>
													</ul></li>

												<li class="category_li"><a href="#" class="dropdown-item ">아이폰 13 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="top: 70px">
														<li class="category_li"><a href="../item/list?cate_num=1131" class="dropdown-item ">아이폰 13 미니</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1132" class="dropdown-item ">아이폰 13 </a></li>
														<li class="category_li"><a href="../item/list?cate_num=1133" class="dropdown-item ">아이폰 13 프로</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1134" class="dropdown-item ">아이폰 13 프로맥스</a></li>
													</ul></li>

												<li class="category_li"><a href="#" class="dropdown-item ">아이폰 12 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="top: 100px">
														<li class="category_li"><a href="../item/list?cate_num=1141" class="dropdown-item ">아이폰 12 미니</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1142" class="dropdown-item ">아이폰 12/12 프로 </a></li>
														<li class="category_li"><a href="../item/list?cate_num=1143" class="dropdown-item ">아이폰 12 프로맥스</a></li>
													</ul></li>
													
												<li class="category_li"><a href="#" class="dropdown-item ">아이폰 11 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="top: 126px">
													
														<li class="category_li"><a href="../item/list?cate_num=1151" class="dropdown-item ">아이폰 11 </a></li>
														<li class="category_li"><a href="../item/list?cate_num=1152" class="dropdown-item ">아이폰 11 프로</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1153" class="dropdown-item ">아이폰 11 프로맥스</a></li>
													</ul></li>

												<li class="category_li"><a href="#" class="dropdown-item ">아이폰 XS/XR 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="top: 127px">
														<li class="category_li"><a href="../item/list?cate_num=1161" class="dropdown-item ">아이폰 XS/X </a></li>
														<li class="category_li"><a href="../item/list?cate_num=1162" class="dropdown-item ">아이폰 XS MAX</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1163" class="dropdown-item ">아이폰 XR</a></li>
													</ul></li>

												<li class="category_li"><a href="../item/list?cate_num=1171" class="dropdown-item ">아이폰 6S/6/5S/5/SE</a></li>
												
											</ul></li>
											
										<li class="category_li"><a href="#" class="dropdown-item ">갤럭시 S</a>
											<ul class="dropdown-menu ms-5 category_ul g3">
											
												<li class="category_li"><a href="#" class="dropdown-item ">갤럭시 S22 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="left: 156px">
														<li class="category_li"><a href="../item/list?cate_num=1211" class="dropdown-item ">갤럭시 S22 </a></li>
														<li class="category_li"><a href="../item/list?cate_num=1212" class="dropdown-item ">갤럭시 S22+</a ></li>
														<li class="category_li"><a href="../item/list?cate_num=1213" class="dropdown-item ">갤럭시 S22 울트라</a></li>
													</ul></li>

												<li class="category_li"><a href="#" class="dropdown-item ">갤럭시 S21 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="left: 156px">
														<li class="category_li"><a href="../item/list?cate_num=1221" class="dropdown-item ">갤럭시 S21</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1222" class="dropdown-item ">갤럭시 S21+</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1223" class="dropdown-item ">갤럭시 S21 울트라</a></li>
													</ul></li>

												<li class="category_li"><a href="#" class="dropdown-item ">갤럭시 S20 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="left: 156px">
														<li class="category_li"><a href="../item/list?cate_num=1231" class="dropdown-item ">갤럭시 S20 FE</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1232" class="dropdown-item ">갤럭시 S20 </a></li>
														<li class="category_li"><a href="../item/list?cate_num=1233" class="dropdown-item ">갤럭시 S20+</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1234" class="dropdown-item ">갤럭시 S20 웉트라</a></li>
													</ul></li>

												<li class="category_li"><a href="#" class="dropdown-item ">갤럭시 S10 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="left: 156px; top: 30px;">
														<li class="category_li"><a href="../item/list?cate_num=1241" class="dropdown-item ">갤럭시 S10 5G</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1242" class="dropdown-item ">갤럭시 S10</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1243" class="dropdown-item ">갤럭시 S10+</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1244" class="dropdown-item ">갤럭시 S10e</a></li>
													</ul></li>

												<li class="category_li"><a href="#" class="dropdown-item ">갤럭시 S9/S8/S7 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="left: 156px; top: 62px">
														<li class="category_li"><a href="../item/list?cate_num=1251" class="dropdown-item ">갤럭시 S9/S9+</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1252" class="dropdown-item ">갤럭시 S8/S8+</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1253" class="dropdown-item ">갤럭시 S7/S7 엣지</a></li>
													</ul></li>
													
											</ul></li>

										<li class="category_li"><a href="#" class="dropdown-item">갤럭시 노트</a>
											<ul class="dropdown-menu ms-5 category_ul g3" style="top: 70px">
											
												<li class="category_li"><a href="#" class="dropdown-item">갤럭시 노트 20 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="left: 143px;">
														<li class="category_li"><a href="../item/list?cate_num=1311" class="dropdown-item">갤럭시 노트20 </a></li>
														<li class="category_li"><a href="../item/list?cate_num=1312" class="dropdown-item">갤럭시 노트20 울트라</a></li>
													</ul></li>
													
												<li class="category_li"><a href="#" class="dropdown-item">갤럭시 노트 10+</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="left: 143px;">
														<li class="category_li"><a href="../item/list?cate_num=1321" class="dropdown-item">갤럭시 노트10</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1322" class="dropdown-item">갤럭시 노트10+</a></li>
													</ul></li>
													
												<li class="category_li"><a href="#" class="dropdown-item">갤럭시 노트 9/8</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="left: 143px; top: 30px;">
														<li class="category_li"><a href="../item/list?cate_num=1331" class="dropdown-item">갤럭시 노트9</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1332" class="dropdown-item">갤럭시 노트8</a></li>
													</ul></li>
													
											</ul></li>

										<li class="category_li"><a href="#" class="dropdown-item">갤럭시 Z 폴드</a>
											<ul class="dropdown-menu ms-5 category_ul g3" style="top: 100px">
												<li class="category_li"><a href="../item/list?cate_num=1410" class="dropdown-item">갤럭시 Z 폴드 4</a></li>
												<li class="category_li"><a href="../item/list?cate_num=1420" class="dropdown-item">갤럭시 Z 폴드 3</a></li>
												<li class="category_li"><a href="../item/list?cate_num=1430" class="dropdown-item">갤럭시 Z 폴드 2</a></li>
												<li class="category_li"><a href="../item/list?cate_num=1440" class="dropdown-item">갤럭시 Z 폴드</a></li>
											</ul></li>

										<li class="category_li"><a href="#" class="dropdown-item">갤럭시 Z 플립</a>
											<ul class="dropdown-menu ms-5 category_ul g3" style="top: 130px">
												<li class="category_li"><a href="../item/list?cate_num=1510" class="dropdown-item">갤럭시 Z 플립4</a></li>
												<li class="category_li"><a href="../item/list?cate_num=1520" class="dropdown-item">갤럭시 Z 플립3</a></li>
												<li class="category_li"><a href="../item/list?cate_num=1530" class="dropdown-item">갤럭시 Z 플립</a></li>
											</ul></li>

										<li class="category_li"><a href="#" class="dropdown-item">갤럭시 A/기타</a>
											<ul class="dropdown-menu ms-5 category_ul g3">
												<li class="category_li"><a href="#" class="dropdown-item">A53/A33/A13</a>
													<ul class="dropdown-menu ms-5 category_ul g4" style="left: 177px;">
														<li class="category_li"><a href="../item/list?cate_num=1611" class="dropdown-item">A53</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1612" class="dropdown-item">A33</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1613" class="dropdown-item">A13</a></li>
													</ul></li>
													
												<li class="category_li"><a href="../item/list?cate_num=1620" class="dropdown-item">퀀텀3/점프2/버디2/와이드6</a></li>

												<li class="category_li"><a href="#" class="dropdown-item">A12/A32/A42/A52s</a>
													<ul class="dropdown-menu ms-5 category_ul g4"  style="left: 177px;">
														<li class="category_li"><a href="../item/list?cate_num=1631" class="dropdown-item">A12</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1632" class="dropdown-item">A32</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1633" class="dropdown-item">A42</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1634" class="dropdown-item">A52s</a></li>
													</ul></li>
													
												<li class="category_li"><a href="#" class="dropdown-item">퀀텀2/점프/와이드5/버디</a>
													<ul class="dropdown-menu ms-5 category_ul g4"  style="left: 177px; top:95px;">
														<li class="category_li"><a href="../item/list?cate_num=1641" class="dropdown-item">퀀텀2</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1642" class="dropdown-item">점프</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1643" class="dropdown-item">와이드5/버디</a></li>
													</ul></li>
													
												<li class="category_li"><a href="#" class="dropdown-item">A21s/A31/A51/A퀀텀</a>
													<ul class="dropdown-menu ms-5 category_ul g4"  style="left: 177px; top: 95px;">
														<li class="category_li"><a href="../item/list?cate_num=1651" class="dropdown-item">A21s</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1652" class="dropdown-item">A31</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1653" class="dropdown-item">A51</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1654" class="dropdown-item">A퀀텀</a></li>
													</ul></li>
													
												<li class="category_li"><a href="#" class="dropdown-item">A30/A40/A50</a>
													<ul class="dropdown-menu ms-5 category_ul g4"  style="left: 177px; top: 125px;">
														<li class="category_li"><a href="../item/list?cate_num=1661" class="dropdown-item">A30</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1662" class="dropdown-item">A40</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1663" class="dropdown-item">A50</a></li>
													</ul></li>

												<li class="category_li"><a href="#" class="dropdown-item">기타</a>
													<ul class="dropdown-menu ms-5 category_ul g4"  style="left: 177px; top: 95px;">
														<li class="category_li"><a href="../item/list?cate_num=1671" class="dropdown-item">엑스커버5(키즈폰)</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1672" class="dropdown-item">M12</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1673" class="dropdown-item">와이드4</a></li>
														<li class="category_li"><a href="../item/list?cate_num=1674" class="dropdown-item">진2</a></li>
													</ul></li>
													
											</ul></li>

										<li class="category_li"><a href="#" class="dropdown-item">기타</a>
											<ul class="dropdown-menu ms-5 category_ul g3" style="top: 160px;">
												<li class="category_li"><a href="../item/list?cate_num=1710" class="dropdown-item">Nothing Phone 1</a></li>
												<li class="category_li"><a href="../item/list?cate_num=1720" class="dropdown-item">LG</a></li>
												<li class="category_li"><a href="../item/list?cate_num=1730" class="dropdown-item">샤오미</a></li>
											</ul></li>
											
										<li class="category_li"><a href="../item/list?cate_num=1800" class="dropdown-item">카드지갑</a></li>
									</ul></li>

								<li class="category_li"><a href="#" class="dropdown-item">태블릿</a>
									<ul class="dropdown-menu ms-5 category_ul g2">
									
										<li class="category_li"><a href="#" class="dropdown-item">아이패드</a>
											<ul class="dropdown-menu ms-5 category_ul g3">
												<li class="category_li"><a href="../item/list?cate_num=2110" class="dropdown-item">아이패드 9세대/8세대/7세대</a></li>
											</ul></li>

										<li class="category_li"><a href="#" class="dropdown-item">아이패드 에어</a>
											<ul class="dropdown-menu ms-5 category_ul g3">
												<li class="category_li"><a href="../item/list?cate_num=2210" class="dropdown-item">아이패드 에어 5세대/4세대</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2220" class="dropdown-item">아이패드 에어 3세대</a></li>
											</ul></li>

										<li class="category_li"><a href="#" class="dropdown-item">아이패드 미니</a>
											<ul class="dropdown-menu ms-5 category_ul g3" style="top: 70px">
												<li class="category_li"><a href="../item/list?cate_num=2310" class="dropdown-item">아이패드 미니 6세대</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2320" class="dropdown-item">아이패드 미니 5세대</a></li>
											</ul></li>

										<li class="category_li"><a href="#" class="dropdown-item">아이패드 프로</a>
											<ul class="dropdown-menu ms-5 category_ul g3">
												<li class="category_li"><a href="../item/list?cate_num=2410" class="dropdown-item">아이패드 프로 5세대 12.9</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2420" class="dropdown-item">아이패드 프로 5세대 11</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2430" class="dropdown-item">아이패드 프로 4세대 12.9</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2440" class="dropdown-item">아이패드 프로 4세대 11</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2450" class="dropdown-item">아이패드 프로 3세대 12.9</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2460" class="dropdown-item">아이패드 프로 3세대 11</a></li>
											</ul></li>

										<li class="category_li"><a href="#" class="dropdown-item">갤럭시 탭 S</a>
											<ul class="dropdown-menu ms-5 category_ul g3">
												<li class="category_li"><a href="../item/list?cate_num=2510" class="dropdown-item">갤럭시탭 S8/S7</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2520" class="dropdown-item">갤럭시탭 S8+/S7+</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2530" class="dropdown-item">갤럭시탭 S8 울트라</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2540" class="dropdown-item">갤럭시탭 S7 FE</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2550" class="dropdown-item">갤럭시탭 S6/S6 라이트</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2560" class="dropdown-item">갤럭시탭 S5/S5e</a></li>
											</ul></li>

										<li class="category_li"><a href="#" class="dropdown-item">갤럭시 탭 A</a>
											<ul class="dropdown-menu ms-5 category_ul g3" style="top: 125px">
											
												<li class="category_li"><a href="../item/list?cate_num=2610" class="dropdown-item">갤럭시탭 A8</a></li>
												<li class="category_li"><a href="../item/list?cate_num=2620" class="dropdown-item">갤럭시탭 A7/A7 라이트</a></li>
											</ul></li>

									</ul></li>
									
								<li class="category_li"><a href="#" class="dropdown-item">MagSafe</a>
									<ul class="dropdown-menu ms-5 category_ul g2" style="top: 70px;">
									
										<li class="category_li"><a href="#" class="dropdown-item">케이스</a>
											<ul class="dropdown-menu ms-5 category_ul g3">
											
												<li class="category_li"><a href="#" class="dropdown-item">아이폰 14 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul">
														<li class="category_li"><a href="../item/list?cate_num=3111" class="dropdown-item">아이폰14</a></li>
														<li class="category_li"><a href="../item/list?cate_num=3112" class="dropdown-item">아이폰14플러스</a></li>
														<li class="category_li"><a href="../item/list?cate_num=3113" class="dropdown-item">아이폰14프로</a></li>
														<li class="category_li"><a href="../item/list?cate_num=3114" class="dropdown-item">아이폰14프로맥스</a></li>
													</ul></li>
													
												<li class="category_li"><a href="#" class="dropdown-item">아이폰 13 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul">
														<li class="category_li"><a href="../item/list?cate_num=3121" class="dropdown-item">아이폰13미니</a></li>
														<li class="category_li"><a href="../item/list?cate_num=3122" class="dropdown-item">아이폰13</a></li>
														<li class="category_li"><a href="../item/list?cate_num=3123" class="dropdown-item">아이폰13프로</a></li>
														<li class="category_li"><a href="../item/list?cate_num=3124" class="dropdown-item">아이폰13프로맥스</a></li>
													</ul></li>
												<li class="category_li"><a href="#" class="dropdown-item">아이폰 12 시리즈</a>
													<ul class="dropdown-menu ms-5 category_ul">
														<li class="category_li"><a href="../item/list?cate_num=3131" class="dropdown-item">아이폰12미니</a></li>
														<li class="category_li"><a href="../item/list?cate_num=3132" class="dropdown-item">아이폰12/12프로</a></li>
														<li class="category_li"><a href="../item/list?cate_num=3133" class="dropdown-item">아이폰12프로맥스</a></li>
													</ul></li>
											</ul></li>
										<li class="category_li"><a href="../item/list?cate_num=3200" class="dropdown-item">카드지갑</a></li>
										<li class="category_li"><a href="../item/list?cate_num=3300" class="dropdown-item">거치대</a></li>
									</ul></li>

								<li class="category_li"><a href="#" class="dropdown-item">웨어러블</a>
									<ul class="dropdown-menu ms-5 category_ul g2">
										<li class="category_li"><a href="#" class="dropdown-item">에어팟</a>
											<ul class="dropdown-menu ms-5 category_ul g3" style="left: 115px;">
												<li class="category_li"><a href="../item/list?cate_num=4110" class="dropdown-item">에어팟3</a></li>
												<li class="category_li"><a href="../item/list?cate_num=4120" class="dropdown-item">에어팟 프로</a></li>
												<li class="category_li"><a href="../item/list?cate_num=4130" class="dropdown-item">에어팟2/1</a></li>
											</ul></li>

										<li class="category_li"><a href="../item/list?cate_num=4200" class="dropdown-item">에어태그</a></li>

										<li class="category_li"><a href="#" class="dropdown-item">애플워치</a>
											<ul class="dropdown-menu ms-5 category_ul g3" style="left: 115px;">
												<li class="category_li"><a href="../item/list?cate_num=4310" class="dropdown-item">애플워치 시리즈 8/7/6/SE/5/4</a></li>
												<li class="category_li"><a href="../item/list?cate_num=4320" class="dropdown-item">애플워치 시리즈 3/2/1</a></li>
												<li class="category_li"><a href="../item/list?cate_num=4330" class="dropdown-item">애플워치 스트랩</a></li>
												<li class="category_li"><a href="../item/list?cate_num=4340" class="dropdown-item">애플워치 거치대</a></li>
											</ul></li>
											
										<li class="category_li"><a href="../item/list?cate_num=4400" class="dropdown-item">에어팟 맥스</a></li>

										<li class="category_li"><a href="#" class="dropdown-item">갤럭시버즈</a>
											<ul class="dropdown-menu ms-5 category_ul g3" style="left: 115px; top: 125px;">
												<li class="category_li"><a href="../item/list?cate_num=4510" class="dropdown-item">갤럭시 버즈2 프로/버즈2/라이브</a></li>
												<li class="category_li"><a href="../item/list?cate_num=4520" class="dropdown-item">갤럭시 버즈/버즈 플러스</a></li>
											</ul></li>

										<li class="category_li"><a href="#" class="dropdown-item">갤럭시워치</a>
											<ul class="dropdown-menu ms-5 category_ul g3" style="left: 115px;">
												<li class="category_li"><a href="../item/list?cate_num=4610" class="dropdown-item">갤럭시 워치5 프로</a></li>
												<li class="category_li"><a href="../item/list?cate_num=4620" class="dropdown-item">갤럭시 워치5</a></li>
												<li class="category_li"><a href="../item/list?cate_num=4630" class="dropdown-item">갤럭시 워치4/4 클래식</a></li>
												<li class="category_li"><a href="../item/list?cate_num=4640" class="dropdown-item">갤럭시 워치3</a></li>
												<li class="category_li"><a href="../item/list?cate_num=4650" class="dropdown-item">갤럭시 워치 액티브</a></li>
												<li class="category_li"><a href="../item/list?cate_num=4660" class="dropdown-item">갤럭시 워치</a></li>
												<li class="category_li"><a href="../item/list?cate_num=4670" class="dropdown-item">갤럭시 워치 스트랩</a></li>
											</ul></li>

										<li class="category_li"><a href="../item/list?cate_num=4700" class="dropdown-item">갤럭시 스마트태그</a></li>
										<li class="category_li"><a href="../item/list?cate_num=4800" class="dropdown-item">기타 웨어러블</a></li>
									</ul></li>

								<li class="category_li"><a href="#" class="dropdown-item">충전용품</a>
									<ul class="dropdown-menu ms-5 category_ul g2" style="top: 135px">
										<li class="category_li"><a href="../item/list?cate_num=5100" class="dropdown-item">보조배터리</a></li>

										<li class="category_li"><a href="../item/list?cate_num=5200" class="dropdown-item">무선충전기</a></li>

										<li class="category_li"><a href="../item/list?cate_num=5300" class="dropdown-item">충전기</a></li>

										<li class="category_li"><a href="#" class="dropdown-item">케이블</a>
											<ul class="dropdown-menu ms-5 category_ul g3" style="top: 30px;">
												<li class="category_li"><a href="../item/list?cate_num=5410" class="dropdown-item">오디오/비디오 케이블</a></li>
												<li class="category_li"><a href="../item/list?cate_num=5420" class="dropdown-item">USB C 케이블</a></li>
												<li class="category_li"><a href="../item/list?cate_num=5430" class="dropdown-item">라이트닝 케이블</a></li>
											</ul></li>
									</ul></li>

								<li class="category_li"><a href="#" class="dropdown-item">차량용품</a>
									<ul class="dropdown-menu ms-5 category_ul g2" style="top: 95px">
										<li class="category_li"><a href="../item/list?cate_num=6100" class="dropdown-item">차량용거치대</a></li>
										<li class="category_li"><a href="../item/list?cate_num=6200" class="dropdown-item">차량용충전기</a></li>
										<li class="category_li"><a href="../item/list?cate_num=6300" class="dropdown-item">테슬라 액세서리</a></li>
										<li class="category_li"><a href="../item/list?cate_num=6400" class="dropdown-item">벤츠 액세서리</a></li>
										<li class="category_li"><a href="../item/list?cate_num=6500" class="dropdown-item">볼보 액세서리</a></li>
										<li class="category_li"><a href="../item/list?cate_num=6600" class="dropdown-item">폴스타 액세서리</a></li>
									</ul></li>
									
								<li class="category_li"><a href="#" class="dropdown-item">여행용품</a>
									<ul class="dropdown-menu ms-5 category_ul g2" style="top: 127px">
										<li class="category_li"><a href="../item/list?cate_num=7100" class="dropdown-item">셀카봉</a></li>
										<li class="category_li"><a href="../item/list?cate_num=7200" class="dropdown-item">여행용 저울</a></li>
										<li class="category_li"><a href="../item/list?cate_num=7300" class="dropdown-item">트래블 파우치</a></li>
										<li class="category_li"><a href="../item/list?cate_num=7400" class="dropdown-item">스포츠/레저</a></li>
										<li class="category_li"><a href="../item/list?cate_num=7500" class="dropdown-item">포켓토크</a></li>
									</ul></li>
									
								<li class="category_li"><a href="#" class="dropdown-item">생활용품</a>
									<ul class="dropdown-menu ms-5 category_ul g2" style="top: 95px">
										<li class="category_li"><a href="../item/list?cate_num=8100" class="dropdown-item">선풍기</a></li>
										<li class="category_li"><a href="../item/list?cate_num=8200" class="dropdown-item">랜턴</a></li>
										<li class="category_li"><a href="../item/list?cate_num=8300" class="dropdown-item">우산</a></li>
										<li class="category_li"><a href="../item/list?cate_num=8400" class="dropdown-item">모바일거치대/스트랩</a></li>
										<li class="category_li"><a href="../item/list?cate_num=8500" class="dropdown-item">카드지갑</a></li>
										<li class="category_li"><a href="../item/list?cate_num=8600" class="dropdown-item">다용도 파우치</a></li>
									</ul></li>
									
								<li class="category_li"><a href="#" class="dropdown-item">콜라보레이션</a>
									<ul class="dropdown-menu ms-5 category_ul g2" style="top: 160px">
										<li class="category_li"><a href="../item/list?cate_num=9100" class="dropdown-item">캘러웨이</a></li>
										<li class="category_li"><a href="../item/list?cate_num=9200" class="dropdown-item">진로</a></li>
										<li class="category_li"><a href="../item/list?cate_num=9300" class="dropdown-item">홀맨</a></li>
										<li class="category_li"><a href="../item/list?cate_num=9400" class="dropdown-item">모나미</a></li>
									</ul></li>
									
							</ul>
						</div>


	<!-- Nav End -->

		<!-- Mainmenu Start -->
		<div class="container-fluid sticky-top shadow-sm" style="width: 10px">
			<div class="container">
				<nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0" id="nav-main-padding">
					<a href="../" class="navbar-brand">
						<h1 class="m-0 text-uppercase">
							<img src="/resources/images/index/logo.jpg" alt="logo">
						</h1>
					</a>

					<!-- Search Start -->
					<form action="/item/search" method="post">
						<div class="mx-auto" style="width: 100%; max-width: 600px;">
							<div class="input-group">
								<input type="text" class="form-control w-50" name="search" style="height: 50px;" id="border search" placeholder="검색어를 입력해주세요.">
								<button type="submit" class="btn search-btn">
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16" id="search-icong">
										<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
	                                </svg>
								</button>
							</div>
						</div>
					</form>
					<!-- Search End -->

					<!-- nav right icon start -->
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#nav-right">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="nav-right">
						<div class="navbar-nav ms-auto py-0">
							
						</div>
					</div>
					<!-- nav right icon end -->	
				</nav>
			</div>
		</div>
		<!-- Mainmenu End -->
							</div>
				</div>
			</nav>
		</div>
	</div>
	</header>
	<!-- Header End -->

	<!-- Nav End -->

	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-lg-square back-to-top">
		<i class="bi bi-arrow-up"></i>
	</a>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<scrit src="/resources/lib/easing/easing.min.js"></script>
	<script src="/resources/lib/waypoints/waypoints.min.js"></script> 
	<script src="/resources/lib/owlcarousel/owl.carousel.min.js"></script> 
	<script src="/resources/lib/tempusdominus/js/moment.min.js"></script>
	<script src="/resources/lib/tempusdominus/js/moment-timezone.min.js"></script>
	<script 	src="/resources/lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

	<!-- Template Javascript -->
	<script src="/resources/js/index/main.js"></script>
	
</body>
</html>