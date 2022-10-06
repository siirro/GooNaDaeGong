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

					<div id="carouselExampleControls" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-inner">
							<c:forEach items="${dto.gnItemFileDTOs }" var="fileDTO">

								<c:choose>
									<c:when test="${fileDTO eq dto.gnItemFileDTOs[0] }">
										<div class="carousel-item active" data-bs-interval="5000">
											<img src="/resources/upload/gnItem/${fileDTO.fileName }"
												class="d-block w-100" width="600" height="700" alt="...">
										</div>
									</c:when>
									<c:otherwise>
										<div class="carousel-item" data-bs-interval="2000">
											<img src="/resources/upload/gnItem/${fileDTO.fileName }"
												class="d-block w-100" width="600" height="700" alt="...">
										</div>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleControls" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleControls" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>

				</div>
				<div class="col-md-6">
					<div id="json" style="display: none;">${json}</div>
					<div id="item_num" style="display: none;">${dto.item_num}</div>
					<div id="user_id" style="display: none;">${dto.user_id}</div>
					
					<div class="small mb-2">
						<span id="category1"></span> 
						<span id="category2"></span> 
						<span id="category3"></span> 
						<span id="category4"></span>
					</div>
					
					<div>
					<i class="bi bi-heart-fill mx-2" style="color: gainsboro; font-size: 20px;"></i>
					<span id="likeUpDown"></span>
					<i class="bi bi-eye-fill mx-2" style="color: gainsboro; font-size: 20px;"></i>
					<i class="bi bi-clock-fill mx-2" style="color: gainsboro; font-size: 20px;"></i>
					</div>
					
					<h1 class="fs-3 mt-5">${dto.item_name }</h1>
					<div class="fs-2 mb-5 fw-bolder">${price }원</div>

					<table class="table table-borderless fs-5">
						<tbody>
							<tr>
								<td style="width: 20%">거래방법</td>
								<td>${dto.item_deal }</td>
							</tr>
							<tr>
								<td>제품상태</td>
								<td>${dto.item_condition }</td>
							</tr>
						</tbody>
					</table>


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
						<c:choose>
						<c:when test="${like eq null }">
							<svg id="likeButton" style="color:black;" xmlns="http://www.w3.org/2000/svg"
								width="30" height="30" fill="currentColor"
								class="bi bi-heart-fill" viewBox="0 0 16 16">
							<path fill-rule="evenodd"d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" />
						  </svg>
						</c:when>
						<c:otherwise>
							<svg id="likeButton" style="color:red;" xmlns="http://www.w3.org/2000/svg"
								width="30" height="30" fill="currentColor"
								class="bi bi-heart-fill" viewBox="0 0 16 16">
							<path fill-rule="evenodd"d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z" />
						  </svg>
						</c:otherwise>
						</c:choose>
						<a class="btn" style="background-color: #6667AB; color: white;"
							href="update?item_num=${dto.item_num }">수정</a> 
						<a class="btn"
							style="background-color: #6667AB; color: white;"
							href="delete?item_num=${dto.item_num }">삭제</a>
					</div>
				</div>
				<div class="mt-5">${dto.item_contents }</div>
			</div>
		</div>
	</section>
	<!-- Related items section-->
	<section class="py-5 bg-light">
		<div class="container px-4 px-lg-5 mt-5">
			<h2 class="fw-bolder mb-4">이런 상품은 어때요?</h2>
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<img class="card-img-top"
							src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="...">
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">Popular Item</h5>
								<!-- Product reviews-->
								<div
									class="d-flex justify-content-center small text-warning mb-2">
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
									<div class="bi-star-fill"></div>
								</div>
								<!-- Product price-->
								$40.00
							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8"
		crossorigin="anonymous"></script>
	<script src="/resources/js/gn/detail.js"></script>
	<script>
		getCategory()
		getlikeCount()
	</script>
</body>
</html>
</script>
</body>
</html>