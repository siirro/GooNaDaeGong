<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>구디나라 대기공주</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/resources/css/index/index.css" rel="stylesheet">
</head>
<body>
	<!-- Wrap Start -->
	<div class="wrap">
		<c:import url="./template/header.jsp"></c:import>

		<section>
			
			<!-- Carousel Start -->
			<div id="carouselExampleInterval" class="carousel slide"
				data-bs-ride="carousel">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true"	 aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>
				<div class="carousel-inner">
					<div class="carousel-item active" data-bs-interval="10000">
						<img src="/resources/images/index/1.jpg" class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item" data-bs-interval="2000">
						<img src="/resources/images/index/2.jpg" class="d-block w-100" alt="...">
					</div>
					<div class="carousel-item">
						<img src="/resources/images/index/3.jpg" class="d-block w-100" alt="...">
					</div>
				</div>
				<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Previous</span>
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleInterval" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="visually-hidden">Next</span>
				</button>
			</div>
			<!-- Carousel End -->
			
			<div>관리자센터</div>
			<a href="./manager/index.jsp">관리자센터</a>
			<hr>

			<div>구디나라 대기공주</div>
			<a href="./item/add.jsp">상품등록</a> <a href="./item/list.jsp">상품목록</a>
			<hr>
			

			<a href="/member/google">구글 로그인</a><br>
			
			<div class="products">
				<h1>이 상품 어때요?</h1>
				<a href="#"> 
					<img src="/resources/images/sample.jpg">
					<p>상품명</p>
					<p class="price">100,000</p>
				</a>
				<a href="#">
					<img src="/resources/images/sample.jpg">
					<p>상품명</p>
					<p class="price">100,000</p>
				</a>
				<a href="#">
					<img src="/resources/images/sample.jpg">
					<p>상품명</p>
					<p class="price">100,000</p>
				</a>
				 <a href="#">
				 	<img src="/resources/images/sample.jpg">
					<p>상품명</p>
					<p class="price">100,000</p>
				</a>
				<div class="clearfix"></div>
			</div>
			
			<div class="products">
				<h1>놓치면 후회할 가격</h1>
				<a href="#"> 
					<img src="/resources/images/sample.jpg">
					<p>상품명</p>
					<p class="price">100,000</p>
				</a>
				<a href="#">
					<img src="/resources/images/sample.jpg">
					<p>상품명</p>
					<p class="price">100,000</p>
				</a>
				<a href="#">
					<img src="/resources/images/sample.jpg">
					<p>상품명</p>
					<p class="price">100,000</p>
				</a>
				 <a href="#">
				 	<img src="/resources/images/sample.jpg">
					<p>상품명</p>
					<p class="price">100,000</p>
				</a>
				<div class="clearfix"></div>
			</div>
			
			<div class="products">
				<h1>이거 살려고 가입함ㅅㄱ</h1>
				<a href="#"> 
					<img src="/resources/images/sample.jpg">
					<p>상품명</p>
					<p class="price">100,000</p>
				</a>
				<a href="#">
					<img src="/resources/images/sample.jpg">
					<p>상품명</p>
					<p class="price">100,000</p>
				</a>
				<a href="#">
					<img src="/resources/images/sample.jpg">
					<p>상품명</p>
					<p class="price">100,000</p>
				</a>
				 <a href="#">
				 	<img src="/resources/images/sample.jpg">
					<p>상품명</p>
					<p class="price">100,000</p>
				</a>
				<div class="clearfix"></div>
			</div>
			
		</section>

		<c:import url="./template/footer.jsp"></c:import>

	</div>
	<!-- Wrap End -->

</body>
</html>