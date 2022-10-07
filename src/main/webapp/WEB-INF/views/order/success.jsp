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
            <div class="css-ixlb9s epvroj94" style="display: flex;">

                <div id="boxbox" 
                style="margin: auto; 
                border: 4px solid #DFDFF2;
                width: 500px;
                height: 180px;">
                    <div id="textt" style="margin: 45px 0 60px 45px;
                    font-size: 20px;">

                        <p>고객님의 주문이 정상적으로 완료되었습니다.</p>
                        <p style="margin-top: 20px;">주문번호 : ${ordersDTO.merchant_uid}</p>
                    </div>

                

                </div>

            </div>
        </div>
    </div>
<!-- 푸터 -->
<c:import url="../template/footer.jsp"></c:import>


</body>


</html>