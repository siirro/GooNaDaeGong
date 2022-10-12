<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--MYPAGE CSS-->
    <style>
        ol, ul {
            padding-left: 0rem !important;
        }
    </style>
    <link rel="stylesheet" href="/resources/css/member/mypage.css">
</head>
<body>
	<div class="wrap">
	<c:import url="../template/header.jsp"></c:import>
    <section>
        <div class="css-luwwab eug5r8l4">
            <div class="css-833hqy ecbxmj4">
                <div class="css-1v4whg ecbxmj3">마이페이지</div>
                <ul class="css-1x9bshx ecbxmj2">
                    <li class="css-0 ecbxmj1">
                        <a class="active css-nk8664 ecbxmj0" href="./myOrder">주문 내역<span class="css-e41glx e1x0rfoo0"></span></a>
                    </li>
                    <li class="css-0 ecbxmj1">
                        <a class=" css-nk8664 ecbxmj0" href="./myLike">찜한 상품<span class="css-e41glx e1x0rfoo0"></span></a>
                    </li>
                    <li class="css-0 ecbxmj1">
                        <a class=" css-nk8664 ecbxmj0" href="./myReview">상품 후기<span class="css-e41glx e1x0rfoo0"></span></a>
                    </li>
                    <li class="css-0 ecbxmj1">
                        <a class=" css-nk8664 ecbxmj0" href="./myQNA">상품 문의<span class="css-e41glx e1x0rfoo0"></span></a>
                    </li>
                    <li class="css-0 ecbxmj1">
                        <a class=" css-nk8664 ecbxmj0" href="./myUpdate">개인 정보 수정<span class="css-e41glx e1x0rfoo0"></span></a>
                    </li>
                </ul>
                <a href="../qna/inquiry" class="css-17gln34 e19l01ug3">
                    <div class="css-1niy3no e19l01ug2">
                        <span class="css-1sdidca e19l01ug1">도움이 필요하신가요 ?</span>
                        <span class="css-rnnx2x e19l01ug0">1:1 문의하기</span>
                    </div>
                    <span class="css-1wkaywz e1x0rfoo0"></span>
                </a>
            </div>
            <div class="css-171zbec eug5r8l3">
                <div class="css-j0lifa ed9qr673">
                    <div class="css-fhxb3m ed9qr672">
                        <h2 class="css-xr9nhh ed9qr671">주문 내역 상세</h2>
                        <input type="hidden" name="user_id" value="${detail.user_id}">
                    </div>
                </div>
                <div class="css-1bsokvi e1jm6dy15">
                    <h3 class="css-yi2ox5 e1jm6dy14">주문번호 ${detail.merchant_uid}</h3>
                </div>
                <c:forEach items="${detail.gnItemDTOs}" var="item"  varStatus="i">
                <div class="css-mrxscg ecmuszp10">
                    <img src="../resources/upload/gnItem/${detail.gnItemFileDTOs[0].fileName}" alt="" class="css-1ixzt3f ecmuszp9">
                    <div class="css-1t5xcqm ecmuszp8">
                        <a href="/goods/5095223" class="css-15vlnp ecmuszp7">상품이름${item.item_name}</a>
                        <div class="css-s5xdrg ecmuszp5">
                            <span data-testid="goods-price" class="css-1ngn8p4 ecmuszp4">가격
                            <fmt:formatNumber value="${item.item_price}" pattern="###,###"/>원
                            
                             </span>
								<span class="css-454d5e e149z641"></span>
                            <span class="css-1ekh7sh ecmuszp2">수량 ${detail.goodsOrderDTOs[i.index].go_amount}개</span>
                        </div>
                    </div>
                    <div class="css-ojh52s ecmuszp0">
                        <span class="css-l71t3l ecmuszp1">${detail.ord_status}</span>
                    </div>
                </div>
				</c:forEach>

                <span class="css-15leche e1egl70z0">주문취소는 [주문완료] 상태일 경우에만 가능합니다.</span>

                <div class="css-1bsokvi e1jm6dy15">
                    <h3 class="css-yi2ox5 e1jm6dy14">결제정보</h3>
                </div>
                <ul class="css-hig5bx e1sh1vdm2">
                    <li class="css-hvdq8h e1ysbs753">
                        <span class="css-11h8hn9 e1ysbs752">상품금액</span>
                        <span class="css-l5tyq9 e1ysbs751">${detail.ord_total1}
                            <span class="css-1u0jk3a e1ysbs750">원</span>
                        </span>
                    </li>
                    <li class="css-hvdq8h e1ysbs753">
                        <span class="css-11h8hn9 e1ysbs752">배송비</span>
                        <span class="css-l5tyq9 e1ysbs751">${detail.ord_delfree}
                            <span class="css-1u0jk3a e1ysbs750">원</span>
                        </span>
                    </li>
                    <li class="css-hvdq8h e1ysbs753">
                        <span class="css-11h8hn9 e1ysbs752">결제금액</span>
                        <span class="css-l5tyq9 e1ysbs751">${detail.ord_total2}
                            <span class="css-1u0jk3a e1ysbs750">원</span>
                        </span>
                    </li>
                    <li class="css-hvdq8h e1ysbs753">
                        <span class="css-11h8hn9 e1ysbs752">결제방법</span>
                        <span class="css-l5tyq9 e1sh1vdm1"></span>
                    </li>
                </ul>
                <div class="css-1bsokvi e1jm6dy15">
                    <h3 class="css-yi2ox5 e1jm6dy14">주문정보</h3>
                </div>
                <ul class="css-hig5bx eu7fh4o3">
                    <li class="css-8homh5 eu7fh4o2">
                        <span class="css-9i2eur eu7fh4o1">주문번호</span>
                        <span class="css-thgwm0 eu7fh4o0">${detail.merchant_uid}</span>
                    </li>
                    <li class="css-8homh5 eu7fh4o2">
                        <span class="css-9i2eur eu7fh4o1">결제일자</span>
                        <span class="css-thgwm0 eu7fh4o0">
                            ${detail.payDTO.pay_date}
                        
                        </span>
                    </li>
                </ul>
                <div class="css-1bsokvi e1jm6dy15">
                    <h3 class="css-yi2ox5 e1jm6dy14">배송정보</h3>
                </div><ul class="css-hig5bx eu7fh4o3">
                    <li class="css-8homh5 eu7fh4o2">
                        <span class="css-9i2eur eu7fh4o1">받는분</span>
                        <span class="css-thgwm0 eu7fh4o0">${detail.ord_name}</span>
                    </li>
                    <li class="css-8homh5 eu7fh4o2">
                        <span class="css-9i2eur eu7fh4o1">핸드폰</span>
                        <span class="css-thgwm0 eu7fh4o0">${detail.ord_phone}</span>
                    </li>
                    <li class="css-8homh5 eu7fh4o2">
                        <span class="css-9i2eur eu7fh4o1">주소</span>
                        <span class="css-thgwm0 eu7fh4o0">(${detail.ord_post}) ${detail.ord_addr} ${detail.ord_addr2}</span>
                    </li>
                    <li class="css-8homh5 eu7fh4o2">
                        <span class="css-9i2eur eu7fh4o1">배송 전 요청사항</span>
                        <span class="css-thgwm0 eu7fh4o0">${detail.ord_memo}</span>
                    </li>
                </ul>
            </div>

          </div>
    </section>
	<c:import url="../template/footer.jsp"></c:import>    
	</div> <!-- wrap end -->
    
</body>
</html>