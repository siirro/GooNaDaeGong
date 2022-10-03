<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구디나라</title>
</head>
<body>
	<section>
		<form action="add" method="post" enctype="multipart/form-data">
			<input type="hidden" name="user_id" value="11">
			
			<div>
				<label>제목</label>
				<input type="text" name="item_name">
			</div>
			<div>
				<select id="category1">
					<option hidden>선택</option>
				</select>
				<select id="category2">
					<option hidden>선택</option>
				</select> 
				<select id="category3">
					<option hidden>선택</option>
				</select>
				<select id="category4">
					<option hidden>선택</option>
				</select>
				<input type="hidden" name="cate_num" id="cate_num" value="">
			</div>
			<div>
				<label>판매가격</label>
				<input type="text" name="item_price">
			</div>
			<div>
				<label>판매방식</label>
				<select id="category1" name="item_deal">
					<option hidden>판매방식</option>
					<option>안전결제</option>
					<option>직거래</option>
				</select>
			</div>
			<div>
				<label>제품상태</label>
				<select id="item_condition" name="item_condition">
					<option hidden>상품컨디션</option>
					<option>새상품(미개봉)</option>
					<option>거의 새상품</option>
					<option>사용감 있는 깨끗한 상품</option>
					<option>사용 흔적이 많은 상품</option>
				</select>
			</div>
			<div>
				<label>상품설명</label>
				<textarea class="form-control" id="item_contents" name="item_contents" rows="5"
					placeholder="제품의 하자(흠집/잔상/파손부위 등)등을 실제 판매제품의 사진과 함께 내용에 명시해야 합니다. 상단 제품상태 체크와 상태가 불일치 시 판매자 과실로 처리됩니다."></textarea>
			</div>

			<button type="button" id="button">이미지추가</button>
			<div id="fileAdd"></div>

			<button type="submit">상품등록</button>
		</form>
	</section>
			
	<script src="/resources/js/gn/category.js"></script>
	<script src="/resources/js/gn/add.js"></script>
	<script>
		getCategory1();
	</script>
</body>
</html>