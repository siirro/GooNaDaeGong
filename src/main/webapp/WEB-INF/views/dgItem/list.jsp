<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록 || Admin</title>
</head>
<body>
	<div>
		<h2>상품목록</h2>
		<table>
			<tr>
				<th>게시물번호</th>
				<th>카테고리번호</th>
				<th>상품명</th>
				<th>가격</th>
				<th>판매자ID</th>
				<th>등록일</th>
				<th>조회수</th>
				<th>재고량</th>
				<th>판매여부</th>
				<th>사이트코드</th>
			</tr>

			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.item_num}</td>
					<td>${list.cate_num}</td>
					<td>
						<a href="/dgItem/detail?num=${list.item_num}">${list.item_name}</a>
					</td>
					<td><fmt:formatNumber value="${list.item_price}" 	pattern="###,###,###" /></td>
					<td>${list.user_id}</td>
					<td><fmt:formatDate value="${list.item_date}" pattern="yy/MM/dd" /></td>
					<td>${list.item_hit}</td>
					<td>${list.item_stock}</td>
					<td>${list.item_yn}</td>
					<td>${list.code}</td>
				</tr>
			</c:forEach>
		</table>
	</div>

</body>
</html>