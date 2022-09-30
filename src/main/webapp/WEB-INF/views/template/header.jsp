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
</head>

<body>
	<!-- header start -->
	<header>
		<!-- Topbar Start -->
		<div class="container-fluid py-2 border-bottom d-none d-lg-block">
			<div class="container">
				<div class="row">
					<div class="test col-md-12 text-center text-lg-end" id="nav-padding">
						<div class="d-inline-flex align-items-center">
							<c:if test="${member.user_id eq null}">
								<a class="text-body px-2" href="../member/join">회원가입</a>
								<a class="text-body px-2" href="../member/login">로그인</a>
							</c:if>
							<c:if test="${member.user_id ne null}">
								<a href="../member/logout">로그아웃</a>
							</c:if>
							<a href="#" class="nav-link dropdown-toggle text-body px-2" data-bs-toggle="dropdown">고객센터</a>
							<div class="dropdown-menu m-0">
								<a href="../notice/list" class="dropdown-item">공지사항</a>
								<a href="../faq/list" class="dropdown-item">FAQ</a>
								<a href="../qna/inquiry" class="dropdown-item">1:1문의</a>
								<a href="../pay.html" class="dropdown-item">결제</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Topbar End -->

		<!-- Mainmenu Start -->
		<div class="container-fluid sticky-top bg-white shadow-sm">
			<div class="container">
				<nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0" id="nav-main-padding">
					<a href="../" class="navbar-brand">
						<h1 class="m-0 text-uppercase">
							<img src="/resources/images/index/logo.jpg" alt="logo">
						</h1>
					</a>
					<div class="col-md-2 text-center text-lg-start mb-2 mb-lg-0">
						<div class="d-inline-flex align-items-center" id="gndg-menu">
							<a class="text-decoration-none gndg pe-3" href="#">구디나라</a>
							<span class="text-body">|</span>
							<a class="text-decoration-none gndg px-3" href="#">대기공주</a>
						</div>
					</div>
					<!-- Search Start -->
					<div class="mx-auto" style="width: 100%; max-width: 600px;">
						<div class="input-group">
							<input type="text" class="form-control w-50" style="height: 50px;" id="border" placeholder="검색어를 입력해주세요.">
							<button class="btn search-btn">
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16" id="search-icong">
									<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                </svg>
							</button>
						</div>
					</div>
					<!-- Search End -->

					<!-- nav right icon start -->
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#nav-right">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="nav-right">
						<div class="navbar-nav ms-auto py-0">
							<svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16" cursor="pointer" id="nav-right-icon">
								<path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
								<path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
							</svg>

							<svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16" cursor="pointer" id="nav-right-icon">
								<path d="m8 6.236-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z" />
							</svg>

							<svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16" cursor="pointer" id="nav-right-icon">
								<path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
							</svg>
						</div>
					</div>
					<!-- nav right icon end -->	
				</nav>
			</div>
		</div>
		<!-- Mainmenu End -->
	</header>
	<!-- Header End -->

	<!-- Nav Start -->
	<div class="container-fluid sticky-top bg-white shadow-sm">
		<div class="container">
			<nav class="navbar navbar-expand-lg bg-white navbar-light py-0 py-lg-0">
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#category">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="category">
					<div class="navbar-nav py-0">
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">카테고리</a>
							<ul class="dropdown-menu m-0">
							
								<li><a href="#" class="dropdown-item">스마트폰</a>
									<ul class="dropdown-menu ms-5">
									
										<li><a href="#" class="dropdown-item">아이폰</a>
											<ul class="dropdown-menu ms-5">
											
												<li><a href="#" class="dropdown-item">아이폰 14 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">아이폰 14</a></li>
														<li><a href="#" class="dropdown-item">아이폰 14 플러스</a></li>
														<li><a href="#" class="dropdown-item">아이폰 14 프로</a></li>
														<li><a href="#" class="dropdown-item">아이폰 14 프로맥스</a></li>
													</ul></li>

												<li><a href="#" class="dropdown-item">아이폰 SE3/SE2/8/7</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">아이폰 SE3/SE2/8/7</a></li>
														<li><a href="#" class="dropdown-item">아이폰 8+/7+</a></li>
													</ul></li>

												<li><a href="#" class="dropdown-item">아이폰 13 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">아이폰 13 미니</a></li>
														<li><a href="#" class="dropdown-item">아이폰 13 </a></li>
														<li><a href="#" class="dropdown-item">아이폰 13 프로</a></li>
														<li><a href="#" class="dropdown-item">아이폰 13 프로맥스</a></li>
													</ul></li>

												<li><a href="#" class="dropdown-item">아이폰 12 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">아이폰 12 미니</a></li>
														<li><a href="#" class="dropdown-item">아이폰 12/12 프로 </a></li>
														<li><a href="#" class="dropdown-item">아이폰 12 프로맥스</a></li>
													</ul></li>
													
												<li><a href="#" class="dropdown-item">아이폰 11 시리즈</a>
													<ul class="dropdown-menu ms-5">
													
														<li><a href="#" class="dropdown-item">아이폰 11 </a></li>
														<li><a href="#" class="dropdown-item">아이폰 11 프로</a></li>
														<li><a href="#" class="dropdown-item">아이폰 11 프로맥스</a></li>
													</ul></li>

												<li><a href="#" class="dropdown-item">아이폰 XS/XR 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">아이폰 XS/X </a></li>
														<li><a href="#" class="dropdown-item">아이폰 XS MAX</a></li>
														<li><a href="#" class="dropdown-item">아이폰 XR</a></li>
													</ul></li>

												<li><a href="#" class="dropdown-item">아이폰 6S/6/5S/5/SE</a></li>
												
											</ul></li>

										<li><a href="#" class="dropdown-item">갤럭시 S</a>
											<ul class="dropdown-menu ms-5">
											
												<li><a href="#" class="dropdown-item">갤럭시 S22 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">갤럭시 S22 </a></li>
														<li><a href="#" class="dropdown-item">갤럭시 S22+</a></li>
														<li><a href="#" class="dropdown-item">갤럭시 S22 울트라</a></li>
													</ul></li>

												<li><a href="#" class="dropdown-item">갤럭시 S21 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">갤럭시 S21</a></li>
														<li><a href="#" class="dropdown-item">갤럭시 S21+</a></li>
														<li><a href="#" class="dropdown-item">갤럭시 S21 울트라</a></li>
													</ul></li>

												<li><a href="#" class="dropdown-item">갤럭시 S20 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">갤럭시 S20 FE</a></li>
														<li><a href="#" class="dropdown-item">갤럭시 S20 </a></li>
														<li><a href="#" class="dropdown-item">갤럭시 S20+</a></li>
														<li><a href="#" class="dropdown-item">갤럭시 S20 웉트라</a></li>
													</ul></li>

												<li><a href="#" class="dropdown-item">갤럭시 S10 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">갤럭시 S10 5G</a></li>
														<li><a href="#" class="dropdown-item">갤럭시 S10</a></li>
														<li><a href="#" class="dropdown-item">갤럭시 S10+</a></li>
														<li><a href="#" class="dropdown-item">갤럭시 S10e</a></li>
													</ul></li>

												<li><a href="#" class="dropdown-item">갤럭시 S9/S8/S7 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">갤럭시 S9/S9+</a></li>
														<li><a href="#" class="dropdown-item">갤럭시 S8/S8+</a></li>
														<li><a href="#" class="dropdown-item">갤럭시 S7/S7 엣지</a></li>
													</ul></li>
													
											</ul></li>

										<li><a href="#" class="dropdown-item">갤럭시 노트</a>
											<ul class="dropdown-menu ms-5">
											
												<li><a href="#" class="dropdown-item">갤럭시 노트 20 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">갤럭시 노트20 </a></li>
														<li><a href="#" class="dropdown-item">갤럭시 노트20 울트라</a></li>
													</ul></li>
													
												<li><a href="#" class="dropdown-item">갤럭시 노트 10+</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">갤럭시 노트10</a></li>
														<li><a href="#" class="dropdown-item">갤럭시 노트10+</a></li>
													</ul></li>
													
												<li><a href="#" class="dropdown-item">갤럭시 노트 9/8</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">갤럭시 노트9</a></li>
														<li><a href="#" class="dropdown-item">갤럭시 노트8</a></li>
													</ul></li>
													
											</ul></li>

										<li><a href="#" class="dropdown-item">갤럭시 Z 폴드</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">갤럭시 Z 플드 4</a></li>
												<li><a href="#" class="dropdown-item">갤럭시 Z 폴드 3</a></li>
												<li><a href="#" class="dropdown-item">갤럭시 Z 폴드 2</a></li>
												<li><a href="#" class="dropdown-item">갤럭시 Z 폴드</a></li>
											</ul></li>

										<li><a href="#" class="dropdown-item">갤럭시 Z 플립</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">갤럭시 Z 플립4</a></li>
												<li><a href="#" class="dropdown-item">갤럭시 Z 플립3</a></li>
												<li><a href="#" class="dropdown-item">갤럭시 Z 플립</a></li>
											</ul></li>

										<li><a href="#" class="dropdown-item">갤럭시 A/기타</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">A53/A33/A13</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">A53</a></li>
														<li><a href="#" class="dropdown-item">A33</a></li>
														<li><a href="#" class="dropdown-item">A13</a></li>
													</ul></li>
													
												<li><a href="#" class="dropdown-item">퀀텀3/점프2/버디2/와이드6</a></li>
												<li><a href="#" class="dropdown-item">A12/A32/A42/A52s</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">A12</a></li>
														<li><a href="#" class="dropdown-item">A32</a></li>
														<li><a href="#" class="dropdown-item">A42</a></li>
														<li><a href="#" class="dropdown-item">A52s</a></li>
													</ul></li>
													
												<li><a href="#" class="dropdown-item">퀀텀2/점프/와이드5/버디</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">퀀텀2</a></li>
														<li><a href="#" class="dropdown-item">점프</a></li>
														<li><a href="#" class="dropdown-item">와이드5/버디</a></li>
													</ul></li>
													
												<li><a href="#" class="dropdown-item">A21s/A31/A51/A퀀텀</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">A21s</a></li>
														<li><a href="#" class="dropdown-item">A31</a></li>
														<li><a href="#" class="dropdown-item">A51</a></li>
														<li><a href="#" class="dropdown-item">A퀀텀</a></li>
													</ul></li>
													
												<li><a href="#" class="dropdown-item">A30/A40/A50</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">A30</a></li>
														<li><a href="#" class="dropdown-item">A40</a></li>
														<li><a href="#" class="dropdown-item">A50</a></li>
													</ul></li>
													
											</ul></li>

										<li><a href="#" class="dropdown-item">기타</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">Nothing Phone 1</a></li>
												<li><a href="#" class="dropdown-item">LG</a></li>
												<li><a href="#" class="dropdown-item">샤오미</a></li>
											</ul></li>
											
										<li><a href="#" class="dropdown-item">카드지갑</a></li>
									</ul></li>

								<li><a href="#" class="dropdown-item">태블릿</a>
									<ul class="dropdown-menu ms-5">
									
										<li><a href="#" class="dropdown-item">아이패드</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">아이패드 9세대/8세대/7세대</a></li>
											</ul></li>

										<li><a href="#" class="dropdown-item">아이패드 에어</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">아이패드 에어 5세대/4세대</a></li>
												<li><a href="#" class="dropdown-item">아이패드 에어 3세대</a></li>
											</ul></li>

										<li><a href="#" class="dropdown-item">아이패드 미니</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">아이패드 미니 6세대</a></li>
												<li><a href="#" class="dropdown-item">아이패드 미니 5세대</a></li>
											</ul></li>

										<li><a href="#" class="dropdown-item">아이패드 프로</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">아이패드 프로 5세대 12.9</a></li>
												<li><a href="#" class="dropdown-item">아이패드 프로 5세대 11</a></li>
												<li><a href="#" class="dropdown-item">아이패드 프로 4세대 12.9</a></li>
												<li><a href="#" class="dropdown-item">아이패드 프로 4세대 11</a></li>
												<li><a href="#" class="dropdown-item">아이패드 프로 3세대 12.9</a></li>
												<li><a href="#" class="dropdown-item">아이패드 프로 3세대 11</a></li>
											</ul></li>

										<li><a href="#" class="dropdown-item">갤럭시 탭 S</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">갤럭시탭 S8/S7</a></li>
												<li><a href="#" class="dropdown-item">갤럭시탭 S8+/S7+</a></li>
												<li><a href="#" class="dropdown-item">갤럭시탭 S8 울트라</a></li>
												<li><a href="#" class="dropdown-item">갤럭시탭 S7 FE</a></li>
												<li><a href="#" class="dropdown-item">갤럭시탭 S6/S6 라이트</a></li>
												<li><a href="#" class="dropdown-item">갤럭시탭 S5/S5e</a></li>
											</ul></li>

										<li><a href="#" class="dropdown-item">갤럭시 탭 A</a>
											<ul class="dropdown-menu ms-5">
											
												<li><a href="#" class="dropdown-item">갤럭시탭 A8</a></li>
												<li><a href="#" class="dropdown-item">갤럭시탭 A7/A7 라이트</a></li>
											</ul></li>

									</ul></li>
									
								<li><a href="#" class="dropdown-item">MagSafe</a>
									<ul class="dropdown-menu ms-5">
									
										<li><a href="#" class="dropdown-item">케이스</a>
											<ul class="dropdown-menu ms-5">
											
												<li><a href="#" class="dropdown-item">아이폰 14 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">아이폰14</a></li>
														<li><a href="#" class="dropdown-item">아이폰14플러스</a></li>
														<li><a href="#" class="dropdown-item">아이폰14프로</a></li>
														<li><a href="#" class="dropdown-item">아이폰14프로맥스</a></li>
													</ul></li>
													
												<li><a href="#" class="dropdown-item">아이폰 13 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">아이폰13미니</a></li>
														<li><a href="#" class="dropdown-item">아이폰13</a></li>
														<li><a href="#" class="dropdown-item">아이폰13프로</a></li>
														<li><a href="#" class="dropdown-item">아이폰13프로맥스</a></li>
													</ul></li>
												<li><a href="#" class="dropdown-item">아이폰 12 시리즈</a>
													<ul class="dropdown-menu ms-5">
														<li><a href="#" class="dropdown-item">아이폰12미니</a></li>
														<li><a href="#" class="dropdown-item">아이폰12/12프로</a></li>
														<li><a href="#" class="dropdown-item">아이폰12프로맥스</a></li>
													</ul></li>
											</ul></li>
										<li><a href="#" class="dropdown-item">카드지갑</a></li>
										<li><a href="#" class="dropdown-item">거치대</a></li>
									</ul></li>

								<li><a href="#" class="dropdown-item">웨어러블</a>
									<ul class="dropdown-menu ms-5">
										<li><a href="#" class="dropdown-item">에어팟</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">에어팟 프로2</a></li>
												<li><a href="#" class="dropdown-item">에어팟3</a></li>
												<li><a href="#" class="dropdown-item">에어팟 프로</a></li>
												<li><a href="#" class="dropdown-item">에어팟2/1</a></li>
											</ul></li>

										<li><a href="#" class="dropdown-item">에어태그</a></li>

										<li><a href="#" class="dropdown-item">애플워치</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">애플워치 시리즈 8/7/6/SE/5/4</a></li>
												<li><a href="#" class="dropdown-item">애플워치 시리즈 3/2/1</a></li>
												<li><a href="#" class="dropdown-item">애플워치 스트랩</a></li>
												<li><a href="#" class="dropdown-item">애플워치 거치대</a></li>
											</ul></li>
											
										<li><a href="#" class="dropdown-item">에어팟 맥스</a></li>

										<li><a href="#" class="dropdown-item">갤럭시버즈</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">갤럭시 버즈2 프로/버즈2/라이브</a></li>
												<li><a href="#" class="dropdown-item">갤럭시 버즈/버즈 플러스</a></li>
											</ul></li>

										<li><a href="#" class="dropdown-item">갤럭시워치</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">갤럭시 워치5 프로</a></li>
												<li><a href="#" class="dropdown-item">갤럭시 워치5</a></li>
												<li><a href="#" class="dropdown-item">갤럭시 워치4/4 클래식</a></li>
												<li><a href="#" class="dropdown-item">갤럭시 워치3</a></li>
												<li><a href="#" class="dropdown-item">갤럭시 워치 액티브</a></li>
												<li><a href="#" class="dropdown-item">갤럭시 워치</a></li>
												<li><a href="#" class="dropdown-item">갤럭시 워치 스트랩</a></li>
											</ul></li>

										<li><a href="#" class="dropdown-item">갤럭시 스마트태그</a></li>
										<li><a href="#" class="dropdown-item">기타 웨어러블</a></li>
									</ul></li>

								<li><a href="#" class="dropdown-item">충전용품</a>
									<ul class="dropdown-menu ms-5">
										<li><a href="#" class="dropdown-item">무선충전기</a></li>
										<li><a href="#" class="dropdown-item">충전기</a></li>
										<li><a href="#" class="dropdown-item">케이블</a>
											<ul class="dropdown-menu ms-5">
												<li><a href="#" class="dropdown-item">오디오/비디오 케이블</a></li>
												<li><a href="#" class="dropdown-item">USB C 케이블</a></li>
												<li><a href="#" class="dropdown-item">라이트닝 케이블</a></li>
											</ul></li>
									</ul></li>

								<li><a href="#" class="dropdown-item">차량용품</a>
									<ul class="dropdown-menu ms-5">
										<li><a href="#" class="dropdown-item">차량용거치대</a></li>
										<li><a href="#" class="dropdown-item">차량용충전기</a></li>
										<li><a href="#" class="dropdown-item">테슬라 액세서리</a></li>
										<li><a href="#" class="dropdown-item">벤츠 액세서리</a></li>
										<li><a href="#" class="dropdown-item">볼보 액세서리</a></li>
										<li><a href="#" class="dropdown-item">폴스타 액세서리</a></li>
									</ul></li>
									
								<li><a href="#" class="dropdown-item">여행용품</a>
									<ul class="dropdown-menu ms-5">
										<li><a href="#" class="dropdown-item">셀카봉</a></li>
										<li><a href="#" class="dropdown-item">여행용 저울</a></li>
										<li><a href="#" class="dropdown-item">트래블 파우치</a></li>
										<li><a href="#" class="dropdown-item">스포츠/레저</a></li>
										<li><a href="#" class="dropdown-item">포켓토크</a></li>
									</ul></li>
									
								<li><a href="#" class="dropdown-item">생활용품</a>
									<ul class="dropdown-menu ms-5">
										<li><a href="#" class="dropdown-item">선풍기</a></li>
										<li><a href="#" class="dropdown-item">랜턴</a></li>
										<li><a href="#" class="dropdown-item">우산</a></li>
										<li><a href="#" class="dropdown-item">모바일거치대/스트랩</a></li>
										<li><a href="#" class="dropdown-item">카드지갑</a></li>
										<li><a href="#" class="dropdown-item">다용도 파우치</a></li>
									</ul></li>
									
								<li><a href="#" class="dropdown-item">콜라보레이션</a>
									<ul class="dropdown-menu ms-5">
										<li><a href="#" class="dropdown-item">캘러웨이</a></li>
										<li><a href="#" class="dropdown-item">진로</a></li>
										<li><a href="#" class="dropdown-item">홀맨</a></li>
										<li><a href="#" class="dropdown-item">모나미</a></li>
									</ul></li>
									
							</ul>
						</div>
						<a href="#" class="nav-item nav-link" id="category-item">신상품</a> 
						<a href="#" class="nav-item nav-link" id="category-item">베스트</a>
						<a href="#" class="nav-item nav-link" id="category-item">알뜰쇼핑</a> 
						<a href="#" class="nav-item nav-link" id="category-item">특가/혜택</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
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