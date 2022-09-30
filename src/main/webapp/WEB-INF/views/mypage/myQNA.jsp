<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/resources/css/member/mypage.css">
</head>
<body>
    
    <section>
        <div class="css-luwwab eug5r8l4">
            <div class="css-833hqy ecbxmj4">
                <div class="css-1v4whg ecbxmj3">마이페이지</div>
                <ul class="css-1x9bshx ecbxmj2">
                    <li class="css-0 ecbxmj1">
                        <a class="css-nk8664 ecbxmj0" href="./myOrder">주문 내역<span class="css-e41glx e1x0rfoo0"></span></a>
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
                        <a class="active css-nk8664 ecbxmj0">상품 문의<span class="css-e41glx e1x0rfoo0"></span></a>
                    </li>
                    <li class="css-0 ecbxmj1">
                        <a class=" css-nk8664 ecbxmj0" href="./myUpdate">개인 정보 수정<span class="css-e41glx e1x0rfoo0"></span></a>
                    </li>
                </ul>
                <a href="/mypage/inquiry/form" class="css-17gln34 e19l01ug3">
                    <div class="css-1niy3no e19l01ug2">
                        <span class="css-1sdidca e19l01ug1">도움이 필요하신가요 ?</span>
                        <span class="css-rnnx2x e19l01ug0">1:1 문의하기</span>
                    </div>
                    <span class="css-1wkaywz e1x0rfoo0"></span>
                </a>
            </div>
            <div class="css-171zbec eug5r8l3">
                <div class="head_aticle">
                    <h2 class="tit">상품문의</h2>
                </div>    
                <div class="board-container">
                    <div id="productInquiryBoard" data-boardpagesize="10" data-boardtype="my_kurly" data-devicetype="pc">
                        <div class="board-header-container">
                            <ul class="list-description">
                                <li>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</li>
                                <li>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 <a href="/mypage/inquiry/list">1:1 문의</a>에 남겨주세요.</li>
                            </ul>
                        </div>
                        <div class="board-item-container my_kurly">
                            <div class="inquiry-board-header">
                                <div></div>
                                <div style="width: 520px;">제목</div>
                                <div>작성일</div>
                                <div>답변상태</div>
                            </div>
                            <ul class="board-list">
                                <li class="inquiry-empty">작성한 상품 문의가 없습니다.</li>
                            </ul>
                            <div class="board-inquiry-area">
                                <div class="paging-navigation">
                                    <button type="button" class="paging-prev" disabled="">
                                        <span>이전</span>
                                    </button>
                                    <button type="button" class="paging-next" disabled="">
                                        <span>다음</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    </section>
</body>
</html>