<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

	<input type="hidden" id="item_num" name="item_num" value="${dgItemDTO.item_num}">

		<span>1그룹</span> 
		<select class="cate1">
			<option selected value="none">선택</option>
		</select>
		 
		<span>2그룹</span> 
		<select class="cate2">
			<option selected value="none">선택</option>
		</select> 
		
		<span>3그룹</span> 
		<select class="cate3">
			<option selected value="none">선택</option>
		</select> 
		
		<span>4그룹</span> 
		<select class="cate4" name="cate_num">
			<option selected value="none">선택</option>
		</select>


		<div class="inputArea">
			<label for="item_name">상품명</label>
			<input type="text" id="item_name" name="item_name" value="${dgItemDTO.item_name}">
		</div>

		<div class="inputArea">
			<label for="item_price">상품가격</label>
			<input type="text" id="item_price" name="item_price" value="${dgItemDTO.item_price}">
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
			location.href = "./detail?item_num=" + ${dgItemDTO.item_num};
		});
		
		/* 수정 시 카테고리 자동 대입 */
		$(document).ready(function () {
			
			 /* 카테고리 */
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
			 
			 /* 1그룹 */
			 for (let i = 0; i < cate1Array.length; i++) {
			     cateSelect1.append('<option class="cate1_1" value="' + cate1Array[i].cate_num + '">' + cate1Array[i].cate_name + "</option>");
			 }
			 
			console.log('${dgItemDTO.cate_num}');
			
			let cate_num='${dgItemDTO.cate_num}';
			let cate1 = cate_num-cate_num%1000
			console.log(cate1)
			
			const cate1_1 = document.querySelectorAll(".cate1_1");
			for(c of cate1_1){
					console.log(c.value+"selecdssdfs")
				if(c.value==cate1){
					c.selected=true;
					break;
				}
			}
			
			 /* 2그룹 */
			 for (let i = 0; i < cate2Array.length; i++) {
			     if (cate1 *1== cate2Array[i].cate_ref*1) {
						console.log(cate2Array[i].cate_ref+"   num")
						console.log(cate1 )
			         targetCate2 = cate2Array[i];
			     }
			 } // for

			 for (let i = 0; i < cate2Array.length; i++) {
			     if (targetCate2.cate_ref === cate2Array[i].cate_ref) {
			         cateSelect2.append('<option class="cate2_1" value="' + cate2Array[i].cate_num + '">' + cate2Array[i].cate_name + "</option>");
			     }
			 }
			 
				let temp = cate_num - cate1
				let temp2 = cate_num - temp % 100
				console.log("qwer : " + temp)
				console.log("asdfg : " + temp2)
				
				const cate2_1 = document.querySelectorAll(".cate2_1");
				for(c of cate2_1){
						console.log(c.value+"qqq")
					if(c.value==temp2){
						c.selected=true;
						break;
					}
				}
				
			/* 3그룹 */
			for (let i = 0; i < cate3Array.length; i++) {
			     if (temp2 *1== cate3Array[i].cate_ref*1) {
						console.log(cate3Array[i].cate_ref+"   num2")
			         targetCate3 = cate3Array[i];
			     }
			 }// for
			 for (let i = 0; i < cate3Array.length; i++) {
			     if (targetCate3.cate_ref === cate3Array[i].cate_ref) {
			         cateSelect3.append('<option class="cate3_1" value="' + cate3Array[i].cate_num + '">' + cate3Array[i].cate_name + "</option>");
			     }
			 }
			 
			 	temp = cate_num - cate1
				temp2 = temp % 100
				temp3 = cate_num - temp2 % 10
				console.log("qwer2 : " + temp)
				console.log("asdfg2 : " + temp2)
				console.log("jhg2 : " + temp3)
				
				const cate3_1 = document.querySelectorAll(".cate3_1");
				for(c of cate3_1){
						console.log(c.value+"qqqqqq")
					if(c.value==temp3){
						c.selected=true;
						break;
					}
				}
				
				/* 4그룹 */
				for (let i = 0; i < cate4Array.length; i++) {
			     if (temp3 *1== cate4Array[i].cate_ref*1) {
						console.log(cate4Array[i].cate_ref+"   num3")
			         targetCate4 = cate4Array[i];
			     }
			 }// for
			 for (let i = 0; i < cate4Array.length; i++) {
			     if (targetCate4.cate_ref === cate4Array[i].cate_ref) {
			         cateSelect4.append('<option class="cate4_1" value="' + cate4Array[i].cate_num + '">' + cate4Array[i].cate_name + "</option>");
			     }
			 }
			 
			 	temp = cate_num - cate1
				temp2 = temp % 100
				temp3 = temp2 % 10
				temp4 = temp3 % 1
				temp5 = cate_num - temp4
				console.log("qwer2 : " + temp)
				console.log("asdfg2 : " + temp2)
				console.log("jhgaghresdgfd : " + temp5)
				
				const cate4_1 = document.querySelectorAll(".cate4_1");
				for(c of cate4_1){
						console.log(c.value+"qqqqqq")
					if(c.value==temp5){
						c.selected=true;
						break;
					}
				}

		});
	</script>
</body>
</html>