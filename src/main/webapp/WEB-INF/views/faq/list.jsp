<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link rel="stylesheet" href="/resources/css/notice/list.css">
<style>
    .faqBtn > li {
        border: 1px solid #D6D6EA;
        padding: 10px 20px 10px 20px;
        margin: 0px 10px 15px 10px;
        width: auto;
        border-radius: 5px;
        font-size: 12px;
    }

    .faqBtn > li:hover {
        cursor: pointer;
        background-color: #6667AB;
        color: white;
    }

    .faqBtn > li:active {
        background-color: #6667AB;
        color: white;
    } 

    .faqBtn > li > a {
        color: black;

    }

</style>
</head>
<body>
<div class="wrap">
    <!-- 헤더 임포트 -->
    <c:import url="../template/header.jsp"></c:import>


<!-- 본문 전체박스 -->
<div class="css-2b29tl eug5r8l5">

    <!-- 레이아웃 박스 -->
    <div class="css-luwwab eug5r8l4">

        <!-- sidebar -->
        <div class="css-833hqy ecbxmj4" id="sidebar">

            <div class="css-1v4whg ecbxmj3">
                고객센터
            </div>
            <ul class="css-1x9bshx ecbxmj2">
                <li class="css-0 ecbxmj1"><a href="../notice/list" class="css-nk8664 ecbxmj0">공지사항<span class="css-e41glx e1x0rfoo0"></span></a></li>
                <li class="css-0 ecbxmj1"><a href="../faq/list" class="active css-nk8664 ecbxmj0">자주하는 질문<span class="css-e41glx e1x0rfoo0"></span></a></li>
                <li class="css-0 ecbxmj1"><a href="../qna/inquiry" class=" css-nk8664 ecbxmj0">1:1 문의<span class="css-e41glx e1x0rfoo0"></span></a></li>
            </ul>
            
        </div>
        <!-- sidebar 끝 -->
        
        <!-- FAQ 본문 -->
        <div class="css-171zbec eug5r8l3">

            <!-- FAQ 본문의 제목 -->
            <div class="css-1yc2nwy eug5r8l2" style="padding: 10px 0px 20px;">
                <h3 class="css-1ew6v8c eug5r8l1">자주하는 질문</h3>
            </div>
            
            <!-- FAQ 카테고리 박스 -->
            <div class="faqBtnArea">
                <ul class="faqBtn" style="display: flex; flex-wrap: wrap;">
                    <li onclick="location.href='./list?faq_cate=1'" id="cate1" class="cates">
                        배송
                    </li>
                    <li onclick="location.href='./list?faq_cate=2'" id="cate2" class="cates">
                        상품
                    </li>
                    <li onclick="location.href='./list?faq_cate=3'" id="cate3" class="cates">
                        서비스이용
                    </li>
                    <li onclick="location.href='./list?faq_cate=4'" id="cate4" class="cates">
                        시스템오류
                    </li>
                    <li onclick="location.href='./list?faq_cate=5'" id="cate5" class="cates">
                        신고/사기
                    </li>
                    <li onclick="location.href='./list?faq_cate=6'" id="cate6" class="cates">
                        이벤트/쿠폰/적립금
                    </li>
                    <li onclick="location.href='./list?faq_cate=7'" id="cate7" class="cates">
                        주문/결제
                    </li>
                    <li onclick="location.href='./list?faq_cate=8'" id="cate8" class="cates">
                        취소/교환/환불
                    </li>
                    <li onclick="location.href='./list?faq_cate=9'" id="cate9" class="cates">
                        회원
                    </li>

                </ul>
            </div>
            <!-- FAQ 카테고리 박스 -->

            <!-- FAQ 본문 -->
            <table class="css-r5t16v e1ehwelz4" style="border-top: 1px solid #ACACD5; border-bottom: 1px solid #ACACD5;">
                <thead class="css-0 e1ehwelz3">
                    <tr class="css-etygac e1ehwelz0" style="border-bottom: 2px solid #ACACD5;">
                        <th width="25" class="css-hyew2s e1ehwelz2" style="width: 0px;">번호</th>
                        <th width="50" class="css-1k9dp5l e1ehwelz2" style="width: 20px;">카테고리</th>
                        
                        <th class="css-135p6jy e1ehwelz2">제목</th>
                    </tr>
                </thead>
                <tbody class="css-bjn8wh e1ehwelz1">
                    <!--  -->
                    
                    <c:forEach items="${list}" var="nl">
                        <!-- <a style="color: black;" href="./detail?faq_num=${nl.faq_num}"> -->
                            <tr class="css-x2m5rx e15yrn082" onclick="location.href='./detail?faq_num=${nl.faq_num}'">
                                <td class=" css-1k4d546 e15yrn081">${nl.faq_num}</td>
                                <td class=" css-vzhbq5 e15yrn081">
                                    
                                    <!-- ${nl.faq_cate} -->
                                    <c:choose>
                                        <c:when test="${nl.faq_cate eq 1}">배송</c:when>
                                        <c:when test="${nl.faq_cate eq 2}">상품</c:when>
                                        <c:when test="${nl.faq_cate eq 3}">서비스이용</c:when>
                                        <c:when test="${nl.faq_cate=='4'}">시스템오류</c:when>
                                        <c:when test="${nl.faq_cate eq 5}">신고</c:when>
                                        <c:when test="${nl.faq_cate eq 6}">이벤트/쿠폰/적립금</c:when>
                                        <c:when test="${nl.faq_cate eq 7}">주문/결제</c:when>
                                        <c:when test="${nl.faq_cate eq 8}">취소/교환/환불</c:when>
                                        <c:when test="${nl.faq_cate eq 9}">회원</c:when>
                                        <c:otherwise>
                                            카테고리설정중
                                        </c:otherwise>

                                    </c:choose>





                                </td>
                                <td class=" css-s1v1rc e15yrn081">${nl.faq_title}</td>
                            </tr>
                        <!-- </a> -->
                    </c:forEach>
                    

                    


                </tbody>
            </table>

            <!-- 페이지 -->
            <div class="pagediv mt-4" style="display: flex; justify-content: center; ">
                <nav aria-label="Page navigation example">
                    <ul class="pagination paginate_sm">

                        <c:if test="${pager.pre}">
                            <li class="page-item"><a class="page-link" href="./list?page=${pager.startNum-1}">pre</a></li>
                        </c:if>
                        <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                            <li class="page-item"><a class="page-link" href="./list?page=${i}">${i}</a></li>
                        </c:forEach>
                        <li class="page-item ${pager.next?'':'disabled'}"><a class="page-link" href="./list?page=${pager.lastNum+1}">next</a></li>
                    </ul>
                </nav>
            </div>



            <!-- <div class="css-1kbzkwh efhuu1x1">
                <div class="css-sxxs1g eytury60">
                    <button type="button" class="css-rzcdhr e1hbwyso0" ${pager.pre?'':'disabled=""'}>
                    
                        <div class="css-7qb0sc e1ilyb3p0">이전</div>
                    </button>
                    <button type="button" class="css-1jwilit e1pk9060" ${pager.next?'':'disabled=""'}>
                        <div class="css-7qb0sc e1ilyb3p0">다음</div>
                    </button>
                </div>
            </div> -->

            <c:if test="${sessionScope.member.user_grade eq 2}">
            <!-- 관리자 전용 메뉴. 인터셉터 추가하기 -->
            <div class="mb-3" style="display: flex; justify-content: right; margin-top: 10px;">
                
                <a href="./add">
                <button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm ml-1"
                style ="width: 120px;
                height: 42px; background-color: #6667AB; border: 0px none; margin-left: 10px;">
                    <i class="fas fa-wrench fa-sm text-white-50"></i> 
                    
                        등록
                </button>   
                </a>
            </div>
            <!-- 관리자 전용 메뉴. 인터셉터 추가하기 -->
            </c:if>


        </div>
        <!-- 공지사항 본문 끝 -->



    </div>
    <!-- 레이아웃 박스 끝 -->
    
    
</div>
<!-- 본문 전체 끝 -->




<!-- 푸터 -->
<c:import url="../template/footer.jsp"></c:import>

</div>

<script src="/resources/js/notice/list.js"></script>

<script>

    // url의 카테고리 번호에 맞춰 버튼의 색이 바뀐다
    let cates = document.querySelectorAll(".cates")

    let url =window.location.href;
    let cateNum = url.charAt(url.length-1);
    if(cateNum!="t") {
        
        let ddd = document.getElementById("cate"+cateNum);
        
        ddd.setAttribute("style","background-color: #6667AB; color: white;");
        
        
    };



</script>
</body>
</html>