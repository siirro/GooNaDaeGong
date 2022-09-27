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
                <li class="css-0 ecbxmj1"><a href="../notice/list" class="active css-nk8664 ecbxmj0">공지사항<span class="css-e41glx e1x0rfoo0"></span></a></li>
                <li class="css-0 ecbxmj1"><a href="../faq/list" class=" css-nk8664 ecbxmj0">자주하는 질문<span class="css-e41glx e1x0rfoo0"></span></a></li>
                <li class="css-0 ecbxmj1"><a href="../qna/inquiry" class=" css-nk8664 ecbxmj0">1:1 문의<span class="css-e41glx e1x0rfoo0"></span></a></li>
            </ul>
            
        </div>
        <!-- sidebar 끝 -->
        
        <!-- 공지사항 본문 -->
        <div class="css-171zbec eug5r8l3">

            <!-- 공지사항 본문의 제목 -->
            <div class="css-1yc2nwy eug5r8l2">
                <h3 class="css-1ew6v8c eug5r8l1">공지사항</h3>
                
            </div>
            
            <!-- 공지사항 본문의 찐본문 -->
            <table class="css-r5t16v e1ehwelz4">
                <thead class="css-0 e1ehwelz3">
                    <tr class="css-etygac e1ehwelz0">
                        <th width="50" class="css-hyew2s e1ehwelz2">번호</th>
                        <th class="css-1k9dp5l e1ehwelz2">제목</th>
                        
                        <th width="100" class="css-135p6jy e1ehwelz2">등록일</th>
                    </tr>
                </thead>
                <tbody class="css-bjn8wh e1ehwelz1">
                    <!--  -->
                    <c:forEach items="${list}" var="nl">
				     <tr class="css-x2m5rx e15yrn082">
				    	<td class=" css-1k4d546 e15yrn081">${nl.nt_num}</td>
				    	<td class=" css-s1v1rc e15yrn081"><a style="color: black;" href="./detail?nt_num=${nl.nt_num}">
                            <c:if test="${nl.code == 1}">
                            [구디나라]
                            </c:if>

                            <c:if test="${nl.code == 2}">
                            [대기공주]
                            </c:if>

                            ${nl.nt_title}</a> 
                        </td>
				    	
				    	<td class=" css-vzhbq5 e15yrn081">${nl.nt_date}</td>
				    </tr>
				    </c:forEach>

                    <!-- 더미 -->
                    <tr class="css-x2m5rx e15yrn082">
                        <td class=" css-1k4d546 e15yrn081">공지</td>
                        <td class=" css-s1v1rc e15yrn081">[마켓컬리] 선물하기 서비스 재오픈 공지 (2022. 8. 25 ~ )</td>
                        
                        <td class=" css-vzhbq5 e15yrn081">2022-08-24</td>
                    </tr>
                    <tr class="css-x2m5rx e15yrn082">
                        <td class=" css-1k4d546 e15yrn081">공지</td>
                        <td class=" css-s1v1rc e15yrn081">[마켓컬리] 컬리 소비자 분쟁해결 기준 안내</td>
                        
                        <td class=" css-vzhbq5 e15yrn081">2022-07-27</td>
                    </tr>  
                    <tr class="css-x2m5rx e15yrn082">
                        <td class=" css-1k4d546 e15yrn081">1661</td>
                        <td class=" css-s1v1rc e15yrn081">[마켓컬리] 2022년 9월 럭셔리 뷰티 위크 원데이 브랜드데이 특별 적립금 지급 연기 안내</td>
                        
                        <td class=" css-vzhbq5 e15yrn081">2022-09-23</td>
                    </tr>
                    


                </tbody>
            </table>

            <div class="css-1kbzkwh efhuu1x1">
                <div class="css-sxxs1g eytury60">
                    <button disabled="" type="button" class="css-rzcdhr e1hbwyso0">
                        <div class="css-7qb0sc e1ilyb3p0">이전</div>
                    </button>
                    <button type="button" class="css-1jwilit e1pk9060">
                        <div class="css-7qb0sc e1ilyb3p0">다음</div>
                    </button>
                </div>
            </div>

            <!-- 등록하기 -->
            <div class="css-15jhycr e3tf63e0" style="position: relative;
            min-height: 44px;
            margin-top: 20px;
            text-align: center;">
                <a href="./add">
                <button class="css-1g9mj7 e4nu7ef3" type="button" width="120" height="42" radius="0" style="position: absolute;
                bottom: 0px;
                right: 0px; 
                display: block;
                padding: 0px 10px;
                text-align: center;
                overflow: hidden;
                width: 120px;
                height: 42px;
                border-radius: 0px;
                color: rgb(255, 255, 255);
                background-color: #6667AB;
                border: 0px none;">
                    <span class="css-ymwvow e4nu7ef1">공지 등록</span>
                </button>
                </a>
            </div>


        </div>
        <!-- 공지사항 본문 끝 -->



    </div>
    <!-- 레이아웃 박스 끝 -->
    
    
</div>
<!-- 본문 전체 끝 -->




<!-- 푸터 -->
<c:import url="../template/footer.jsp"></c:import>

</div>


</body>
</html>