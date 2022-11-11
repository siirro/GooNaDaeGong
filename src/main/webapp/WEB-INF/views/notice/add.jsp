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
            <div class="css-185m8ch">

                <form action="add" method="post" enctype="multipart/form-data">

                    <!-- 작성자 = ${session.user_id} -->
                    <input type="hidden" name="user_id" value="${member.user_id}">
                    <!-- value="${session.user_id}" -->
                    
                            
                    <!-- 제목 입력 -->
                    <div class="css-17bp14q e1vbjq4w3">
                        <div class="css-mm5tap e1vbjq4w2">
                            <label for="inquiry-subject" data-testid="label-text">제목</label>
                        </div>

                        <div class="css-12l4j2c e1vbjq4w1">
                            <div class="css-1waqr6j e1uzxhvi6">
                                <div height="44" class="css-t7kbxx e1uzxhvi3">
                                    <input data-testid="input-box" id="nt_title" name="nt_title" placeholder="제목을 입력해주세요" 
                                    type="text" height="44" class="css-n2am0u e1uzxhvi2" value="">
                                </div>
                            </div>
                        </div>

                    </div>


                    <!-- 내용 입력 -->
                    <div class="css-rm6te4 e1fgvk594">
                        <div class="css-17bp14q e1vbjq4w3">
                            <div class="css-mm5tap e1vbjq4w2">
                                <label for="inquiry-contents" data-testid="label-text">내용</label>
                            </div>

                            <div class="css-12l4j2c e1vbjq4w1">

                                <div class="css-0 e1tjt2bn7">
                                    <div class="css-1gua357 e1tjt2bn5">
                                        <!-- onkeypress="onTestChange();"  -->
                                        <textarea id="nt_contents" inputmode="text" placeholder="내용을 입력해주세요" aria-label="textarea-message" 
                                        name="nt_contents" class="css-5etceh e1tjt2bn1" style="font-size: 14px;"></textarea>

                                        <span class="content-length-counter css-zgkz6w e1tjt2bn0">
                                            <span id="lengthCheck" class="css-14kcwq8 e1tjt2bn2">
                                            </span>
                                        </span>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- 내용입력 끝 -->
                    
                    <!-- 파일첨부 -->
                    <div class="css-17bp14q e1vbjq4w3">
                        <div class="css-mm5tap e1vbjq4w2">
                        <label data-testid="label-text"></label>
                        </div>
                        
                        <div class="css-12l4j2c e1vbjq4w1">
                            <div class="css-mlazth edd8l6o3">
                                <div class="css-g8ewo8 e9bfpi41" id="fileBox">

                                    
                                    
                                    <!-- 옛날에쓴파일추가 -->
                                    <div id="addFiles">
                                        <button class="btn btn-danger mb-3" type="button" id="addFilesb" style="border-color: #6667AB; background-color: #6667AB;">파일 추가</button>
                                    </div>
                                    

                                   
                                    <div class="css-sqqcql edd8l6o2">
                                        <div class="css-7n55a5 edd8l6o1">
                                            <span class="css-1xbds45 edd8l6o0"></span>50MB 이하의 이미지만 업로드 가능합니다.
                                        </div>
                                        <div class="css-7n55a5 edd8l6o1">
                                            <span class="css-1xbds45 edd8l6o0"></span>사진은 최대 5장까지 등록가능합니다.
                                        </div>
                                    </div>

                                    <div id="nt_yncheck" style="margin-top: 30px;">
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="nt_yn" id="nt_yn1" value="Y" checked>
                                            <label class="form-check-label" for="inlineRadio1">공지 표시</label>
                                        </div>
                                        <div class="form-check form-check-inline">
                                            <input class="form-check-input" type="radio" name="nt_yn" id="nt_yn2" value="N">
                                            <label class="form-check-label" for="inlineRadio2">표시하지 않음</label>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    



            </div>

            

            <div class="css-1spu0j4 ebvrvv11">
                <button type="submit" disabled class="css-13kn1it ebvrvv10" id="ntSubmit">등록</button>
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

<script src="/resources/js/notice/add.js"></script>
</body>
</html>