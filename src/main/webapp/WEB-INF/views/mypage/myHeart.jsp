<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <style>
        ol, ul {
            padding-left: 0rem !important;
        }
    </style>
    <link rel="stylesheet" href="/resources/css/member/mypage.css">
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
	                        <a class="css-nk8664 ecbxmj0" href="./mySale">판매 내역<span class="css-e41glx e1x0rfoo0"></span></a>
	                    </li>
	                    <li class="css-0 ecbxmj1">
	                        <a class="active css-nk8664 ecbxmj0" href="./myHeart">찜한 상품<span class="css-e41glx e1x0rfoo0"></span></a>
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
	                        <h2 class="css-xr9nhh ed9qr671">찜 목록</h2>
	                        <!-- <span class="css-5yd3pu ed9qr670">최대 지난 3년간의 주문 내역까지 확인할 수 있어요</span> -->
	            </div>
	        </div>
	                <!-- <div class="css-1dmsa3j e1jm6dy15"></div>
	                <div class="css-1c8nox e1ykq6gv1">
	                    <div class="css-4wlxei e1437c6414">
	                        <div class="css-1hbtwy0 e1437c6413">
	                            <span class="css-asma03 e1437c6412">2022.08.21 (19시 56분)</span>
	                            <a class="css-l9y4tx e1437c6411">주문내역 상세보기</a>
	                        </div>
	                        <div class="css-7apail e1437c6410">
	                            <div class="css-fhxb3m e1437c649">
	                                <img src="https://img-cf.kurly.com/shop/data/goods/1640975712902l0.jpg" alt="[마이비밀] 라이킷 식단관리 도시락 8종 상품 이미지" class="css-1oc1pau e1437c648">
	                                <div class="css-1fttcpj e1437c647">
	                                    <dl class="css-1ccl3pq e1437c646">
	                                        <dt class="css-dzjp62 e1437c645">상품명</dt>
	                                        <dd class="css-1o8e829 e1437c643"></dd>
	                                    </dl>
	                                    <dl class="css-1ccl3pq e1437c646">
	                                        <dt class="css-dzjp62 e1437c645">주문번호</dt>
	                                        <dd class="css-1i58pf4 e1437c644"></dd>
	                                    </dl>
	                                    <dl class="css-1ccl3pq e1437c646">
	                                        <dt class="css-dzjp62 e1437c645">결제방법</dt>
	                                        <dd class="css-1i58pf4 e1437c644"></dd>
	                                    </dl>
	                                    <dl class="css-1ccl3pq e1437c646">
	                                        <dt class="css-dzjp62 e1437c645">결제금액</dt>
	                                        <dd class="css-1i58pf4 e1437c644"></dd>
	                                    </dl>
	                                </div>
	                            </div>
	                            <div class="css-s5xdrg e1437c642">
	                                <span class="css-1fdt947 e1437c641">배송완료</span>
	                                <div class="css-1bbz142 e1437c640">
	                                    <button class="css-oyz24n e4nu7ef3" type="button" height="36" radius="3">
	                                        <span class="css-ymwvow e4nu7ef1">1:1 문의</span>
	                                    </button>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="css-bx0kqw e1mkosgq0"></div>
	                </div>
	            </div> -->
	            </div>
	    </section>
	    <c:import url="../template/footer.jsp"></c:import>
    </div><!-- wrap end -->
</body>
</html>