<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.slim.js"
	integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY="
	crossorigin="anonymous"></script>
<title>상품조회 || Admin</title>
</head>
<script src=""></script>
<body>

	<h2>상세보기</h2>
	<form role="form" action="./detail" method="post">

		<input type="hidden" name="num" value="${dgItemDTO.item_num }">

		<label>1그룹</label> <span class="cate1"></span>
		<label>2그룹</label> <span class="cate2"></span>
		<label>3그룹</label> <span class="cate3"></span>
		<label>4그룹</label> <span class="cate4">${dgItemDetailDTO.cate_num}</span>

		<div class="inputArea">
			<label for="item_name">모델명</label> <span>${dgItemDetailDTO.category.cate_name}</span>
		</div>

		<div class="inputArea">
			<label for="item_name">상품번호</label> <span>${dgItemDetailDTO.item_num}</span>
		</div>

		<div class="inputArea">
			<label for="item_name">상품명</label> <span>${dgItemDetailDTO.item_name}</span>
		</div>

		<div class="inputArea">
			<label for="item_price">상품가격</label> <span> <fmt:formatNumber value="${dgItemDetailDTO.item_price}" pattern="###,###,###" />
			</span>
		</div>

		<div class="inputArea">
			<label for="item_stock">재고</label> <span>${dgItemDetailDTO.item_stock}</span>
		</div>

		<div class="inputArea">
			<label for="item_stock">상품내용</label> <span>${dgItemDetailDTO.item_contents}</span>
		</div>

		<div>
			<div>
				<label for="fileName">이미지</label>
				<c:forEach items="${dgItemFileDTOs}" var="fileDTO">
					<img alt="" src="../resources/upload/item/${fileDTO.fileName}">
				</c:forEach>
			</div>
		</div>

		<div class="inputArea">
			<button type="button" id="update_btn">수정</button>
			<button type="button" id="delete_btn">삭제</button>
		</div>
	</form>

	<!-- <script>
		var formObj = $("form[role='form']");

		$("#update_btn").click(function() {
			formObj.attr("action", "./update?num=${dgItemDTO.item_num }");
			formObj.attr("method", "get")
			formObj.submit();
		});

		$("#delete_btn").click(function() {
			var con = confirm("정말로 삭제하시겠습니까?");

			if (con) {
				formObj.attr("action", "./delete");
				formObj.submit();
			}
		});
	</script> -->
</body>
</html>