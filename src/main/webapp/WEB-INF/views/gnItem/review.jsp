<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<body>
	<!-- Comment -->
	<div class="container px-4 px-lg-5 my-5">
	<button type="button"  class="btn btn-primary" id="reviewBtn">후기등록</button>
	<div class="my-3 p-3 bg-body rounded shadow-sm">
		<h5 id="reviewTop" class="border-bottom pb-2 mb-0"> 상품 리뷰 </h5>
		<c:forEach items="${list}" var="dto">
			<div class="d-flex text-muted pt-3 mx-2">
				<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="60" height="60" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false">
					<image href="/resources/upload/member/${dto.fileName}" width="100%" height="100%"/>
				</svg>
			
				<div class="mx-3 pb-2 small border-bottom w-100">
					<div class="d-flex justify-content-between">
					<div>
					<i class="bi bi-star-fill" style="color: #6667AB; font-size: 20px;"></i>
					<i class="bi bi-star-fill" style="color: #6667AB; font-size: 20px;"></i>
					<i class="bi bi-star-fill" style="color: #6667AB; font-size: 20px;"></i>
					<i class="bi bi-star-fill" style="color: #6667AB; font-size: 20px;"></i>
					<i class="bi bi-star-fill" style="color: #6667AB; font-size: 20px;"></i>
						<strong class="mx-2 text-dark" style="font-size: 18px;">${dto.rv_title}</strong>
					</div>
						<div>
							<div><i class="bi bi-hand-thumbs-up"></i> 도움돼요</div>
							<div><i class="bi bi-hand-thumbs-down"></i> 도움안돼요</div>
						</div>
					</div>
					<span class="d-block" style="font-size: 15px;">${dto.user_id}	|	${dto.rv_date}</span>
				</div>
			</div>
		</c:forEach>
	</div>
	</div>
</body>
</html>