<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js"
	integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY="
	crossorigin="anonymous"></script>
<title>상품수정 || Admin</title>
</head>
<body>
	<h2>상품수정</h2>

	<form role="form" action="./update" method="post">

		<span>1그룹</span> 
		<select class="cate1">
			<option value="none">전체</option>
		</select> 
		
		<span>2그룹</span>
		<select class="cate2">
			<option value="none">전체</option>
		</select> 
		
		<span>3그룹</span> 
		<select class="cate3" name="cate_num">
			<option value="none">전체</option>
		</select> 
		
		<span>4그룹</span> 
		<select class="cate4" name="cate_num">
			<option value="none">전체</option>
		</select>

		<div class="inputArea">
			<label for="item_name">상품명</label>
			<input type="text" id="item_name" name="item_name" value="${dgItemDTO.item_name}">
		</div>

		<div class="inputArea">
			<label for="item_price">상품가격</label> 
			<input type="text" 	id="item_price" name="item_price" value="${dgItemDTO.item_price}">
		</div>

		<div class="inputArea">
			<label for="item_stock">재고</label>
			<input type="text" id="item_stock" name="item_stock" value="${dgItemDTO.item_stock}">
		</div>

		<div class="inputArea">
			<label for="item_contents">상품내용</label>
			<textarea rows="5" cols="50" id="item_contents" name="item_contents">${dgItemDTO.item_contents}</textarea>
		</div>

		<div class="inputArea">
			<button type="submit" id="update_btn">수정완료</button>
			<button type="button" id="back_btn">취소</button>
			
		</div>
	</form>
	
	<script>
		$("#back_btn").click(function(){
			location.href = "./detail?num=" + ${dgItemDTO.item_num};
		});
		
		var select_cate_num = '${dgItemDTO.cate_num}';
		var select_cate_ref = '${dgItemDTO.cate_ref}';
		var select_cate_name = '${dgItemDTO.cate_name}';

		if(select_cate_ref != null && select_cate_ref != '') {
			$(".cate1").val(select_cate_ref);
			$(".cate2").val(select_cate_ref);
			$(".cate3").val(select_cate_ref);

			$(".cate4").val(select_num);
			$(".cate4").children().remove();
			$(".cate4").append("<option value='" + select_cate_num + "'>" + select_cate_name + "</option>")
		} else {
			$(".cate1").val(select_cate_num);
			$(".cate2").val(select_cate_num);
			$(".cate3").val(select_cate_num);
			/* $(".cate4").val(select_cate_num); */
			$(".cate4").append("<option value="' + select_cate_num + '" selected='selected'>전체</option>");
		}
	</script>
</body>
</html>