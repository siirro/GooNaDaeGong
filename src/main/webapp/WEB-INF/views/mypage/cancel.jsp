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
    <link rel="stylesheet" href="/resources/css/notice/list.css">
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

            <!-- 1:1문의 본문 -->
            <div class="css-171zbec eug5r8l3" id="qnaContents">

                <!-- 찐본문의 제목 -->
                <div class="css-1yc2nwy eug5r8l2">
                    <h3 class="css-1ew6v8c eug5r8l1">취소 신청</h3>
                </div>

                

                <!-- 찐본문의 본문 -->
                <div class="css-185m8ch e1153ede0">
                    <form action="inquiry" method="post" enctype="multipart/form-data">

                        <!-- 주문내역 선택 디브 -->
                        <div class="css-17bp14q e1vbjq4w3">

                            <div class="css-mm5tap e1vbjq4w2">
                                <label data-testid="label-text">주문내역</label>
                            </div>

                            <div class="css-12l4j2c e1vbjq4w1">
                                <div class="css-zjik7 epfrwk70">

                                    <div class="search-category" id="search-category">
                                        <select disabled id="merchant_uid" name="merchant_uid" class="custom-select custom-select-sm form-control" style="padding: 10px;
                                        appearance: auto; font-size: 14px; color: #6667AB; height: 44px; margin: -4px 0px 2px;">
                                            <option selected value="">${param.merchant_uid}</option>

                                            <c:forEach items="${ordersDTO}" var="nl">
                                                <option class="cates" value="${nl.merchant_uid}">${nl.merchant_uid}</option>
                                            </c:forEach>
                                            <input type="hidden" name="merchant_uid" value="${param.merchant_uid}">

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 카테고리 전체 디브 -->
                                
                                
                        


                        <!-- 내용 입력 -->
                        <div class="css-rm6te4 e1fgvk594">
                            <div class="css-17bp14q e1vbjq4w3">
                                <div class="css-mm5tap e1vbjq4w2">
                                    <label for="inquiry-contents" data-testid="label-text">취소사유</label>
                                </div>

                                <div class="css-12l4j2c e1vbjq4w1">

                                    <div class="css-0 e1tjt2bn7">
                                        <div class="css-1gua357 e1tjt2bn5" style="height: 200px;">
                                            <textarea id="memo" inputmode="text" placeholder="사유를 입력해주세요" aria-label="textarea-message" 
                                            name="can_memo" class="css-5etceh e1tjt2bn1" style="font-size: 14px;"></textarea>


                                            <span class="content-length-counter css-zgkz6w e1tjt2bn0">
                                            
                                                <span id="lengthCheck" class="css-14kcwq8 e1tjt2bn2">
                                                    <!-- <span class="css-14kcwq8 e1tjt2bn2">0자 </span>
                                                    <span class="css-14kcwq8 e1tjt2bn3">/ 5000자</span> -->
                                                </span>
                                            </span>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!-- 내용입력 끝 -->
                        
                        
                        <!-- 등록 버튼 -->
                        <div class="css-1spu0j4 ebvrvv11">
                        <button type="submit" disabled class="css-13kn1it ebvrvv10" id="qnaSubmit">등록</button>
                        </div>

                        

                    </form>
                </div>
                <!-- 찐본문의 본문 끝 -->

            </div>
            <!-- 1대1 문의 끝 -->
        </section>
        <c:import url="../template/footer.jsp"></c:import>
    </div> <!--wrap end-->
    <script src="/resources/js/mypage/cancel.js"></script>
</body>
</html>