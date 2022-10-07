<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



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
        <c:import url="./template/sidebar.jsp"></c:import>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- 탑바 임포트 -->
                


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <!-- <h1 class="h3 mb-4 text-gray-800">1대1 문의 리스트</h1> -->

                    <!-- 여기가 진짜본문 -->
                    <div class="card shadow mb-4 mt-4">
                        <div class="card-header py-3" style="display: flex">
                            <h6 class="font-weight" style="color: #6667AB; margin: auto 0px;">주문 상세</h6>

                            <form action="./updateStatus" method="get" style="margin-left: auto;">
                                <button type="submit" data-qna-num="${detail.rp_num}" id="statusChange" 
                                class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
                                style ="background-color: rgb(132, 84, 198); border-color: rgb(132, 84, 198); ">
                                    <i class="fas fa-check fa-sm text-white-50"></i>상태변경
                                        
                            <input type="hidden" name="rp_num" value="${detail.rp_num}">
                            <input type="hidden" name="rp_status" value="완료">    
                            </form>
                            <!-- </div>     -->
                        </div>
                        <div class="card-body" style="zoom: 0.8;">
                            <!-- 카드 본문  -->

                            

                            <!-- 부트스트랩표 -->
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
                                                <th class="col-1">주문취소</th>
                                                <th class="col-2">주문상태</th>
                                            </tr>
                                        </thead>
                                        <tbody style="font-size: 12px;">
                                            <tr>
                                                <td><fmt:formatDate value="${nl.ord_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                                <td>${nl.merchant_uid}</td>
                                                <td>${nl.user_id}</td>
                                                <td>${nl.ord_total1}</td>
                                                <td>${nl.ord_delfree}</td>
                                                <td>${nl.ord_total2}</td>
                                                <td>${nl.ord_status}</td>
                                                <td>${nl.code}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </section>
                            </div>

                            <!-- 글내용 -->
                            <div id="qnaList">
                                <section class="col-lg-12 text-center" style="padding: 0px;">
                                    <table border="2" class="table border border-primary" width="100%">
                                      <tbody>
                                           <tr>
                                                <td style="height: auto; padding: 30px; white-space: nowrap;">
                                                    
                                                    ${fn:replace(detail.rp_contents, replaceChar, "<br/>")}
                                                    
                                                </td>
                                            </tr>
                                      </tbody>
                                    </table>
                                </section>
                            </div>

                        </div>
                        
                    </div>

                <!-- 페이지 컨텐츠 끝 -->
                </div>
                    <!-- 본문 끝 -->

            </div>
            <!-- End of Main Content -->

            <!-- footer 임포트 -->
            <c:import url="./template/footer.jsp"></c:import>


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