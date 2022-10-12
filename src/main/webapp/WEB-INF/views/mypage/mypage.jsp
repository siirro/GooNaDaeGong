<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/member/mypage.css">
     <style>
        ol, ul {
            padding-left: 0rem !important;
        }
    </style>
</head>
<body>
	<div class="wrap">
	<c:import url="../template/header.jsp"></c:import>
	    <section>
	        <div class="css-luwwab eug5r8l4">
	            <div class="css-833hqy ecbxmj4">
	                <div class="css-1v4whg ecbxmj3">마이페이지</div>
	                <ul class="css-1x9bshx ecbxmj2">
	                    <li class="css-0 ecbxmj1">
	                        <a class="css-nk8664 ecbxmj0" href="./myOrder">주문 내역<span class="css-e41glx e1x0rfoo0"></span></a>
	                    </li>
	                    <li class="css-0 ecbxmj1">
	                        <a class=" css-nk8664 ecbxmj0" href="./myLike">찜한 상품<span class="css-e41glx e1x0rfoo0"></span></a>
	                    </li>
	                    <li class="css-0 ecbxmj1">
	                        <a class=" css-nk8664 ecbxmj0" href="./myReview">상품 후기<span class="css-e41glx e1x0rfoo0"></span></a>
	                    </li>
	
	                    <li class="css-0 ecbxmj1">
	                        <a class=" css-nk8664 ecbxmj0" href="./myQNA">상품 문의<span class="css-e41glx e1x0rfoo0"></span></a>
	                    </li>
	                    <li class="css-0 ecbxmj1">
	                        <a class=" css-nk8664 ecbxmj0" href="./myUpdate">개인 정보 수정<span class="css-e41glx e1x0rfoo0"></span></a>
	                    </li>
	                </ul>
	                <a href="../qna/inquiry" class="css-17gln34 e19l01ug3">
	                    <div class="css-1niy3no e19l01ug2">
	                        <span class="css-1sdidca e19l01ug1">도움이 필요하신가요 ?</span>
	                        <span class="css-rnnx2x e19l01ug0">1:1 문의하기</span>
	                    </div>
	                    <span class="css-1wkaywz e1x0rfoo0"></span>
	                </a>
	            </div>
	            <div class="css-171zbec eug5r8l3">
	                <div class="css-j0lifa ed9qr673">
	                    <div class="css-fhxb3m ed9qr672">
	                                <!-- <h2 class="css-xr9nhh ed9qr671">주문 내역</h2> -->
	                    </div>
	                    <div class="css-fhxb3m ed9qr672">
	                        <div class="css-wkgeho e1ykq6gv2">

	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div> 
	    </section>
	    <c:import url="../template/footer.jsp"></c:import>
	</div>
    
</body>
</html>