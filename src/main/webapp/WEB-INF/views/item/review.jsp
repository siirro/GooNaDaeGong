<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>web sample</title>
<link rel="stylesheet" href="/resources/css/dg/review.css">
</head>
<body>
	<!-- Wrap Start -->
	<div class="wrap">
		<c:import url="../template/header.jsp"></c:import>

		<!-- Section Start -->
		<section>
			<!-- 본문 전체박스 -->
<div class="css-2b29tl eug5r8l5">

    <!-- 레이아웃 박스 -->
    <div class="css-luwwab eug5r8l4">

        <!-- 1:1문의 본문 -->
        <div class="css-171zbec eug5r8l3" id="qnaContents">

            <!-- 찐본문의 제목 -->
            <div class="css-1yc2nwy eug5r8l2">
                <h3 class="css-1ew6v8c eug5r8l1">후기 작성</h3>
            </div>

            

            <!-- 찐본문의 본문 -->
            <div class="css-185m8ch e1153ede0">
                <form action="review" method="post" enctype="multipart/form-data">
                
                <input type="hidden" name="item_num" value="${dgItemReviewDTO.item_num}">

                    <!-- 작성자 = ${session.user_id} -->
                    <input type="hidden" name="user_id" value="${member.user_id}">
                    <!-- value="${session.user_id}" -->

                    <!-- 카테고리 전체 디브 -->
                    <div class="css-17bp14q e1vbjq4w3">

                        <div class="css-mm5tap e1vbjq4w2">
                            <label data-testid="label-text">
                            	<img width="250px" height="200px" alt="" src="/resources/images/sample.jpg">
                            </label>
                        </div>

                        <div class="css-12l4j2c e1vbjq4w1">
                            <div class="css-zjik7 epfrwk70">

                                <div class="review_item_name" id="item_name">
                                    <div>상품명</div>
                                    <div>상품명</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 카테고리 전체 디브 -->
                            
                            
                            
                            
                            
                    <!-- 제목 입력 -->
                    <div class="css-17bp14q e1vbjq4w3">
                        <div class="css-mm5tap e1vbjq4w2">
                            <label for="review-title" data-testid="label-text">제목</label>
                        </div>

                        <div class="css-12l4j2c e1vbjq4w1">
                            <div class="css-1waqr6j e1uzxhvi6">
                                <div height="44" class="css-t7kbxx e1uzxhvi3">
                                    <input data-testid="input-box" id="rv_title" name="rv_title" 
                                    placeholder="제목을 입력해주세요"  type="text" height="44" class="css-n2am0u e1uzxhvi2" value="">
                                </div>
                            </div>
                        </div>

                    </div>


                    <!-- 내용 입력 -->
                    <div class="css-rm6te4 e1fgvk594">
                        <div class="css-17bp14q e1vbjq4w3">
                            <div class="css-mm5tap e1vbjq4w2">
                                <label for="review-contents" data-testid="label-text">내용</label>
                            </div>

                            <div class="css-12l4j2c e1vbjq4w1">

                                <div class="css-0 e1tjt2bn7">
                                    <div class="css-1gua357 e1tjt2bn5">
                                        <textarea id="rv_contents" inputmode="text" placeholder="내용을 입력해주세요" aria-label="textarea-message" 
                                        name="rv_contents" class="css-5etceh e1tjt2bn1" style="font-size: 14px;"></textarea>


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
                                        <button class="btn btn-danger mb-3" type="button" id="addRVFiles_btn" style="border-color: #6667AB; background-color: #6667AB;">파일 추가</button>
                                    </div>
                                    

                                   
                                    <div class="css-sqqcql edd8l6o2">
                                        <div class="css-7n55a5 edd8l6o1">
                                            <span class="css-1xbds45 edd8l6o0"></span>50MB 이하의 이미지만 업로드 가능합니다.
                                        </div>
                                        <div class="css-7n55a5 edd8l6o1">
                                            <span class="css-1xbds45 edd8l6o0"></span>사진은 최대 1장까지 등록가능합니다.
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    

                    <!-- 등록 버튼 -->
                    <div class="css-1spu0j4 ebvrvv11">
                    <button type="submit" disabled class="css-13kn1it ebvrvv10" id="rvSubmit">등록</button>
                    </div>

                    

                </form>
            </div>
            <!-- 찐본문의 본문 끝 -->

        </div>
        <!-- 1대1 문의 끝 -->




    </div>
    <!-- 레이아웃 박스 끝 -->
    
    
</div>
<!-- 본문 전체 끝 -->
		</section>
		<!--  Section End -->

		<c:import url="../template/footer.jsp"></c:import>

	</div>
	<!-- Wrap End -->
	
	<script src="/resources/js/dg/review.js"></script>
</body>
</html>