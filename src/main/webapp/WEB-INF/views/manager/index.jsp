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
    <link href="/resources/vendor/managerboot/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/css/manager/sb-admin-2.css" rel="stylesheet">
    <style>
        .hovv:hover {
            cursor: pointer;
        }

    </style>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

    <!-- 사이드바 임포트(./template/sidebar.jsp) -->
    <c:import url="./template/sidebar.jsp"></c:import>

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- 탑바 임포트 -->
            <c:import url="./template/topbar.jsp"></c:import>

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">홈</h1>
                    
                </div>

                <!-- 1번째 Content Row -->
                <div class="row">

                    <!-- 새로운 주문 -->
                    <div class="col-xl-3 col-md-6 mb-4" onclick="location.href='./manager/mall/order'" style="cursor: pointer;">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                            새 주문</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${order}건</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 취소 개수 -->
                    <div class="col-xl-3 col-md-6 mb-4" onclick="location.href='./manager/mall/cancel'" style="cursor: pointer;">
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                            취소신청</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${cancel}건</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-times-circle fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 교환 개수 -->
                    <div class="col-xl-3 col-md-6 mb-4" onclick="location.href='./manager/mall/exchange'" style="cursor: pointer;">
                        <div class="card border-left-info shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-info text-uppercase mb-1">교환신청
                                        </div>
                                        <div class="row no-gutters align-items-center">
                                            <div class="col-auto">
                                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${exchange}건</div>
                                            </div>
                                            <!-- <div class="col">
                                                <div class="progress progress-sm mr-2">
                                                    <div class="progress-bar bg-info" role="progressbar"
                                                        style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                                        aria-valuemax="100"></div>
                                                </div>
                                            </div> -->
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-retweet  fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- 요청 Card Example -->
                    <div class="col-xl-3 col-md-6 mb-4" onclick="location.href='./manager/mall/refund'" style="cursor: pointer;">
                        <div class="card border-left-warning shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                            반품신청</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">${refund}건</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-reply fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 1번째 Content Row -->

                <!-- 2번째 컨텐츠 로우 -->
                <div class="row">

                    <!-- Area Chart -->
                    <div class="col-xl-12 col-lg-12">
                        <div class="card shadow mb-4">
                            <!-- Card Header - Dropdown -->
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">대기중인 1대1 문의</h6>
                                
                                <h6 style="margin: auto 0px;">${qna}건</h6>
                            </div>
                            <!-- Card Body -->
                            <div class="card-body" style="zoom: 0.9;">
                                 <!-- 부트스트랩표 -->
                                <div id="qnaList">
                                    <section class="col-lg-12 text-center" style="padding: 0px;">
                                        <table class="table table-hover" width="100%">
                                        <thead class="table-primary" style="font-size: 14px;">
                                            <tr>
                                                <th class="col-1">번호</th>
                                                <th class="col-1">구분</th>
                                                <th class="col-4">글제목</th>
                                                <th class="col-2">작성자</th>
                                                <th class="col-2">등록일</th>
                                                <th class="col-1">처리</th>
                                            </tr>
                                        </thead>
                                        <tbody style="font-size: 12px;">
                                            <c:forEach items="${qnalist}" var="nl">
                                                <tr class="hovv" onclick="location.href='./manager/qna/detail?qna_num=${nl.qna_num}'">
                                                    <td>${nl.qna_num}</td>
                                                    <td>${nl.qna_cate}</td>
                                                    <td>${nl.qna_title}</td>
                                                    <td>${nl.user_id}</td>
                                                    <td>${nl.qna_date}</td>
                                                    <td id="updateStatus">${nl.qna_status}</td>
                                                </tr>
                                                </c:forEach>
                                        </tbody>
                                        </table>
                                    </section>
                                </div>

                                <!-- 페이지 -->
                                <div class="pagediv" style="display: flex; justify-content: center;">
                                    <nav aria-label="Page navigation example">
                                        <ul class="pagination paginate_sm">

                                            <c:if test="${pager.pre}">
                                                <li class="page-item"><a class="page-link" href="./manager?page=${pager.startNum-1}">pre</a></li>
                                            </c:if>
                                            <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                                                <li class="page-item"><a class="page-link" href="./manager?page=${i}">${i}</a></li>
                                            </c:forEach>
                                            <li class="page-item ${pager.next?'':'disabled'}"><a class="page-link" href="./manager?page=${pager.lastNum+1}">next</a></li>
                                        </ul>
                                    </nav>
                                </div>
                                <!-- 페이지 -->
                            </div>
                        </div>
                    </div>

                    
                    
                <!-- 2번째 컨텐츠 로우 끝 -->
                </div>


                

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

            <!-- footer 임포트 -->
            <c:import url="./template/footer.jsp"></c:import>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->


    <!-- Bootstrap core JavaScript-->
    <!-- <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->
    <script src="/resources/vendor/managerboot/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/managerboot/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/managerboot/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/manager/sb-admin-2.min.js"></script>

</body>

</html>