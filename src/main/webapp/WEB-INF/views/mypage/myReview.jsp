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
                                <a class="css-nk8664 ecbxmj0" href="./myOrder">주문 내역<span class="css-e41glx e1x0rfoo0"></span></a>
                            </li>
                            <li class="css-0 ecbxmj1">
                                <a class=" css-nk8664 ecbxmj0" href="./myLike">찜한 상품<span class="css-e41glx e1x0rfoo0"></span></a>
                            </li>
                            <li class="css-0 ecbxmj1">
                                <a class=" css-nk8664 ecbxmj0" href="./myReview">상품 후기<span class="css-e41glx e1x0rfoo0"></span></a>
                            </li>
                            <li class="css-0 ecbxmj1">
                                <a class="active css-nk8664 ecbxmj0" href="./myQNA">상품 문의<span class="css-e41glx e1x0rfoo0"></span></a>
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
                        <div class="head_aticle">
                            <h2 class="tit">상품후기</h2>
                        </div>    
                        <div class="board-container">
                            <div id="productInquiryBoard" data-boardpagesize="10" data-boardtype="my_kurly" data-devicetype="pc">
                                <div class="board-header-container">
                                    <ul class="list-description">
                                        <li>상품에 대한 리뷰내역 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</li>
                                        <li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 <a href="../qna/inquiry">1:1 문의</a>에 남겨주세요.</li>
                                    </ul>
                                </div>
                                <div class="css-1d3w5wq e3tf63e1">
                                    <table class="css-10utwlq e3tf63e6">
                                        <thead class="css-bja6kz e3tf63e5">
                                            <tr class="css-etygac e3tf63e2">
                                                <th class="css-1soyerh e3tf63e4">제목</th>
                                                <th class="css-1soyerh e3tf63e4">작성일</th>
                                            </tr>
                                        </thead>
                                        <!-- 반복문 시작 부분 -->
                                        <c:forEach items="${review}" var="rev">
                                        <tbody class="css-0 e3tf63e3">
                                            <tr class="css-shpvex e1vd1n2i4">
                                                <td class="css-0 e1vd1n2i3">
                                                    <div class="css-14e35e qnatitle" data-bs-toggle="collapse" href="#collapseExample[${rev.rv_num}]" role="button">${rev.rv_title}</div>
                                                </td>
                                                <td class="css-0 e1vd1n2i3">
                                                    <span class="css-14kcwq8 e1vd1n2i1">
                                                    <fmt:formatDate value="${rev.rv_date}" pattern="yyyy.MM.dd"/>
                                                    </span>
                                                </td>
                                            </tr>
                                            <!--아코디언 구간-->
                                            <tr class="addqna collapse" id="collapseExample[${rev.rv_num}]">
                                                <td colspan="3">
                                                    <div class="css-1v42wu9 e1vd1n2i0">
                                                        <div class="css-1yz3xab e94cdlt1">
                                                            <span class="css-aq9a2j e94cdlt0">상품명</span>
                                                            <span class="css-a5dfz6 ecg7plp0"></span>
                                                            <span class="css-aq9a2j e94cdlt0">
                                                                <a href="#">
                                                                    ${rev.itemDTO.item_title}
                                                                </a>
                                                            </span>
                                                        </div>
                                                        <div class="css-1voj7e4 e82q4qc4">
                                                            <div class="css-145c1ga e82q4qc3">
                                                                <span type="QUESTION" class="css-430usl e82q4qc2">${rev.rv_contents}</span><br>
                                                                <div class="css-10zritj ewad2cu1"></div>
                                                            </div>
                                                        </div>

                                                                <img src="../resources/upload/review/${rev.rv_file}"/>

                                                        
                                                        <div class="css-c0oq5k eula2qn2">
                                                            <button type="button" class="css-qv4hdm eula2qn1">수정</button>
                                                            <div class="css-ord49b eula2qn0"></div>
                                                            <button type="button" class="css-qv4hdm eula2qn1">삭제</button>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </c:forEach>
                                    </table>
                                </div>
                                <div class="css-15jhycr e3tf63e0">
                                    <div class="css-sxxs1g eytury60">
                                    <c:choose>
                                        <c:when test="${pager.pre}">
                                            <button  type="button" class="css-rzcdhr e1hbwyso0" onClick="location.href='./myReview?page=${pager.startNum-1}'">
                                                <div class="css-7qb0sc e1ilyb3p0">이전</div>
                                            </button>
                                        </c:when>
                                        <c:otherwise>
                                             <button type="button" class="css-rzcdhr e1hbwyso0" disabled="">
                                                <div class="css-7qb0sc e1ilyb3p0">이전</div>
                                            </button>
                                        </c:otherwise>
                                    </c:choose>
                                    
                                    
                                    <c:choose>
                                        <c:when test="${pager.next}">
                                            <button type="button" class="css-1jwilit e1pk9060" onClick="location.href='./myReview?page=${pager.lastNum+1}'">
                                            <div class="css-7qb0sc e1ilyb3p0">다음</div>
                                        </button>
                                        </c:when>
                                        <c:otherwise>
                                            <button disabled="" type="button" class="css-1jwilit e1pk9060">
                                            <div class="css-7qb0sc e1ilyb3p0">다음</div>
                                        </button>
                                        </c:otherwise>
                                    </c:choose>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>
            <c:import url="../template/footer.jsp"></c:import>
        </div>
        <script src="/resources/js/mypage/myQNA.js"></script> 
</body>
</html>