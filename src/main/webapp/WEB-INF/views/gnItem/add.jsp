<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>구디나라</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
	<section>
		<form action="add" method="post" enctype="multipart/form-data">
			<input type="hidden" name="user_id" value="11">
			
			<div>
				<label>제목</label>
				<input type="text" name="item_name">
			</div>
			<div id="category">
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
				<input type="hidden" name="cate1" id="cate1" value="">
				<input type="hidden" name="cate2" id="cate2" value="">
				<input type="hidden" name="cate3" id="cate3" value="">
				<input type="hidden" name="cate4" id="cate4" value="">
			</div>
			<div>
				<label>판매가격</label>
				<input type="text" name="item_price">
			</div>
			<div>
				<label>판매방식</label>
				<select name="item_deal">
					<option hidden>판매방식</option>
					<option value="안전결제">안전결제</option>
					<option value="직거래">직거래</option>
				</select>
			</div>
			<div>
				<label>제품상태</label>
				<select name="item_condition">
					<option hidden>상품컨디션</option>
					<option value="새상품(미개봉)">새상품(미개봉)</option>
					<option value="거의 새상품">거의 새상품</option>
					<option value="사용감 있는 깨끗한 상품">사용감 있는 깨끗한 상품</option>
					<option value="사용 흔적이 많은 상품">사용 흔적이 많은 상품</option>
				</select>
			</div>
			<div>
				<label>상품설명</label>
				<textarea class="form-control" id="item_contents" name="item_contents" rows="15"
					placeholder="제품의 하자(흠집/잔상/파손부위 등)등을 실제 판매제품의 사진과 함께 내용에 명시해야 합니다. 상단 제품상태 체크와 상태가 불일치 시 판매자 과실로 처리됩니다."></textarea>
			</div>

			<button type="button" id="button">이미지추가</button>
			<div id="fileAdd"></div>

			<button type="submit">상품등록</button>
		</form>
	</section>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
	<script src="/resources/js/gn/category.js"></script>
	<script src="/resources/js/gn/add.js"></script>
	<script>
		getCategory1();
	</script>
</body>
</html>