<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="/resources/css/notice/list.css">


</head>
<body>
    <!-- 헤더 임포트 -->
    <c:import url="../template/header.jsp"></c:import>


    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
          왜안대
        </button>
        <ul class="dropdown-menu">
          <li><a class="dropdown-item" href="#">Action</a></li>
          <li><a class="dropdown-item" href="#">Another action</a></li>
          <li><a class="dropdown-item" href="#">Something else here</a></li>
        </ul>
    </div>
    

    <!-- 푸터 -->
    <c:import url="../template/footer.jsp"></c:import>
</body>


<script src="/resources/js/notice/list.js"></script>

</html>