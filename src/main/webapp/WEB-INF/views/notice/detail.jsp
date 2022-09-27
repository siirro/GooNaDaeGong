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
            <div class="css-1yc2nwy eug5r8l2" style="padding-bottom: 27px;">
                <h3 class="css-1ew6v8c eug5r8l1">공지사항</h3>
                
            </div>
            
            <!-- 공지사항 본문의 찐본문 -->
            <div>
                <div id="title" style="display: flex; flex-direction: row; border-bottom: 1px solid rgb(244, 244, 244);
                border-top: 1px solid #D6D6EA;">
                    <div id="titleHead" style="width: 120px; padding: 13px 20px 13px 20px; background-color: #D6D6EA;
                    text-align: center; font-weight: 500;">제목
                    </div>
                    <div id="titleBody" style="padding-left: 25px; align-self: center;">${detail.nt_title}
                    </div>
                </div>
                
                <div id="dateHead" style="display: flex; flex-direction: row; border-bottom: 1px solid #D6D6EA;">
                    <div id="titleHead" style="width: 120px; padding: 13px 20px 13px 20px; background-color: #D6D6EA;
                    text-align: center; font-weight: 500;">등록일
                    </div>
                    <div id="dateValue" style="padding-left: 25px; align-self: center;">${detail.nt_date}
                    </div>
                </div>

                <div id="contetns">
                    <div id="contentsValue" style="height: 500px; margin: 30px 10px 50px 10px; border-bottom: 1px solid #D6D6EA;">${detail.nt_contents}</div>
                </div>
            </div>

            
            <!-- 목록으로 -->
            <div class="css-1spu0j4 ebvrvv11">
                <a href="./update?num=${detail.nt_num}"><button style="background-color: #6667AB;" type="button" class="css-13kn1it ebvrvv10" id="ntUpdate">수정</button></a>
                <a href="./delete?num=${detail.nt_num}"><button style="background-color: #6667AB;" type="button" class="css-13kn1it ebvrvv10" id="ntUpdate">삭제</button></a>
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