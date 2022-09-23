<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>


<!-- 글목록 -->
	<div id="noticeList">
		<section class="col-lg-6">
			<table class="table table-bordered border-primary">
			  <thead class="table-primary">
			    <tr>
			    	<th>글번호</th>
			    	<th>글제목</th>
			    	<th>작성자</th>
			    	<th>등록일</th>
			    </tr>
			  </thead>
			  <tbody>
				  <c:forEach items="${list}" var="nl">
				     <tr>
				    	<td>${nl.nt_num}</td>
				    	<td><a href="./detail.iu?num=${nl.nt_num}">${nl.nt_title}</a> </td>
				    	<td>${nl.user_id}</td>
				    	<td>${nl.nt_date}</td>
				    </tr>
				    </c:forEach>
			  </tbody>
			</table>
		</section>
	</div>








<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>