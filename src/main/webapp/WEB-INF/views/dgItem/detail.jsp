<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품조회 || Admin</title>
</head>
<body>

	<h2>상세보기</h2>
	<form role="form" action="./view" method="post">

		<input type="hidden" name="num" value="${dgItemDTO.item_num }">

		<label>1그룹</label>
		<span class="cate1"></span>
		
		<label>2그룹</label>
		<spa class="cate2"></span> 
		
		<label>3그룹</label>
		 <span class="cate3"></span>
		 
		<label>4그룹</label>
		<span class="cate4">${dgItemDTO.cate_num}</span>

		<div class="inputArea">
			<label for="item_name">게시판번호</label> <span>${dgItemDTO.item_num}</span>
		</div>

		<div class="inputArea">
			<label for="item_name">상품명</label> <span>${dgItemDTO.item_name}</span>
		</div>

		<div class="inputArea">
			<label for="item_price">상품가격</label> <span> <fmt:formatNumber
					value="${dgItemDTO.item_price}" pattern="###,###,###" />
			</span>
		</div>

		<div class="inputArea">
			<label for="item_stock">재고</label> <span>${dgItemDTO.item_stock}</span>
		</div>

		<div class="inputArea">
			<label for="item_stock">상품내용</label> <span>${dgItemDTO.item_contents}</span>
		</div>

		<div class="inputArea">
			<button type="button" id="update_btn"><a href="./update?num=${dgItemDTO.item_num}">수정</a></button>
			<button type="button" id="delete_btn">삭제</button>

		</div>
	</form>
</body>
</html>