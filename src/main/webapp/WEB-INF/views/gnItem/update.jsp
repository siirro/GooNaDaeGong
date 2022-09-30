<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section>
		<form action="update" method="post" enctype="multipart/form-data">
		<input type="hidden" name="item_num" value="${dto.item_num }">
		
			<div>
				<label>제목</label>
				<input type="text" name="item_name" value="${dto.item_name }">
			</div>
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
				<label>판매가격</label>
				<input type="text" name="item_price" value="${dto.item_price }">
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
					placeholder="제품의 하자(흠집/잔상/파손부위 등)등을 실제 판매제품의 사진과 함께 내용에 명시해야 합니다. 상단 제품상태 체크와 상태가 불일치 시 판매자 과실로 처리됩니다.">${dto.item_contents }</textarea>
			</div>
			<label>상품 이미지</label>
			<input type="file" id="files" name="files" accept="image/*" style="display:none;" multiple/>
			<button type="button" for="files">파일선택</button>
    		<div id="files_container"></div>
			<div>
				<button type="submit">상품등록</button>
			</div>
		</form>
	</section>
			
	<script src="/resources/js/gn/category.js"></script>
	<script src="/resources/js/gn/add.js"></script>
	<script>
		getCategory1();
	</script>
</body>
</html>