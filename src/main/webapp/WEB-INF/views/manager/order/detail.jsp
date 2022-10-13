<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>



<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>구디나라 관리자센터</title>

    <!-- Custom fonts for this template-->
    <!-- <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"> -->
    <link href="/resources/vendor/managerboot/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <!-- <link href="/css/sb-admin-2.min.css" rel="stylesheet"> -->
    <link href="/resources/css/manager/sb-admin-2.css" rel="stylesheet">
    <style>
        table {
            border: none;
        }

        .rprpid:hover {
            cursor: pointer;
            color: #6667AB;
        }

    </style>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- 사이드바 임포트 -->
        <c:import url="../template/sidebar.jsp"></c:import>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- 탑바 임포트 -->
                <c:import url="../template/topbar.jsp"></c:import>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <!-- <h1 class="h3 mb-4 text-gray-800">1대1 문의 리스트</h1> -->

                    <!-- 여기가 진짜본문 -->
                    <div class="card shadow mb-4 mt-4">
                        <div class="card-header py-3" style="display: flex">
                            <h6 class="font-weight" style="color: #6667AB; margin: auto 0px;">주문 상세</h6>

                        </div>
                        <div class="card-body" style="zoom: 0.8;">
                            <!-- 카드 본문  -->

                            <div style="margin-bottom: 10px; background: lavender;">
                                <form action="./orderUpdateStatus" method="get" style="display: flex;">
                                    <div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="ord_status" type="checkbox" id="inlineCheckbox1" value="주문취소">
                                        <label class="form-check-label" for="inlineCheckbox1">상품준비중</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="ord_status" type="checkbox" id="inlineCheckbox2" value="배송중">
                                        <label class="form-check-label" for="inlineCheckbox2">배송중</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="ord_status" type="checkbox" id="inlineCheckbox2" value="배송완료">
                                        <label class="form-check-label" for="inlineCheckbox2">배송완료</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="ord_status" type="checkbox" id="inlineCheckbox2" value="취소신청">
                                        <label class="form-check-label" for="inlineCheckbox2">취소신청</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="ord_status" type="checkbox" id="inlineCheckbox2" value="취소완료">
                                        <label class="form-check-label" for="inlineCheckbox2">취소완료</label>
                                    </div>
                                    <br>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="ord_status" type="checkbox" id="inlineCheckbox2" value="교환신청">
                                        <label class="form-check-label" for="inlineCheckbox2">교환신청</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="ord_status" type="checkbox" id="inlineCheckbox2" value="교환진행">
                                        <label class="form-check-label" for="inlineCheckbox2">교환진행</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="ord_status" type="checkbox" id="inlineCheckbox2" value="교환완료">
                                        <label class="form-check-label" for="inlineCheckbox2">교환완료</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="ord_status" type="checkbox" id="inlineCheckbox2" value="반품신청">
                                        <label class="form-check-label" for="inlineCheckbox2">반품신청</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="ord_status" type="checkbox" id="inlineCheckbox2" value="반품진행">
                                        <label class="form-check-label" for="inlineCheckbox2">반품진행</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" name="ord_status" type="checkbox" id="inlineCheckbox2" value="반품완료">
                                        <label class="form-check-label" for="inlineCheckbox2">반품완료</label>
                                    </div>
                                    </div>

                                    <!-- <div style="width: 35%;">
                                    
                                    </div> -->
                                    <div style="margin: auto 0;">
                                        <button type="submit" data-qna-num="${ordersDTO.merchant_uid}" id="statusChange" 
                                    class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
                                    style ="background-color: rgb(132, 84, 198); border-color: rgb(132, 84, 198); ">
                                        <i class="fas fa-check fa-sm text-white-50"></i>상태변경
                                    </div>
                                            
                                    <input type="hidden" name="merchant_uid" value="${param.merchant_uid}">
                                  
                                </form>
                            </div>

                            

                            <!-- 주문상세 -->
                            <div id="qnaList">
                                <section class="col-lg-12 text-center" style="padding: 0px;">
                                    <table class="table table-hover" width="100%">
                                        <thead class="table-primary" style="font-size: 14px;">
                                            <tr>
                                                <th class="col-2">주문일자</th>
                                                <th class="col-2">주문번호</th>
                                                <th class="col-2">주문자ID</th>
                                                <th class="col-1">주문총액</th>
                                                <th class="col-1">배송비</th>
                                                <th class="col-1">총결제액</th>
                                                <th class="col-1">결제상태</th>
                                                <th class="col-1">주문상태</th>
                                            </tr>
                                        </thead>
                                        <tbody style="font-size: 12px;">
                                            <tr>
                                                <td><fmt:formatDate value="${ordersDTO.ord_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                                <td>${ordersDTO.merchant_uid}</td>
                                                <td>${ordersDTO.user_id}</td>
                                                <td><fmt:formatNumber value="${ordersDTO.ord_total1}" pattern="#,###" />원</td>
                                                <td><fmt:formatNumber value="${ordersDTO.ord_delfree}" pattern="#,###" />원</td>
                                                <td><fmt:formatNumber value="${ordersDTO.ord_total2}" pattern="#,###" />원</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${ordersDTO.ord_payment eq 1}">
                                                            결제대기
                                                        </c:when>
                                                        <c:when test="${ordersDTO.ord_payment eq 2}">
                                                            결제완료
                                                        </c:when>
                                                        <c:when test="${ordersDTO.ord_payment eq 3}">
                                                            결제취소
                                                        </c:when>
                                                        <c:otherwise>
                                                            오류
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                                <td>${ordersDTO.ord_status}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </section>
                            </div>
                            <!-- 주문상세 -->

                            <!-- 배송상세 -->
                            <!-- <div id="qnaList">
                                <section class="col-lg-12 text-center" style="padding: 0px;">
                                    <table class="table table-hover" width="100%">
                                        <thead class="table-primary" style="font-size: 14px;">
                                            <tr>
                                                <th class="col-2">수령자이름</th>
                                                <th class="col-2">수령자번호</th>
                                                <th class="col-2">우편번호</th>
                                                <th class="col-1">주소</th>
                                                <th class="col-1">주소2</th>
                                                <th class="col-1">배송메모</th>
                                                <th class="col-1">결제상태</th>
                                                <th class="col-1">주문상태</th>
                                            </tr>
                                        </thead>
                                        <tbody style="font-size: 12px;">
                                            <tr>
                                                <td><fmt:formatDate value="${ordersDTO.ord_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                                <td>${ordersDTO.merchant_uid}</td>
                                                <td>${ordersDTO.user_id}</td>
                                                <td><fmt:formatNumber value="${ordersDTO.ord_total1}" pattern="#,###" />원</td>
                                                <td><fmt:formatNumber value="${ordersDTO.ord_delfree}" pattern="#,###" />원</td>
                                                <td><fmt:formatNumber value="${ordersDTO.ord_total2}" pattern="#,###" />원</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${ordersDTO.ord_payment eq 1}">
                                                            결제대기
                                                        </c:when>
                                                        <c:when test="${ordersDTO.ord_payment eq 2}">
                                                            결제완료
                                                        </c:when>
                                                        <c:when test="${ordersDTO.ord_payment eq 3}">
                                                            결제취소
                                                        </c:when>
                                                        <c:otherwise>
                                                            오류
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                                <td>${ordersDTO.ord_status}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </section>
                            </div> -->
                            <!-- 배송상세 -->

                            <!-- 상품상세 -->
                            <div id="qnaList">
                                <section class="col-lg-12 text-center" style="padding: 0px;">
                                    <table class="table table-hover" width="100%">
                                        <thead class="table-primary" style="font-size: 14px;">
                                            <tr style="background-color: lavenderblush;">
                                                <th class="col-2">상품이미지</th>
                                                <th class="col-4">상품이름</th>
                                                <th class="col-2">판매가</th>
                                                <th class="col-2">구매수량</th>
                                                <th class="col-2">소계</th>
                                            </tr>
                                        </thead>
                                        <tbody style="font-size: 12px;">
                                            <c:forEach items="${ordersDTO.goodsOrdersDTOs}" var="nl">
                                                <tr>
                                                    <td>
                                                        <img src="../../resources/upload/item/${nl.itemDTO.itemFileDTOs[0].fileName}" alt="" width="50px" style="cursor: pointer;">

                                                    </td>
                                                    <td>${nl.itemDTO.item_title}</td>
                                                    <td><fmt:formatNumber value="${nl.itemDTO.item_price}" pattern="#,###" />원</td>
                                                    <td>${nl.go_amount}개</td>
                                                    <td><fmt:formatNumber value="${nl.itemDTO.item_price*nl.go_amount}" pattern="#,###" />원</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </section>
                            </div>
                            <!-- 상품상세 -->

                            

                        </div>
                        
                    </div>

                <!-- 페이지 컨텐츠 끝 -->
                </div>
                    <!-- 본문 끝 -->

            </div>
            <!-- End of Main Content -->

            <!-- footer 임포트 -->
            <c:import url="../template/footer.jsp"></c:import>


        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>



    <!-- Bootstrap core JavaScript-->
    <!-- <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->
    <script src="/resources/vendor/managerboot/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/managerboot/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/managerboot/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/manager/sb-admin-2.min.js"></script>

    <script src="/resources/js/manager/reportdetail.js"></script>

</body>

</html>