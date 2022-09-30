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
                <li class="css-0 ecbxmj1"><a href="../notice/list" class="css-nk8664 ecbxmj0">공지사항<span class="css-e41glx e1x0rfoo0"></span></a></li>
                <li class="css-0 ecbxmj1"><a href="../faq/list" class=" css-nk8664 ecbxmj0">자주하는 질문<span class="css-e41glx e1x0rfoo0"></span></a></li>
                <li class="css-0 ecbxmj1"><a href="../qna/inquiry" class="active css-nk8664 ecbxmj0">1:1 문의<span class="css-e41glx e1x0rfoo0"></span></a></li>
            </ul>
            
        </div>
        <!-- sidebar 끝 -->

        <!-- 1:1문의 본문 -->
        <div class="css-171zbec eug5r8l3" id="qnaContents">

            <!-- 찐본문의 제목 -->
            <div class="css-1yc2nwy eug5r8l2">
                <h3 class="css-1ew6v8c eug5r8l1">1:1 문의</h3>
            </div>

            

            <!-- 찐본문의 본문 -->
            <div class="css-185m8ch e1153ede0">
                <form action="inquiry" method="post" enctype="multipart/form-data">

                    <!-- 작성자 = ${session.user_id} -->
                    <input type="hidden" name="user_id" value="1">
                    <!-- value="${session.user_id}" -->
                    
                    
                    <!-- 코드구분 전체 -->
                    <div class="css-17bp14q e1vbjq4w3">

                        <div class="css-mm5tap e1vbjq4w2">
                            <label data-testid="label-text">구분</label>
                        </div>

                        <div class="css-12l4j2c e1vbjq4w1">
                            <div class="css-zjik7 epfrwk70">

                                <div class="search-category" id="search-category">
                                    <select id="qna_code" name="code" class="custom-select custom-select-sm form-control" style="padding: 10px;
                                    appearance: auto; font-size: 14px; color: #6667AB; height: 44px;">
                                        <option selected disabled value="">선택 </option>
                                        <option class="codes" value="1">구디나라</option>
                                        <option class="codes" value="2">대기공주</option>
                                        
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 코드구분 전체 -->

                    <!-- 카테고리 전체 디브 -->
                    <div class="css-17bp14q e1vbjq4w3">

                        <div class="css-mm5tap e1vbjq4w2">
                            <label data-testid="label-text">유형</label>
                        </div>

                        <div class="css-12l4j2c e1vbjq4w1">
                            <div class="css-zjik7 epfrwk70">

                                <div class="search-category" id="search-category">
                                    <select id="qna_cate" name="qna_cate" class="custom-select custom-select-sm form-control" style="padding: 10px;
                                    appearance: auto; font-size: 14px; color: #6667AB; height: 44px; margin: -4px 0px 2px;">
                                        <option selected disabled value="">카테고리를 선택해주세요 </option>
                                        <option class="cates" value="주문/결제">주문/결제</option>
                                        <option class="cates" value="상품">상품</option>
                                        <option class="cates" value="배송">배송</option>
                                        <option class="cates" value="기타">기타</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 카테고리 전체 디브 -->
                            
                            
                            
                            
                            
                    <!-- 제목 입력 -->
                    <div class="css-17bp14q e1vbjq4w3">
                        <div class="css-mm5tap e1vbjq4w2">
                            <label for="inquiry-subject" data-testid="label-text">제목</label>
                        </div>

                        <div class="css-12l4j2c e1vbjq4w1">
                            <div class="css-1waqr6j e1uzxhvi6">
                                <div height="44" class="css-t7kbxx e1uzxhvi3">
                                    <input data-testid="input-box" id="qna_title" name="qna_title" placeholder="제목을 입력해주세요" 
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
                                        <textarea id="qna_contents" inputmode="text" placeholder="내용을 입력해주세요" aria-label="textarea-message" 
                                        name="qna_contents" class="css-5etceh e1tjt2bn1" style="font-size: 14px;"></textarea>


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

                                    <!-- 개빡친다 지워 -->
                                    <!-- <div class="input-group mb-3" id="file0">
                                        <input type="file" class="form-control" name="multipartFiles" id="multipartFiles">
                                        <button class="btn btn-danger del" type="button" title="0">삭제</button>
                                        
                                    </div>

                                    <div id="fileAdd2">
                                        이 안에 추가 파일추가 창이 뜬다
                                    </div> -->
                                    <!-- 개빡친다 지워 -->

                                    
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

                                </div>
                            </div>
                        </div>
                    </div>

                    
                    <!-- 답변수신  -->
                    <div class="css-v3zc4x effwtd5">
                        <div class="css-17bp14q e1vbjq4w3">

                            <div class="css-mm5tap e1vbjq4w2">
                            <label for="inquiryAllowsNotificationCheck" data-testid="label-text">답변 수신</label>
                            </div>

                            <div class="css-12l4j2c e1vbjq4w1">
                                <div class="css-1wnowod effwtd4">
                                    <div class="css-n7yl5s effwtd3">
                                        <div class="css-bg7ww1 e1uzxhvi6">
                                            <div height="44" class="css-t7kbxx e1uzxhvi3">
                                                <input data-testid="input-box" id="inquiryAllowsNotificationCheck" disabled="" type="text" height="44" 
                                                class="css-n2am0u e1uzxhvi2" value="010-9292-****">
                                                <!-- value= ${session.user_phone} -->
                                            </div>

                                        </div>
                                    </div>

                                    <div class="css-1s6b9a2 effwtd0">
                                        
                                    </div>

                                    <a class="css-1ybcx6v effwtd1">개인정보 수정</a>
                                </div>

                                <div class="css-3ky9df effwtd2">
                                <span>※ 야간에도 답변 완료 알림톡이 발송 되는 점 참고 부탁드립니다.</span>
                                </div>

                            </div>
                        </div>
                    </div>


                    <!-- 등록 버튼 -->
                    <div class="css-1spu0j4 ebvrvv11">
                    <button type="submit" disabled class="css-13kn1it ebvrvv10" id="qnaSubmit">등록</button>
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



<!-- 푸터 -->
<c:import url="../template/footer.jsp"></c:import>

</div>





<script src="/resources/js/notice/inquiry.js"></script>
</body>
</html>