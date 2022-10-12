<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/css/dg/aTagPage.css">
<title>web sample</title>
</head>
<body>
	<!-- Wrap Start -->
	<div class="wrap">
		<c:import url="../template/header.jsp"></c:import>

		<!-- Section Start -->
		<section>
		
			<div class="css-1t8kox4 ew0bivp1">
		<div class="css-1qoqco8 ew0bivp0">
			<div class="css-1uonmsi ehtnk5i1" id="container_aTag">
				<h3 class="css-a43uky ehtnk5i0">카테고리 이름</h3>
				<div class="css-1f8etfr eudxpx34">
					<div class="css-1homcs3 eudxpx33">총 19개</div>
<!-- 					<ul class="css-1vmfy7j eudxpx32">
						<li class="css-gvuf2l eudxpx31">
							<a class="css-50jsy4 eudxpx30">추천순</a> 
							<a class="css-3ovxeo e1kpyq4d2">
								<img 	src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xMiA1YzMuODY0IDAgNyAzLjEzNiA3IDdzLTMuMTM2IDctNyA3LTctMy4xMzYtNy03IDMuMTM2LTcgNy03em0wIDEuM0E1LjcwOCA1LjcwOCAwIDAgMCA2LjMgMTJjMCAzLjE0MiAyLjU1OCA1LjcgNS43IDUuNyAzLjE0MiAwIDUuNy0yLjU1OCA1LjctNS43IDAtMy4xNDItMi41NTgtNS43LTUuNy01Ljd6bS0uMTIyIDcuOTgxYy41NTIgMCAuODk4LjM0Ljg5OC44NjUgMCAuNTE5LS4zNDYuODYtLjg5OC44Ni0uNTQgMC0uODk3LS4zNDEtLjg5Ny0uODYgMC0uNTI0LjM1Ny0uODY1Ljg5Ny0uODY1ek0xMi4wMyA4YzEuNDggMCAyLjQ3Ljg1NCAyLjQ3IDIuMDQ5IDAgLjgyNy0uNDEgMS40MDUtMS4xNDYgMS44NDMtLjcwOC40MTYtLjkwOC42OTItLjkwOCAxLjIyN3YuMzA4aC0xLjI1NGwtLjAwNi0uMzY4Yy0uMDQ4LS44MS4yNjUtMS4yOTcgMS4wMTEtMS43MzVsLjE1OS0uMDk5Yy41NDgtLjM1Ni43MzktLjYzNy43MzktMS4xMjggMC0uNTYyLS40NTQtLjk2Ny0xLjEzNi0uOTY3LS42OTcgMC0xLjE0NS40MjEtMS4xODkgMS4wOEg5LjVDOS41NDMgOC45MyAxMC40MjQgOCAxMi4wMyA4eiIgZmlsbD0iI0NDQyIgZmlsbC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPgo="  alt="" class="css-0 e1kpyq4d1">
								<div class="css-2hay8 e1kpyq4d0">
									소비자 인기도(판매량, 판매금액, 조회수 등), 상품 출시일, 수요 적합성, 상품 운영상 필요 등을 종합적으로 고려한 순서입니다.
								</div>
							</a>
						</li>
						<li class="css-gvuf2l eudxpx31">
							<a class="css-50jsy4 eudxpx30">신상품순</a></li>
						<li class="css-gvuf2l eudxpx31">
							<a class="css-50jsy4 eudxpx30">판매량순</a></li>
						<li class="css-gvuf2l eudxpx31">
							<a class="css-fm0qg eudxpx30">혜택순</a></li>
						<li class="css-gvuf2l eudxpx31">
							<a class="css-50jsy4 eudxpx30">낮은 가격순</a></li>
						<li class="css-gvuf2l eudxpx31">
							<a class="css-50jsy4 eudxpx30">높은 가격순</a></li>
					</ul> -->
				</div>

				<div class="css-10xk59j e15gkkfg4">
					<!-- <input type="hidden" name="cate_num"> -->

					<!-- 반복문 시작부분 -->
					<c:forEach items="${list}" var="list">
						<div class="css-i3aepa e1c07x4811">
							<div class="css-1u8qly9 e1c07x489">
								<div class="e1c07x4810 css-1qpsnts e3um3060">
									<a href="/dgItem/detail?item_num=${list.item_num}"> 
										<img src="../resources/upload/item/${list.dgItemFileDTOs[0].fileName}" alt="상품 이미지" loading="lazy">
										<div>
											<button type="button" class="e1c07x488 css-1lapv13 e17x72af0">
												<img 	src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDUiIGhlaWdodD0iNDUiIHZpZXdCb3g9IjAgMCA0NSA0NSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjMkEwMDM4IiBvcGFjaXR5PSIuNSIgY3g9IjIyLjUiIGN5PSIyMi41IiByPSIyMi41Ii8+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMTEuMDMgMTQuMzgpIiBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJzcXVhcmUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0ibTIwLjQ2IDIuOTEtMi4xNyA5LjIzSDUuODdMMy43MSAyLjkxeiIvPgogICAgICAgICAgICA8Y2lyY2xlIHN0cm9rZS13aWR0aD0iMS4yIiBjeD0iMTYuMzUiIGN5PSIxNi44NiIgcj0iMS43Ii8+CiAgICAgICAgICAgIDxjaXJjbGUgc3Ryb2tlLXdpZHRoPSIxLjIiIGN4PSI3LjgyIiBjeT0iMTYuODYiIHI9IjEuNyIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2Utd2lkdGg9IjEuNCIgZD0iTTAgMGgzLjAybDEuNDEgNS45OCIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
													alt="장바구니 아이콘">
											</button>
										</div>
								</div>
							</div>

							<div class="css-c1cgl e1c07x486">
								<div class="css-1qsrhd e1c07x485">${list.item_name}</div>
								<div class="e1c07x484 css-1drr403 ei5rudb2">
									<div>
										<!-- <span class="discount-rate css-19lkxd2 ei5rudb0">10%</span> -->
										<span class="sales-price css-1qe668a ei5rudb1">
											<fmt:formatNumber value="${list.item_price}" pattern="###,###,###" />원
										</span>
									</div>
									<!-- <span class="dimmed-price css-1qe668a ei5rudb1">1,200,000 원</span> -->
								</div>
							</div>
							</a>
						</div>
					</c:forEach>
										<!--반복문 end-->
				</div>
			</div>

		</div>
	</div>
		</section>
		<!--  Section End -->

		<c:import url="../template/footer.jsp"></c:import>

	</div>
	<!-- Wrap End -->
</body>
</html>