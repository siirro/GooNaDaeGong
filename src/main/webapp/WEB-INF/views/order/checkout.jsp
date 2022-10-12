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
<body onload="allPrice()">
<div class="wrap">
    <!-- 헤더 임포트 -->
    <c:import url="../template/header.jsp"></c:import>


    <div class="css-1ykiyus e146m4rf2">
        <div class="css-1uom1od e146m4rf0" style="zoom: 0.8;">
            <h2 class="css-10owlr e146m4rf1">주문</h2>
            
            <!-- 본문 전체박스 -->
            <div class="css-ixlb9s epvroj94">


                <!-- 본문 구성품들 시작 -->

                

                <!-- 결제폼 -->
                <!-- <form name="" id="checkout" method="post" action="./pay"> -->
                    <div class="css-4c6dm7 epvroj93">
                        <div class="css-134fy6p epvroj92">

                            
                            <!-- 주문상품제목 -->
                            <div class="css-zo1i6f edbbr7c2">
                                <h3 class="css-1ddzp0m edbbr7c1">주문 상품</h3>
                            </div>

                            <!-- 주문상품목록 -->
                            <!-- <씨:포이치 items="${catlist}" var="l"> -->
                            <c:forEach items="${cart}" var="l">
                                <div class="css-bd9p1l e17a7yib9">

                                    <span class="css-1w0uptv e17a7yib8">
                                        <img src="../../resources/upload/item/${l.itemDTO.itemFileDTOs[0].fileName}" alt="" width="1000px" style="cursor: pointer;">
                                    </span>

                                    <!-- 아이폰 14 지우고 ${l.itemDTO.item_title} -->
                                    <span class="css-10nl60h e17a7yib7">
                                        <span class="css-1f86gv6 e17a7yib6">${l.itemDTO.item_title}</span>
                                    </span>
                                    <input type="hidden" name="item_title" class="item_title" value="${l.itemDTO.item_title}">

                                    <!-- 1 지우고 ${l.item_count} -->
                                    <span class="css-1efb5i1 e17a7yib4">${l.item_count}개</span>
                                    <input type="hidden" name="item_count" class="item_count" value="${l.item_count}">

                                    <!-- 100 지우고 ${l.itemDTO.item_price} -->
                                    <span class="css-1j31gob e17a7yib3">
                                        <span class="css-jnogx7 e17a7yib0">${l.itemDTO.item_price}원</span>
                                    </span>
                                    <input type="hidden" name="item_price" class="item_price" value="${l.itemDTO.item_price}">
                                    <input type="hidden" name="item_num" class="item_num" value="${l.item_num}">

                                </div>


                            <!-- </씨:포이치> -->
                            </c:forEach>

                            <!-- 주문자 정보 -->
                            <div class="css-6q17pt edbbr7c2">
                                <h3 class="css-1ddzp0m edbbr7c1">주문자 정보</h3>
                            </div>

                            <input type="hidden" name="user_addr" id="user_addr" value="${member.user_addr}">
                            <input type="hidden" name="user_addr2" id="user_addr2" value="${member.user_addr2}">
                            <input type="hidden" name="user_post" id="user_post" value="${member.user_post}">


                            <div id="kurly-orderer-info" class="css-shoa2s e1vfdada3">
                                <div class="css-1tq1t75 e150alo82">
                                    <span class="css-ln1csn e150alo81">보내는 분</span>
                                    <div class="css-82a6rk e150alo80">
                                        <div class="css-t6o2y8 e1vfdada2">${member.user_name}</div>
                                        <input type="hidden" name="user_name" id="user_name" value="${member.user_name}">
                                        <input type="hidden" name="user_id" id="user_id" value="${member.user_id}">
                                    </div>
                                </div>

                                <div class="css-1tq1t75 e150alo82">
                                    <span class="css-ln1csn e150alo81">휴대폰</span>
                                    <div class="css-82a6rk e150alo80">
                                        <div class="css-t6o2y8 e1vfdada2">${member.user_phone}</div>
                                        <input type="hidden" name="user_phone" id="user_phone" value="${member.user_phone}">
                                    </div>
                                </div>

                                <div class="css-1tq1t75 e150alo82">
                                    <span class="css-ln1csn e150alo81">이메일</span>
                                    <div class="css-82a6rk e150alo80">${member.user_email}</div>
                                    <input type="hidden" name="user_email" id="user_email" value="${member.user_email}">

                                </div>
                            </div>

                            <div id="shipping-container">
                                <div class="css-6q17pt edbbr7c2">
                                    <h3 class="css-1ddzp0m edbbr7c1">배송 정보</h3>
                                    <label class="css-8minsl e1dcessg1" for="payment-selected">

                                        <div class="form-check" style="margin-bottom: 5px;">
                                            <input class="form-check-input" type="checkbox" value="" id="newaddr" onclick="newaddr()">
                                            <label class="form-check-label" for="newaddr">
                                                배송지 새로 입력하기 
                                                
                                            </label>
                                        </div>

                                        
                                    </label>


                                </div>

                                <div class="css-1z0597s e17yjk9v2">
                                    <div class="css-k3lqzi e150alo82">
                                        <span class="css-ln1csn e150alo81">받으실 분</span>
                                        <div class="css-82a6rk e150alo80">
                                            <input data-testid="input-box" id="ord_name" name="odr_name" placeholder="이름을 입력해 주세요" type="text" required="" height="44" class="css-n2am0u e1uzxhvi2" value="${member.user_name}">
                                        </div>
                                    </div>
                                </div>

                                <div class="css-1z0597s e17yjk9v2">
                                    <div class="css-k3lqzi e150alo82">
                                        <span class="css-ln1csn e150alo81">휴대폰</span>
                                        <div class="css-82a6rk e150alo80">
                                            <input data-testid="input-box" id="ord_phone" name="odr_phone" placeholder="번호를 입력해 주세요" type="tel" required="" height="44" class="css-n2am0u e1uzxhvi2" value="${member.user_phone}">
                                        </div>
                                    </div>
                                </div>


                                <div class="css-1z0597s e17yjk9v2">
                                    <div class="css-18oykim e150alo82">
                                        <span class="css-ln1csn e150alo81">상세 정보</span>
                                        <div class="css-82a6rk e150alo80">
                                            
                                            <div>
                                                <input data-testid="input-box" id="ord_post" name="ord_post" placeholder="우편번호 입력" type="text" required="" class="css-n2am0u e1uzxhvi2" value="${member.user_post}">

                                            </div>
                                            <div class="css-1soh0gv efthce41">
                                                <input data-testid="input-box" id="ord_addr" style="width: 70%;" name="ord_addr" placeholder="주소검색 버튼을 눌러주세요" type="text" required="" class="css-n2am0u e1uzxhvi2" value="${member.user_addr}">

                                            </div>
                                            <div class="css-1soh0gv efthce41">
                                                <button class="css-1schgvv e4nu7ef3" type="button" height="44" radius="4" onclick="openDaumPostcode()">
                                                    <span class="css-ymwvow e4nu7ef1">
                                                    <img src="https://res.kurly.com/pc/service/cart/2007/ico_search.svg" alt="" class="css-1m3kac1 e4nu7ef0">주소 검색</span>
                                                </button>
                                            </div>

                                            <div class="css-1soh0gv efthce41">
                                                <input data-testid="input-box" id="ord_addr2" style="width: 70%;" name="ord_addr2" placeholder="상세주소를 입력해 주세요" type="text" required="" class="css-n2am0u e1uzxhvi2" value="${member.user_addr2}">
                                            </div>       

                                            <div class="css-iqoq9n e1pxan880">
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="css-1z0597s e17yjk9v2">
                                    <div class="css-k3lqzi e150alo82">
                                        <span class="css-ln1csn e150alo81">배송 요청</span>
                                        <div class="css-82a6rk e150alo80">
                                            <input data-testid="input-box" style="width: 70%;" id="ord_memo" name="ord_memo" placeholder="메세지를 입력해 주세요" type="tel" required="" height="44" class="css-n2am0u e1uzxhvi2" value="">
                                        </div>
                                    </div>
                                </div>

                            </div>
                            
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
                                                <span class="css-rfpchb eahaaoi1"></span>
                                                <span id="total1"></span>
                                                <input type="hidden" name="ord_total1" id="ord_total1" value="">
                                                <!-- value는 ${cart}에서 받아오거나 밑에 메서드로계산 -->
                                            </span>
                                            <span class="css-vu318a eahaaoi6">원</span>
                                        </div>
                                    </div>
                                    
                                    <div class="css-1bj5qaf eahaaoi10">
                                        <div class="css-yct5co eahaaoi9">배송비</div>
                                        <div>
                                            <span class="css-2pg1ps eahaaoi8">
                                                <span class="css-rfpchb eahaaoi1"></span>
                                                <span id="delfree"></span>
                                                <input type="hidden" name="ord_delfree" id="ord_delfree" value="">
                                            </span>
                                            <span class="css-vu318a eahaaoi6">원</span>
                                        </div>
                                    </div>
                                    
                                    <div class="css-gs4y0w eahaaoi5">
                                        <div class="css-yct5co eahaaoi9">최종결제금액</div>
                                        <div>
                                            <span class="css-2pg1ps eahaaoi8">
                                                <span class="css-rfpchb eahaaoi1"></span>
                                                <span id="total2"></span>
                                                <input type="hidden" name="ord_total2" id="ord_total2" value="">
                                            </span>
                                            <span class="css-vu318a eahaaoi6">원</span>
                                        </div>
                                    </div>
                                </div>

                                <!-- 결제버튼 -->
                                <div class="css-1azakc el0c5j41">
                                    <button onclick="gogogogo()" class="css-1lha8en e4nu7ef3" type="button" width="240" height="56" radius="3">
                                        <span class="css-ymwvow e4nu7ef1">총금액 
                                            <span id="total22"></span>
                                            원 결제하기</span>
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
                                        결제 진행 필수 <strong>전체 동의</strong>
                                    </label>
                                </div>

                                <div class="css-de9hf ewp15qx2" style="font-size: 13px;">
                                    

                                    <div class="form-check" style="margin-bottom: 5px;">
                                        <input class="form-check-input normal" type="checkbox" value="" id="terms-agree-personal-info">
                                        <!-- <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked> -->
                                        <label class="form-check-label" for="terms-agree-personal-info">
                                            (필수) 개인정보 수집 및 이용 동의
                                            <!-- <span class="css-gwort8 er4y7r81"></span> -->
                                            
                                        </label>
                                        <span onclick="checkcheck1()">(보기)</span>
                                    </div>

                                    <div class="form-check" style="margin-bottom: 5px;">
                                        <input class="form-check-input normal" type="checkbox" value="" id="terms-agree-personal-info-third-party">
                                        <label class="form-check-label" for="terms-agree-personal-info-third-party">
                                            (필수) 개인정보 판매자 제공 동의 
                                            
                                        </label>
                                        <span onclick="checkcheck2()">(보기)</span>
                                        

                                        

                                    </div>
                                    
                                    <div class="form-check">
                                        <input class="form-check-input normal" type="checkbox" value="" id="terms-agree-payment-agent">
                                        <label class="form-check-label" for="terms-agree-payment-agent">
                                            (필수) 결제대행 서비스 약관 동의 
                                            
                                        </label>
                                        <span onclick="checkcheck3()">(보기)</span>
                                    </div>
                                </div>
                            </div>
                            <!-- 동의끝 -->

                            

                        </div>



                    <!-- </form> -->
                </div>

                
                    
                

            </div>
        </div>
    </div>
<!-- 푸터 -->
<c:import url="../template/footer.jsp"></c:import>


</body>


<script>

    


    //=======우편번호, 주소 Daum API
	function openDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
				document.getElementById('user_post').value = data.zonecode;
				document.getElementById('user_addr').value = data.address;
			}
		}).open();
	}
    //========우편번호, 주소 Daum API


    //===========동의 스크립트
    const normal = document.getElementsByClassName("normal");

    document.getElementById("terms-agree").addEventListener("change",function(){
        let allcheck = document.getElementById("terms-agree").checked
            for(let i=0;i<normal.length;i++){
                normal[i].checked = allcheck;
            }
    });

    for(let i=0;i<normal.length;i++) {
        normal[i].addEventListener("change",function(){
            if(normal[0].checked&&normal[1].checked&&normal[2].checked) {
                document.getElementById("terms-agree").checked = true;
            } else {
                document.getElementById("terms-agree").checked = false;
            }
        });
    };


    //===========동의 스크립트


    function gogogogo() {
        if(document.getElementById("terms-agree").checked) {
            requestPay();
        } else {
            alert("필수 약관 동의에 체크해주세요.")
        }
    };

    
    //===========새주소입력
    function newaddr() {
        document.getElementById("ord_name").value="";
        document.getElementById("ord_phone").value="";
        document.getElementById("ord_post").value="";
        document.getElementById("ord_addr").value="";
        document.getElementById("ord_addr2").value="";
    };
    //===========새주소입력

    
    function allPrice() {
        let ord_total1 = 0;

        const item_price = document.getElementsByClassName("item_price");
        const item_count = document.getElementsByClassName("item_count");

        for(let i=0;i<item_price.length;i++){
            ord_total1 += item_price[i].value * item_count[i].value;
        }

        console.log(ord_total1);

        

         // 배송비 잠시만 1원으로
        let ord_delfree = 0;
        if(ord_total1<30000) {
            ord_delfree = 1;
        } else {
            ord_delfree = 0;
        }

        // 결제총금액
        let ord_total2 = ord_total1+ord_delfree;


        document.getElementById("total1").innerHTML = ord_total1;
        document.getElementById("delfree").innerHTML = ord_delfree;
        document.getElementById("total2").innerHTML = ord_total2;
        document.getElementById("total22").innerHTML = ord_total2;

        document.getElementById("ord_total1").value = ord_total1;
        document.getElementById("ord_delfree").value = ord_delfree;
        document.getElementById("ord_total2").value = ord_total2;
    }
   
        function checkcheck1() {
            let check1 = confirm("개인정보를 수집");
            if(check1==true){
                document.getElementById("terms-agree-personal-info").checked = true;
            } else {
                document.getElementById("terms-agree-personal-info").checked = false;
            }
        }

        function checkcheck2() {
            let check2 = confirm("개인정보를 판매자에게 제공");
            
            if(check2==true){
                document.getElementById("terms-agree-personal-info-third-party").checked = true;
            } else {
                document.getElementById("terms-agree-personal-info-third-party").checked = false;
            }
        }

        function checkcheck3() {
            let check3 = confirm("결제대행은 이런서비스고 위험하다");
            
            if(check3==true){
                document.getElementById("terms-agree-payment-agent").checked = true;
            } else {
                document.getElementById("terms-agree-payment-agent").checked = false;
            }
        }
   

    

    
</script>

<!-- 제이쿼리, 아임포트 -->
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<!-- 주소 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script src="/resources/js/order/checkout.js"></script>

</html>