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
            <h2 class="css-10owlr e146m4rf1">주문서</h2>
            <div class="css-ixlb9s epvroj94">

                <div class="css-zo1i6f edbbr7c2">
                    <h3 class="css-1ddzp0m edbbr7c1">주문 상품</h3>
                    
                </div>

                <!-- 주문상품목록 -->
                <div class="css-bd9p1l e17a7yib9">
                    <span class="css-1w0uptv e17a7yib8">

                    </span>
                    <span class="css-10nl60h e17a7yib7">
                        <span class="css-1f86gv6 e17a7yib6">상품의 제목을 써라</span>
                    </span>
                    <span class="css-1efb5i1 e17a7yib4">수량+개</span>
                    <span class="css-1j31gob e17a7yib3">
                        <span class="css-jnogx7 e17a7yib0">금액+원</span>
                    </span>
                </div>

                <div class="css-6q17pt edbbr7c2">
                    <h3 class="css-1ddzp0m edbbr7c1">주문자 정보</h3>
                </div>
                <div id="kurly-orderer-info" class="css-shoa2s e1vfdada3">
                    <div class="css-1tq1t75 e150alo82">
                        <span class="css-ln1csn e150alo81">보내는 분</span>
                        <div class="css-82a6rk e150alo80">
                            <div class="css-t6o2y8 e1vfdada2">이름을써라</div>
                        </div>
                    </div>
                    <div class="css-1tq1t75 e150alo82">
                        <span class="css-ln1csn e150alo81">휴대폰</span>
                        <div class="css-82a6rk e150alo80">
                            <div class="css-t6o2y8 e1vfdada2">핸드폰번호를써라</div>
                        </div>
                    </div>
                    <div class="css-1tq1t75 e150alo82">
                        <span class="css-ln1csn e150alo81">이메일</span>
                        <div class="css-82a6rk e150alo80">메일주소를써라
                            <div class="css-1r0yqr6 e1vfdada1">
                                <p class="css-i7dt79 e1vfdada0">이메일을 통해 주문처리과정을 보내드립니다.</p>
                                <p class="css-i7dt79 e1vfdada0">정보 변경은 구디나라 &gt; 개인정보 수정 메뉴에서 가능합니다.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="shipping-container">
                    <div class="css-6q17pt edbbr7c2">
                        <h3 class="css-1ddzp0m edbbr7c1">배송 정보</h3>
                        <div class="css-bjn8wh er4y7r83">
                            <a class="css-orhu8r er4y7r82">배송지 변경 안내
                                <span class="css-gwort8 er4y7r81"></span>
                            </a>
                            <div class="css-xfeirt e1f6vwa32">
                                <div class="css-82a6rk e1f6vwa31">
                                    <span class="css-2s3epn er4y7r80">장바구니, 홈에서</span>
                                    <span class="css-4zleql er4y7r80">배송지를 변경할 수 있어요</span>
                                </div>
                                <a class="css-1nc07wy e1f6vwa30"></a>
                            </div>
                        </div>
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
                                <div class="css-1p5vzx4 e14u1xpe0">김구디, 010-1115-1111</div>
                                <div>
                                    <span class="css-7unc75 efthce40">문 앞</span>
                                    <span class="css-4jyz7e efthce40">공동현관 비밀번호</span>
                                </div>
                                <div class="css-1soh0gv efthce41">
                                    <span class="css-7unc75 efthce40">배송완료 메시지</span>
                                    <span class="css-4jyz7e efthce40">배송 직후</span>
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

                <div>
                </div>

                <div class="css-4c6dm7 epvroj93">
                    <div class="css-134fy6p epvroj92">
                        <div class="css-6q17pt edbbr7c2">
                            <h3 class="css-1ddzp0m edbbr7c1">쿠폰 / 적립금</h3>
                        </div>
                        <div class="css-k3lqzi e150alo82">
                            <span class="css-ln1csn e150alo81">쿠폰 적용</span>
                            <div class="css-82a6rk e150alo80">
                                <div class="css-1uj3loi e1brt3tk0">
                                    <button class="css-1cg046d e1wlhyxd1">사용가능 쿠폰 0장 / 전체 0장
                                        <span class="css-1e56lav e1wlhyxd0">
                                            <span rotate="0" class="css-f2a03j ebkt7i80">
                                            </span>
                                        </span>
                                    </button>
                                </div>
                                <button type="button" class="css-y9957 e1rx731f1"
                                <span class="css-s5xdrg e1rx731f0">쿠폰 사용 문의 (카카오톡) 
                                    <span class="css-1q6xk2g e1563em20"></span>
                                </span>
                            </button>
                        </div>
                    </div>

                    <div class="css-1mtcjcj e150alo82">
                        <span class="css-ln1csn e150alo81">적립금 적용</span>
                        <div class="css-82a6rk e150alo80">
                            <div class="css-zjik7 e1gm2j0y2">
                                <div class="css-1jg3w69 e1uzxhvi6">
                                    <div height="44" class="css-t7kbxx e1uzxhvi3">
                                        <input data-testid="input-box" name="point-usage" disabled="" placeholder="0" type="text" height="44" class="css-n2am0u e1uzxhvi2" value="0">
                                    </div>
                                </div>
                                <button class="css-197i5eo e4nu7ef3" type="button" disabled="" width="100" height="44" radius="3">
                                    <span class="css-ymwvow e4nu7ef1">모두사용</span>
                                </button>
                            </div>
                            <div class="css-5417ai e1gm2j0y1">사용가능 적립금 
                                <strong class="css-1q8axr4 e1gm2j0y0">0</strong>원
                            </div>
                            <div class="css-qubry4 ezr038b1">
                                <p class="css-986r2u ezr038b0">적립금 내역: 마이컬리 &gt; 적립금</p>
                            </div>
                        </div>
                    </div>

                    <div class="css-6q17pt edbbr7c2">
                        <h3 class="css-1ddzp0m edbbr7c1">결제 수단</h3>
                        <label class="css-8minsl e1dcessg1" for="payment-selected">
                            <input data-testid="payment-selected" id="payment-selected" type="checkbox" class="css-agvwxo e1dcessg0" checked="">
                            <img src="#">선택한 결제 수단을 다음에도 사용
                        </label>
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
                                            <span class="css-16nfv3t e106vb1p0">혜택</span>
                                            간편 결제
                                        </button>
                                        <button type="button" class="css-1jdc4sc ehlmjxl0">휴대폰</button>
                                    </div>
                                </div>
                                <div class="css-iqoq9n e1ybwgeo2">
                                    <div class="css-cmnszd e1ybwgeo1">
                                        <div class="css-9pld6l exx8ad34">
                                            <button tabindex="0" aria-expanded="false" aria-haspopup="listbox" class="MuiSelectUnstyled-root css-9vt4ys exx8ad33" type="button">현대</button>
                                        </div>
                                    </div>
                                    <div class="css-cmnszd e1ybwgeo1">
                                        <div class="css-9pld6l exx8ad34">
                                            <button tabindex="0" aria-expanded="false" aria-haspopup="listbox" class="MuiSelectUnstyled-root css-9vt4ys exx8ad33" type="button">일시불</button>
                                        </div>
                                    </div>
                                    <p class="css-1oplg33 e1ybwgeo0">은행계열/체크/기프트/선불/법인/개인사업자 기업카드는 무이자 할부 시 제외</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <ul class="css-1141zsh e4nb37r0">
                        <li>※ 카카오페이, 차이, 토스, 네이버페이, 페이코 결제 시, 결제하신 수단으로만 환불되는 점 양해부탁드립니다.</li><li>※ 고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한 토스 페이먼츠의 구매안전(에스크로) 서비스를 이용하실 수 있습니다.</li>
                    </ul>
                </div>

                <div class="css-1rz7w0y epvroj91">
                    <div class="css-1gxrfiw epvroj90">
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
                            <div class="css-1d81lpa eahaaoi7">
                                <div class="css-yct5co eahaaoi9">상품금액</div>
                                <div>
                                    <span class="css-2pg1ps eahaaoi8">
                                        <span class="css-rfpchb eahaaoi1"></span>55,000
                                    </span>
                                    <span class="css-vu318a eahaaoi6">원</span>
                                </div>
                            </div>
                            <div class="css-1d81lpa eahaaoi7">
                                <div class="css-yct5co eahaaoi9">상품할인금액</div>
                                <div>
                                    <span class="css-2pg1ps eahaaoi8">
                                        <span class="css-rfpchb eahaaoi1"></span>0</span>
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
                                <div class="css-1bj5qaf eahaaoi10">
                                    <div class="css-yct5co eahaaoi9">쿠폰할인</div>
                                    <div class="css-0">
                                        <span class="css-2pg1ps eahaaoi8">
                                            <span class="css-rfpchb eahaaoi1"></span>0</span>
                                            <span class="css-vu318a eahaaoi6">원</span>
                                        </div>
                                    </div>
                                    <div class="css-1bj5qaf eahaaoi10">
                                        <div class="css-yct5co eahaaoi9">적립금사용</div>
                                        <div class="css-37wf0k">
                                            <span class="css-2pg1ps eahaaoi8">
                                                <span class="css-rfpchb eahaaoi1"></span>0</span>
                                                <span class="css-vu318a eahaaoi6">원</span>
                                            </div>
                                        </div>
                                        <div class="css-gs4y0w eahaaoi5">
                                            <div class="css-yct5co eahaaoi9">최종결제금액</div>
                                            <div>
                                                <span class="css-2pg1ps eahaaoi8">
                                                    <span class="css-rfpchb eahaaoi1"></span>55,000</span>
                                                    <span class="css-vu318a eahaaoi6">원</span>
                                                </div>
                                            </div>
                                            <div class="css-i93a3v eahaaoi3">
                                                <span class="css-5lws00 eahaaoi2">적립</span>구매 시
                                                <div class="css-1xkempz eahaaoi4">56원(0.1%)</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="css-6q17pt edbbr7c2">
                                <h3 class="css-1ddzp0m edbbr7c1">개인정보 수집/제공</h3>
                            </div>
                            <div class="css-1p5x2k5 e1txfng41">
                                <label class="css-qihf5m e1dcessg1" for="terms-agree">
                                    <input id="terms-agree" type="checkbox" class="css-agvwxo e1dcessg0">
                                    <img src="#" alt="" class="css-1wfsi82 e31wziv0">결제 진행 필수 전체 동의
                                </label>
                                <div class="css-de9hf ewp15qx2">
                                    <p class="css-1dospxl ewp15qx1">
                                        <label class="css-10sm099 e1dcessg1" for="terms-agree-personal-info">
                                            <input id="terms-agree-personal-info" type="checkbox" class="css-agvwxo e1dcessg0">
                                            <img src="#" alt="" class="css-1wfsi82 e1rqawiz0">
                                        </label>
                                        <span class="css-1isbd8x ewp15qx0">(필수) 개인정보 수집∙이용 및 처리 동의</span>
                                    </p>
                                    <p class="css-1dospxl ewp15qx1">
                                        <label class="css-10sm099 e1dcessg1" for="terms-agree-personal-info-third-party">
                                            <input id="terms-agree-personal-info-third-party" type="checkbox" class="css-agvwxo e1dcessg0">
                                            <img src="#" alt="" class="css-1wfsi82 e1rqawiz0">
                                        </label>
                                        <span class="css-1isbd8x ewp15qx0">(필수) 개인정보 제3자 제공 동의</span>
                                    </p>
                                    <p class="css-1dospxl ewp15qx1">
                                        <label class="css-10sm099 e1dcessg1" for="terms-agree-payment-agent">
                                            <input id="terms-agree-payment-agent" type="checkbox" class="css-agvwxo e1dcessg0">
                                            <img src="#" alt="" class="css-1wfsi82 e1rqawiz0">
                                        </label>
                                        <span class="css-1isbd8x ewp15qx0">(필수) 결제대행 서비스 약관 동의</span>
                                    </p>
                                    <p class="css-1dospxl ewp15qx1">
                                        <label class="css-10sm099 e1dcessg1" for="terms-agree-electronic-payment-agent">
                                            <input id="terms-agree-electronic-payment-agent" type="checkbox" class="css-agvwxo e1dcessg0">
                                            <img src="#" alt="" class="css-1wfsi82 e1rqawiz0">
                                        </label>
                                        <span class="css-1isbd8x ewp15qx0">(필수) 전자지급 결제대행 서비스 이용약관 동의</span>
                                    </p>
                                </div>
                            </div>
                            
                            <div class="css-1azakc el0c5j41">
                                <button class="css-1lha8en e4nu7ef3" type="button" width="240" height="56" radius="3">
                                    <span class="css-ymwvow e4nu7ef1">55,000원 결제하기</span>
                                </button>
                                <p class="css-ias04p el0c5j40">[주문완료] 상태일 경우에만 주문 취소 가능합니다.<br>미성년자가 결제 시 법정대리인이 그 거래를 취소할 수 있습니다.<br>상품 미배송 시, 결제수단으로 환불됩니다.<br>카카오페이, 토스, 네이버페이 결제 시, 결제하신 수단으로만 환불됩니다.<br>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
<!-- 푸터 -->
<c:import url="../template/footer.jsp"></c:import>

</body>
</html>