<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY="	 crossorigin="anonymous"></script>
<title>상품등록 || Admin</title>
</head>
<body>
	<h2>상품등록</h2>
	
	<form role="form" action="./add" method="post">

		<span>1그룹</span>
		<select class="cate1">
			<option value="none">전체</option>
		</select>

		<span>2그룹</span>
		<select class="cate2">
			<option value="none">전체</option>
		</select>	
	
		<span>3그룹</span>
		<select class="cate3">
			<option value="none">전체</option>
		</select>
	
		<span>4그룹</span>
		<select class="cate4" name="cate_num">
			<option value="none">전체</option>
		</select>
	
	<div class="inputArea">
		<label for="item_name">상품명</label>
		<input type="text" id="item_name" name="item_name">
	</div>
	
	<div class="inputArea">
		<label for="item_price">상품가격</label>
		<input type="text" id="item_price" name="item_price">
	</div>
	
	<div class="inputArea">
		<label for="item_stock">재고</label>
		<input type="text" id="item_stock" name="item_stock">
	</div>	

	<div class="inputArea">
		<label for="item_contents">상품내용</label>
		<textarea rows="5" cols="50" name="item_contents"></textarea>
	</div>
	
	<div class="inputArea">
		<button type="submit" id="add_btn">등록</button>
	</div>
	</form>
	
	<!-- 카테고리 불러오기 -->
	<script>
		/* 	$(document).ready(function() {
		 console.log('${getCategory}');
		 }); */

		let getCategory = JSON.parse('${getCategory}');

		let cate1Array = new Array();
		let cate2Array = new Array();
		let cate3Array = new Array();
		let cate4Array = new Array();

		let cate1Obj = new Object();
		let cate2Obj = new Object();
		let cate3Obj = new Object();
		let cate4Obj = new Object();

		let cateSelect1 = $(".cate1");
		let cateSelect2 = $(".cate2");
		let cateSelect3 = $(".cate3");
		let cateSelect4 = $(".cate4");

		/* 카테고리 배열 초기화 메서드 */
		function makeCateArray(obj, array, getCategory, cate_group) {
			for (let i = 0; i < getCategory.length; i++) {
				if (getCategory[i].cate_group === cate_group) {
					obj = new Object();

					obj.cate_name = getCategory[i].cate_name;
					obj.cate_num = getCategory[i].cate_num;
					obj.cate_ref = getCategory[i].cate_ref;

					array.push(obj);

				}
			}
		}

		/* 배열 초기화 */
		makeCateArray(cate1Obj, cate1Array, getCategory, 1);
		makeCateArray(cate2Obj, cate2Array, getCategory, 2);
		makeCateArray(cate3Obj, cate3Array, getCategory, 3);
		makeCateArray(cate4Obj, cate4Array, getCategory, 4);

		/* 1그룹 <option> 태그 */
		for (let i = 0; i < cate1Array.length; i++) {
			cateSelect1.append("<option value='"+cate1Array[i].cate_num+"'>" + cate1Array[i].cate_name + "</option>");
		}

		/* 2그룹 <option> 태그 */
		$(cateSelect1).on(	"change",function() {
			let selectVal1 = $(this).find("option:selected").val();
			
			cateSelect2.children().remove();
			cateSelect3.children().remove()

			cateSelect2.append("<option value='none'>전체</option>");
			cateSelect3.append("<option value='none'>전체</option>");
			
			for (let i = 0; i < cate2Array.length; i++) {
				if (selectVal1 === cate2Array[i].cate_ref) {
					cateSelect2.append("<option value='"+cate2Array[i].cate_num+"'>"+ cate2Array[i].cate_name + "</option>");
					}
				} // for end
			});

		/* 3그룹 <option>태그 */
		$(cateSelect2).on("change", function() {
			let selectVal2 = $(this).find("option:selected").val();
			
			cateSelect3.children().remove();
			cateSelect4.children().remove();
			
			cateSelect3.append("<option value='none'>전체</option>");
			cateSelect4.append("<option value='none'>전체</option>");
			
			for (let i = 0; i < cate3Array.length; i++) {
				if (selectVal2 === cate3Array[i].cate_ref) {
					cateSelect3.append("<option value='"+cate3Array[i].cate_num+"'>"+ cate3Array[i].cate_name + "</option>");
					}
				} // for end
			});

		/* 4그룹 <option>태그 */
		$(cateSelect3).on("change", function() {
			let selectVal3 = $(this).find("option:selected").val();
			
			cateSelect4.children().remove();
			cateSelect4.append("<option value='" + selectVal3 +  "'>전체</option>");

			for (let i = 0; i < cate4Array.length; i++) {
				if (selectVal3 === cate4Array[i].cate_ref) {
					cateSelect4.append("<option value='"+cate4Array[i].cate_num+"'>" + cate4Array[i].cate_name + "</option>");
					}
				} // for end
			});

		$(document).ready(function() {
			console.log(cate1Array);
			console.log(cate2Array);
			console.log(cate3Array);
			console.log(cate4Array);
		});

		$(document).ready(function() {
			console.log(cate1Array);
		});
	</script>
</body>
</html>