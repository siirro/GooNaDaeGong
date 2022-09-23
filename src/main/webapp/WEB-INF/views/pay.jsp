<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pay</title>
</head>
<body>
    <button onclick="requestPay()">결제하기</button>
</body>
<!-- 제이쿼리, 아임포트 -->
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.2.0.js"></script>

<script>
    var IMP = window.IMP; // 생략 가능
    IMP.init("imp26813326"); // 예: imp00000000

    function requestPay() {
      // IMP.request_pay(param, callback) 결제창 호출
      IMP.request_pay({ // param
          pg: "html5_inicis",
          pay_method: "card",
          merchant_uid: "ORD20180131-0000012",
          name: "대기공주",
          amount: 100,
          buyer_email: "gildong@gmail.com",
          buyer_name: "김구디",
          buyer_tel: "010-4242-4242",
          buyer_addr: "서울특별시 강남구 신사동",
          buyer_postcode: "01181"
    }, function (rsp) { // callback
        if (rsp.success) {
            console.log("성공완");
              // 결제 성공 시 로직,

            // jQuery로 HTTP 요청
            jQuery.ajax({
            url: "https://www.gndg.com/payments/complete", 
            method: "POST",
            headers: { "Content-Type": "application/json" },
            data: {
                imp_uid: rsp.imp_uid,
                merchant_uid: rsp.merchant_uid
            }
        }).done(function (data) {
          // 가맹점 서버 결제 API 성공시 로직
        })
              
        } else {
            console.log("실패완");
              // 결제 실패 시 로직,
            alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);  
              
          }
      });
    }
</script>
</html>