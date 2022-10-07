<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
                            <a class="active css-nk8664 ecbxmj0" href="./myOrder">주문 내역<span class="css-e41glx e1x0rfoo0"></span></a>
                        </li>
                        <li class="css-0 ecbxmj1">
                            <a class="css-nk8664 ecbxmj0" href="./mySale">판매 내역<span class="css-e41glx e1x0rfoo0"></span></a>
                        </li>
                        <li class="css-0 ecbxmj1">
                            <a class=" css-nk8664 ecbxmj0" href="./myHeart">찜한 상품<span class="css-e41glx e1x0rfoo0"></span></a>
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
                    <h2 class="css-xr9nhh ed9qr671">판매 내역</h2>
                </div>
            </div>
                    <div class="css-1dmsa3j e1jm6dy15"></div>
                    <div class="css-1c8nox e1ykq6gv1">
                            <c:forEach items="${sale}" var="sale">
                        <div class="css-4wlxei e1437c6414">
                            <div class="css-1hbtwy0 e1437c6413">
                                <span class="css-asma03 e1437c6412">
                                <fmt:formatDate value="${sale.item_date}" pattern="yyyy-MM-dd"/>
                                </span>
                            </div>
                            <div class="css-7apail e1437c6410">
                                <div class="css-fhxb3m e1437c649">
                                    <img src="../resources/upload/gnItem/${sale.gnItemFileDTOs[0].fileName}" alt="" class="css-1oc1pausale e1437c648" value="">
                                    <div class="css-1fttcpj e1437c647">
                                        <dl class="css-1ccl3pq e1437c646">
                                            <dt class="css-dzjp62 e1437c645">카테고리</dt>
                                            <dd class="css-1i58pf4 e1437c644">${sale.category.cate_name}</dd>
                                        </dl>
                                        <dl class="css-1ccl3pq e1437c646">
                                            <dt class="css-dzjp62 e1437c645">상품번호</dt>
                                            <dd class="css-1i58pf4 e1437c644">${sale.item_num}</dd>
                                        </dl>
                                        <dl class="css-1ccl3pq e1437c646">
                                            <dt class="css-dzjp62 e1437c645">상품이름</dt>
                                            <dd class="css-1i58pf4 e1437c644">${sale.item_name}</dd>
                                        </dl>
                                        <dl class="css-1ccl3pq e1437c646">
                                            <dt class="css-dzjp62 e1437c645">상품가격</dt>
                                            <dd class="css-1i58pf4 e1437c644">${sale.item_price}</dd>
                                        </dl>
                                    </div>
                                </div>
                                <!-- <div class="css-s5xdrg e1437c642">
                                     <span class="css-1fdt947 e1437c641">배송완료</span>
                                    <div class="css-1bbz142 e1437c640">
                                        <button class="css-oyz24n e4nu7ef3" type="button" height="36" radius="3">
                                            <span class="css-ymwvow e4nu7ef1">
                                                <a href="../qna/inquiry?merchant_uid=${order.merchant_uid}">
                                                1:1 문의
                                                </a>
                                            </span>
                                        </button>
                                    </div>
                                </div> -->
                            </div>
                        </div>
                            </c:forEach>
                        <div class="css-bx0kqw e1mkosgq0"></div>
                    </div>
                </div>
              </div>
        </section>
        <c:import url="../template/footer.jsp"></c:import>
    </div> <!--wrap end-->
</body>
</html>