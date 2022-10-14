<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>구디나라</title>

</head>
<body>

	<section>
		<form action="add" method="post" enctype="multipart/form-data">
			
			<input type="hidden" name="user_id" value="member.user_id">

			<section class="container-fluid col-lg-7">
				<h1>상품등록</h1>


			<div id="category">
				<label>카테고리</label> 

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
				<input type="hidden" name="cate1" id="cate1" value=""> <input
					type="hidden" name="cate2" id="cate2" value=""> <input
					type="hidden" name="cate3" id="cate3" value=""> <input
					type="hidden" name="cate4" id="cate4" value="">
			</div>
			<div>
				<label>제목</label> <input type="text" name="item_title">
			</div>
			<div>
				<label>판매가격</label> <input type="text" name="item_price">
			</div>
			<div>
				<label>재고</label> <input type="text" name="item_stock">
			</div>
			

			<div>
				<label>상품설명</label>
				<textarea class="form-control" id="item_contents"
					name="item_contents" rows="15"></textarea>
			</div>

			<button type="button" id="button">이미지추가</button>
			<div id="fileAdd"></div>

			<button type="submit">상품등록</button>
		</form>
		</section>
	</section>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
	<script src="/resources/js/item/category.js"></script>
	<script src="/resources/js/item/add.js"></script>
	<script>
		getCategory1();
	</script>
</body>
</html>