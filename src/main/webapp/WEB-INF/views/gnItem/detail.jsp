<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Shop Item - Start Bootstrap Template</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico">
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet">
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../../../resources/css/gn/detail.css" rel="stylesheet">
</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="/">구디나라</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#!">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">About</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">All Products</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="#!">Popular Items</a></li>
							<li><a class="dropdown-item" href="#!">New Arrivals</a></li>
						</ul></li>
				</ul>
				<form class="d-flex">
					<button class="btn btn-outline-dark" type="submit">
						<i class="bi-cart-fill me-1"></i> Cart <span
							class="badge bg-dark text-white ms-1 rounded-pill">0</span>
					</button>
				</form>
			</div>
		</div>
	</nav>
	<!-- Product section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">
					<c:forEach items="${dto.gnItemFileDTOs }" var="fileDTO">

						<c:choose>
							<c:when test="${fileDTO eq dto.gnItemFileDTOs[0] }">
								<div class="carousel-item active" data-bs-interval="5000">
									<img src="/resources/upload/gnItem/${fileDTO.fileName }"
										class="d-block w-100" width="600" height="700" alt="...">
								</div>
							</c:when>
						</c:choose>
					</c:forEach>
				</div>
				<div class="col-md-6">
					<div id="json" style="display: none;">${json}</div>
					<input type="hidden" name="item_num" id="item_num" value="${dto.item_num }"> 
					<input type="hidden" name="user_id" id="user_id" value="${dto.user_id}">

					<div class="small mb-2">
						<span id="category1"></span> <span id="category2"></span> <span
							id="category3"></span> <span id="category4"></span>
					</div>

					<div>
						<span class=" mx-2"> 
							<span class="bi bi-suit-heart-fill" style="color: gainsboro; font-size: 20px;"></span> 
							<span id="likeUpDown"></span>
						</span> 
						<span class=" mx-2"> 
							<span class="bi bi-eye-fill" style="color: gainsboro; font-size: 20px;"></span> 
							<span>${dto.item_hit }</span>
						</span> 
						<span class=" mx-2"> 
							<span class="bi bi-clock-fill" style="color: gainsboro; font-size: 20px;"></span> 
							<span id="item_date">${dto.item_date}</span>
						</span>
					</div>

					<h1 class="fs-3 mt-4">${dto.item_title }</h1>
					<div class="fs-2 mb-5 fw-bolder">${price }원</div>
					
					<div class="alert alert-secondary text-center">
						<div class="fw-bold" style="color: #6667AB;">
							<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18"
								fill="currentColor" class="bi bi-exclamation-triangle-fill"
								viewBox="0 0 16 16">
  							<path
									d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" /></svg>
							거래 전 주의사항 안내
						</div>
						<div>
							판매자가 별도의 메신저로 결제링크를 보내거나 직거래(직접송금)을<br> 유도하는 경우 사기일 가능성이 높으니
							거래를 자제해 주시고<br> 구디나라 고객센터로 신고해주시기 바랍니다.
						</div>
					</div>

					<div>
						<div class="d-grid gap-2 col-6 mx-auto">
						<span> <c:choose>
								<c:when test="${like eq null }">
									<svg id="likeButton" style="color: black;"
										xmlns="http://www.w3.org/2000/svg" width="30" height="30"
										fill="currentColor" class="bi bi-heart-fill"
										viewBox="0 0 16 16">
								<path fill-rule="evenodd"
											d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" />
							  </svg>
								</c:when>
								<c:otherwise>
									<svg id="likeButton" style="color: red;"
										xmlns="http://www.w3.org/2000/svg" width="30" height="30"
										fill="currentColor" class="bi bi-heart-fill"
										viewBox="0 0 16 16">
								<path fill-rule="evenodd"
											d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" />
							  </svg>
								</c:otherwise>
							</c:choose>
							<i id="shareBtn" class="bi bi-share-fill" style="font-size: 150%;"></i>
<ul class="sns">
    <li class="facebook">
	    <a href="#n" onclick="fn_sendFB('facebook');return false;" class="facebook" target="_self" title="페이스북 새창열림">
	    <span class="skip">페이스북</span></a>
    </li>
    <li class="twitter">
	    <a href="#n" onclick="fn_sendFB('twitter');return false;" class="twitter" target="_self" title="트위터 새창열림">
	    <span class="skip">트위터</span></a>
    </li>
    <li class="band">
	    <a href="#n" onclick="fn_sendFB('band');return false;" class="band" target="_self" title="네이버밴드 새창열림">
	    <span class="skip">네이버밴드</span></a>
    </li>
</ul>
							
						</span> 
						
						<span>
						<button class="btn btn-light" type="button" id="minus">-</button>
						<input type="text" value="1" id="itemCount">
						<button class="btn btn-light" type="button"id="plus">+</button>
						</span>
							<button class="btn btn-primary" type="button">바로구매</button>
							<button class="btn btn-primary" type="button">장바구니</button>
						</div>
					</div>
					<div class="mt-3 d-grid gap-2 d-md-flex justify-content-md-end">
						<span class="mx-3"> 
						<a class="btn" style="background-color: #6667AB; color: white;"
							href="update?item_num=${dto.item_num }">수정</a>
						<a id="deleteButton" class="btn" style="background-color: #6667AB; color: white;"
							href="delete?item_num=${dto.item_num }">삭제</a> 
						<a class="btn" style="background-color: #6667AB; color: white;" href="list">목록보기</a>
						</span>
					</div>

				</div>
				<div class="container px-4 px-lg-5 mt-5">
					<div>${dto.item_contents }</div>
					<div>
						<c:forEach items="${dto.gnItemFileDTOs }" var="fileDTO">
							<img src="/resources/upload/gnItem/${fileDTO.fileName }"
								alt="...">
						</c:forEach>
						<img src="/resources/upload/gnItem/notice.jpg" alt="...">
					</div>
				</div>
			</div>
		</div>
	</section>
	<section id="reviewContents" class="py-5 bg-light">
	</section>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
	<script src="/resources/js/gn/detail.js"></script>
	<script>
		getLikeCount();
		getCategory();
		getReview();
		getReviewCount();
	</script>
</body>
</html>
