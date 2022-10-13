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
			<a href="./manager">관리자센터</a>
			<hr>

			<div>구디나라 대기공주</div>
			<a href="./item/add">상품등록</a> <a href="./item/list">상품목록</a>
			<hr>
			

			<a href="/member/google">구글 로그인</a><br>
			
			<div class="products">
				<h1>최신 제품</h1>
				<c:forEach items="${newlist}" var="list">
				<a href="/item/detail?item_num=${list.item_num}"> 
					<img src="/resources/upload/item/${list.itemFileDTOs[0].fileName}">
					<p>${list.item_title}</p>
					<p class="price">${list.item_price}</p>
				</a>
				</c:forEach>

				<div class="clearfix"></div>
                <!-- 페이징 처리 -->
                <div class="css-15jhycr e3tf63e0">
                    <div class="css-sxxs1g eytury60">
                    <c:choose>
                            <c:when test="${pager.pre}">
                                <button  type="button" class="css-rzcdhr e1hbwyso0" onClick="location.href='./myLike?page=${pager.startNum-1}'">
                                    <div class="css-7qb0sc e1ilyb3p0">이전</div>
                                </button>
                            </c:when>
                            <c:otherwise>
                                    <button type="button" class="css-rzcdhr e1hbwyso0" disabled="">
                                    <div class="css-7qb0sc e1ilyb3p0">이전</div>
                                </button>
                            </c:otherwise>
                        </c:choose>
                        <div style = "display:none">
                            <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                                <li class="page-item"><a class="page-link" href="./myLike?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
                            </c:forEach>
                        </div>
                        <c:choose>
                            <c:when test="${pager.next}">
                                <button type="button" class="css-1jwilit e1pk9060" onClick="location.href='./myLike?page=${pager.lastNum+1}'">
                                <div class="css-7qb0sc e1ilyb3p0">다음</div>
                            </button>
                            </c:when>
                            <c:otherwise>
                                <button disabled="" type="button" class="css-1jwilit e1pk9060">
                                <div class="css-7qb0sc e1ilyb3p0">다음</div>
                            </button>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
			</div>
			
			<div class="products">
				<h1>인기 상픔</h1>
				<c:forEach items="${poplist}" var="pop">
				<a href="/item/detail?item_num=${pop.item_num}"> 
					<img src="/resources/upload/item/${pop.itemFileDTOs[0].fileName}">
					<p>${pop.item_title}</p>
					<p class="price">${pop.item_price}</p>
				</a>
				</c:forEach>
				<!-- <a href="#">
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
				</a> -->
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