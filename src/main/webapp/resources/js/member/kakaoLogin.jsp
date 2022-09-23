<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <section>
        <div class="col">
            <a class="btn btn-lg btn-secondary" href="@{/kakao/oauth}">카카오로 로그인하기</a>
        </div>
        <div class="col">
            <a class="btn btn-lg btn-secondary" href="@{/kakao/logout}">로그아웃</a>
        </div>
        <div class="col">
            <img src="${thumbnailImage}">
            <p class="text-right" th:if="${user_id != null}" th:text="${user_id} + '님, 안녕하세요!'"></p>
        </div>
    </section>
    
</body>
</html>