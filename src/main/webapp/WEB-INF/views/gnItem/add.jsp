<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="data:;base64,iVBORw0KGgo=">
<title>구디나라</title>
</head>
<body>
	<section class="container-fluid col-lg-3 mt-5">
		<h1 class="mb-5 fw-normal text-center">상품등록</h1>
		
		<form action="add" method="post" enctype="multipart/form-data">
			<div name=cate_num>
				<label>1차 분류</label>
				<select id="category1">
					<option hidden>선택</option>
				</select>
		
				<label>2차 분류</label>
				<select id="category2">
					<option hidden>선택</option>
				</select>
		
				<label>3차 분류</label>
				<select id="category3">
					<option hidden>선택</option>
				</select>
		
				<label>4차 분류</label>
				<select id="category4">
					<option hidden>선택</option>
				</select>

				<input type="hidden" name="cate_num" id="cate_num" value="">
			</div>
			
			<div>
				<label>글쓴이</label>
				<input type="text" name="user_id">
			</div>
			
			<label>상품 이미지</label>
			<div id="addFiles">	
				<button type="button" id="fileAdd" class="btn btn-outline-dark btn-sm">파일추가</button>
			</div>
			
			<div>
				<label>상품제목</label>
				<input type="text" name="item_name">
			</div>
			<div>
				<label>상품컨디션</label>
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
				<textarea name="item_contents" rows="3"></textarea>
			</div>
			<div>
				<label>가격</label>
				<input type="text" name="item_price">
			</div>
			<div>
				<label>거래방법</label>
				<select id="category1" name="item_deal">
					<option hidden>거래방법</option>
					<option>직거래</option>
					<option>안전결제</option>
				</select>
			</div>						
			<div>
				<button type="submit">상품등록</button>
			</div>
		</form>
	</section>
	

	<script src="/resources/js/gn/add.js"></script>
	<script>
		getCategory1();
	</script>
</body>
</html>