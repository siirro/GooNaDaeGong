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
<link rel="stylesheet" href="/resources/css/notice/list.css">
</head>
<body>



<!-- 본문 전체박스 -->
<div class="css-2b29tl eug5r8l5">

    <!-- 레이아웃 박스 -->
    <div class="css-luwwab eug5r8l4">

        <!-- sidebar import -->
        <c:import url="./nsidebar.jsp"></c:import>
        
        
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
                        <th width="100" class="css-135p6jy e1ehwelz2">작성자</th>
                        <th width="100" class="css-135p6jy e1ehwelz2">작성일</th>
                    </tr>
                </thead>
                <tbody class="css-bjn8wh e1ehwelz1">
                    <!--  -->


                    <!-- 더미 -->
                    <tr class="css-x2m5rx e15yrn082">
                        <td class=" css-1k4d546 e15yrn081">공지</td>
                        <td class=" css-s1v1rc e15yrn081">[마켓컬리] 선물하기 서비스 재오픈 공지 (2022. 8. 25 ~ )</td>
                        <td class=" css-1k4d546 e15yrn081">MarketKurly</td>
                        <td class=" css-vzhbq5 e15yrn081">2022-08-24</td>
                    </tr>
                    <tr class="css-x2m5rx e15yrn082">
                        <td class=" css-1k4d546 e15yrn081">공지</td>
                        <td class=" css-s1v1rc e15yrn081">[마켓컬리] 컬리 소비자 분쟁해결 기준 안내</td>
                        <td class=" css-1k4d546 e15yrn081">MarketKurly</td>
                        <td class=" css-vzhbq5 e15yrn081">2022-07-27</td>
                    </tr>  
                    <tr class="css-x2m5rx e15yrn082">
                        <td class=" css-1k4d546 e15yrn081">1661</td>
                        <td class=" css-s1v1rc e15yrn081">[마켓컬리] 2022년 9월 럭셔리 뷰티 위크 원데이 브랜드데이 특별 적립금 지급 연기 안내</td>
                        <td class=" css-1k4d546 e15yrn081">MarketKurly</td>
                        <td class=" css-vzhbq5 e15yrn081">2022-09-23</td>
                    </tr>
                    <tr class="css-x2m5rx e15yrn082">
                        <td class=" css-1k4d546 e15yrn081">1660</td>
                        <td class=" css-s1v1rc e15yrn081">[안내] 태풍영향권의 일부 낮배송 지역 대상 주문 불가 안내</td>
                        <td class=" css-1k4d546 e15yrn081">MarketKurly</td><td class=" css-vzhbq5 e15yrn081">2022-09-16</td>
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

        </div>
        <!-- 공지사항 본문 끝 -->



    </div>
    <!-- 레이아웃 박스 끝 -->
    
    
</div>
<!-- 본문 전체 끝 -->








<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/notice/list.js"></script>
</body>
</html>