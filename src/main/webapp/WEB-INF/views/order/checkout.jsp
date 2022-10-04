<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구디나라</title>

<link rel="stylesheet" href="/resources/css/order/checkout.css">
</head>
<body>
<div class="wrap">
    <!-- 헤더 임포트 -->
    <c:import url="../template/header.jsp"></c:import>


    <div class="css-1ykiyus e146m4rf2">
        <div class="css-1uom1od e146m4rf0">
            <h2 class="css-10owlr e146m4rf1">주문</h2>
            <!-- 본문 전체박스 -->
            <div class="css-ixlb9s epvroj94">


                <!-- 본문 구성품들 시작 -->

                

                <!-- 결제정보 -->
                <div class="css-4c6dm7 epvroj93">
                    <div class="css-134fy6p epvroj92">

                        <!-- 복붙시도시작 -->
                        <!-- 주문상품제목 -->
                        <div class="css-zo1i6f edbbr7c2">
                            <h3 class="css-1ddzp0m edbbr7c1">주문 상품</h3>
                        </div>

                        <!-- 주문상품목록 -->
                        <div class="css-bd9p1l e17a7yib9">
                            <span class="css-1w0uptv e17a7yib8"></span>
                            <span class="css-10nl60h e17a7yib7"><span class="css-1f86gv6 e17a7yib6">상품의 제목을 써라</span></span>
                            <span class="css-1efb5i1 e17a7yib4">수량+ 개</span>
                            <span class="css-1j31gob e17a7yib3"><span class="css-jnogx7 e17a7yib0">금액+ 원</span></span>
                        </div>

                        <!-- 주문자 정보 -->
                        <div class="css-6q17pt edbbr7c2">
                            <h3 class="css-1ddzp0m edbbr7c1">주문자 정보</h3>
                        </div>

                        <div id="kurly-orderer-info" class="css-shoa2s e1vfdada3">
                            <div class="css-1tq1t75 e150alo82">
                                <span class="css-ln1csn e150alo81">보내는 분</span>
                                <div class="css-82a6rk e150alo80">
                                    <div class="css-t6o2y8 e1vfdada2">이름을써라
                                    </div>
                                </div>
                            </div>

                            <div class="css-1tq1t75 e150alo82">
                                <span class="css-ln1csn e150alo81">휴대폰</span>
                                <div class="css-82a6rk e150alo80">
                                    <div class="css-t6o2y8 e1vfdada2">핸드폰번호를써라
                                    </div>
                                </div>
                            </div>

                            <div class="css-1tq1t75 e150alo82">
                                <span class="css-ln1csn e150alo81">이메일</span>
                                <div class="css-82a6rk e150alo80">메일주소를써라
                                </div>
                            </div>
                        </div>

                        <div id="shipping-container">
                            <div class="css-6q17pt edbbr7c2">
                                <h3 class="css-1ddzp0m edbbr7c1">배송 정보</h3>
                            </div>

                            <div class="css-1z0597s e17yjk9v2">
                                <div class="css-k3lqzi e150alo82">
                                    <span class="css-ln1csn e150alo81">배송지</span>
                                    <div class="css-82a6rk e150alo80">
                                        <span class="css-3uygi7 e17yjk9v1">기본배송지</span>
                                        <p class="css-36j4vu e17yjk9v0">서울시 금천구 가산동 구디아카데미</p>
                                    </div>
                                </div>
                            </div>

                            <div id="checkout-shipping-details" class="css-1y0xj4c e1pxan881">
                                <div class="css-18oykim e150alo82">
                                    <span class="css-ln1csn e150alo81">상세 정보</span>

                                    <div class="css-82a6rk e150alo80">

                                        <div class="css-1p5vzx4 e14u1xpe0">김구디, 010-1115-1111
                                        </div>
                                        <div class="css-1soh0gv efthce41">
                                            <span class="css-7unc75 efthce40">배송요청메시지</span>
                                            <span class="css-4jyz7e efthce40">메세지가들어감</span>
                                        </div>
                                        <div class="css-iqoq9n e1pxan880">
                                            <button class="css-117jo2j e4nu7ef3" type="button" width="60" height="30" radius="3">
                                                <span class="css-ymwvow e4nu7ef1">수정</span>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- 복붙시도끝 -->
                        
                        
                        <!-- 결제수단 -->
                        <!-- <div class="css-6q17pt edbbr7c2">
                            <h3 class="css-1ddzp0m edbbr7c1">결제 수단</h3>
                        </div>
                        <div class="css-k3lqzi e150alo82">
                            <span class="css-ln1csn e150alo81">결제수단 선택</span>
                            <div class="css-82a6rk e150alo80">
                                <div class="css-gd125q e4nb37r1">
                                    <div>
                                        <div class="css-18dvwsu ef0cmoa0">
                                            <button type="button" class="css-1jdc4sc ehlmjxl0" data-testid="kakao-pay-button" color="#f6e500">
                                                <img class="css-1wbfblw e1ewacwr0" src="#" alt="카카오페이">
                                            </button>
                                        </div>
                                        <div class="css-18dvwsu ef0cmoa0">
                                            <button type="button" class="css-198d5wz ehlmjxl0">신용카드</button>
                                            <button type="button" class="css-1jdc4sc ehlmjxl0">
                                                <span class="css-16nfv3t e106vb1p0">혜택</span>간편 결제
                                            </button>
                                            <button type="button" class="css-1jdc4sc ehlmjxl0">휴대폰</button>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div> -->
                        <!-- 결제수단 끝 -->
                        
                    </div>
                    <div class="css-1rz7w0y epvroj91">

                        <!-- 금액정보 -->
                        <div class="css-9i9om4 epvroj90" style="background-color: #fff;">
                            <div class="css-6hge48 edbbr7c2">
                                <h3 class="css-1ddzp0m edbbr7c1">결제 금액</h3>
                            </div>
                            <div class="css-hdnk73 e12lli9y0">
                                <div class="css-11quaim eahaaoi10">
                                    <div class="css-yct5co eahaaoi9">주문금액</div>
                                    <div>
                                        <span class="css-2pg1ps eahaaoi8">
                                            <span class="css-rfpchb eahaaoi1"></span>55,000
                                        </span>
                                        <span class="css-vu318a eahaaoi6">원</span>
                                    </div>
                                </div>
                                
                                <div class="css-1bj5qaf eahaaoi10">
                                    <div class="css-yct5co eahaaoi9">배송비</div>
                                    <div>
                                        <span class="css-2pg1ps eahaaoi8">
                                            <span class="css-rfpchb eahaaoi1"></span>0
                                        </span>
                                        <span class="css-vu318a eahaaoi6">원</span>
                                    </div>
                                </div>
                                
                                <div class="css-gs4y0w eahaaoi5">
                                    <div class="css-yct5co eahaaoi9">최종결제금액</div>
                                    <div>
                                        <span class="css-2pg1ps eahaaoi8">
                                            <span class="css-rfpchb eahaaoi1"></span>55,000
                                        </span>
                                        <span class="css-vu318a eahaaoi6">원</span>
                                    </div>
                                </div>
                            </div>

                            <!-- 결제버튼 -->
                            <div class="css-1azakc el0c5j41">
                                <button onclick="requestPay()" class="css-1lha8en e4nu7ef3" type="button" width="240" height="56" radius="3">
                                    <span class="css-ymwvow e4nu7ef1">총금액 +원 결제하기</span>
                                </button>
                            </div>

                        </div>

                        <!-- 동의 -->
                        <div class="css-6q17pt edbbr7c2">
                            <h3 class="css-1ddzp0m edbbr7c1">개인정보 수집/제공</h3>
                        </div>

                        <div class="css-1p5x2k5 e1txfng41">

                            <!-- <label class="css-qihf5m e1dcessg1" for="terms-agree">
                                <input id="terms-agree" type="checkbox" class="css-agvwxo e1dcessg0">
                                <img src="#" alt="" class="css-1wfsi82 e31wziv0">결제 진행 필수 전체 동의
                            </label> -->

                            <div class="form-check css-qihf5m" style="margin-bottom: 5px;">
                                <input class="form-check-input" type="checkbox" value="" id="terms-agree">
                                <label class="form-check-label" for="terms-agree">
                                    결제 진행 필수 전체 동의
                                </label>
                            </div>

                            <div class="css-de9hf ewp15qx2" style="font-size: 13px;">
                                <!-- <p class="css-1dospxl ewp15qx1">
                                    <label class="css-10sm099 e1dcessg1" for="terms-agree-personal-info">
                                        <input id="terms-agree-personal-info" type="checkbox" class="css-agvwxo e1dcessg0">
                                        <img src="#" alt="" class="css-1wfsi82 e1rqawiz0">
                                    </label>
                                    <span class="css-1isbd8x ewp15qx0">(필수) 개인정보 수집∙이용 및 처리 동의</span>
                                </p> -->

                                <div class="form-check" style="margin-bottom: 5px;">
                                    <input class="form-check-input" type="checkbox" value="" id="terms-agree-personal-info">
                                    <!-- <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> -->
                                    <label class="form-check-label" for="terms-agree-personal-info">
                                        (필수) 개인정보 수집 및 이용 동의
                                    </label>
                                </div>

                                <div class="form-check" style="margin-bottom: 5px;">
                                    <input class="form-check-input" type="checkbox" value="" id="terms-agree-personal-info-third-party">
                                    <label class="form-check-label" for="terms-agree-personal-info-third-party">
                                        (필수) 개인정보 판매자 제공 동의
                                    </label>
                                </div>
                                
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="terms-agree-payment-agent">
                                    <label class="form-check-label" for="terms-agree-payment-agent">
                                        (필수) 결제대행 서비스 약관 동의
                                    </label>
                                </div>
                            </div>
                        </div>
                        <!-- 동의끝 -->

                        

                    </div>
                </div>

                
                    
                

            </div>
        </div>
    </div>
<!-- 푸터 -->
<c:import url="../template/footer.jsp"></c:import>


</body>

<!-- 제이쿼리, 아임포트 -->
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script src="/resources/js/order/checkout.js"></script>
</html>