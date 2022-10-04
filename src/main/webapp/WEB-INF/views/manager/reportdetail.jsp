<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% pageContext.setAttribute("replaceChar", "\n"); %>


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
                            <h6 class="font-weight" style="color: #6667AB; margin: auto 0px;">신고 상세보기</h6>

                            <!-- <div class="mb-3" style="display: flex; justify-content: right;" class=""> -->

                            <c:choose>
                                <c:when test="${detail.rp_status == '대기'}">
                                    <form action="./updateStatus" method="get" style="margin-left: auto;">
                                        <button type="submit" data-qna-num="${detail.rp_num}" id="statusChange" 
                                        class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
                                        style ="background-color: rgb(132, 84, 198); border-color: rgb(132, 84, 198); ">
                                            <i class="fas fa-check fa-sm text-white-50"></i>처리완료
                                                
                                    <input type="hidden" name="rp_num" value="${detail.rp_num}">
                                    <input type="hidden" name="rp_status" value="완료">    
                                    </form>
                                </c:when>
                                <c:otherwise>
                                    <form action="./updateStatus" method="get" style="margin-left: auto;">
                                        <button disabled type="submit" data-qna-num="${detail.rp_num}" id="statusChange" 
                                        class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"
                                        style ="background-color: rgb(126, 107, 155); border-color: rgb(126, 107, 155); ">
                                            <i class="fas fa-check fa-sm text-white-50"></i>처리완료
                                                
                                    <input type="hidden" name="rp_num" value="${detail.rp_num}">
                                    <input type="hidden" name="rp_status" value="대기">    
                                    </form>

                                </c:otherwise>
                            </c:choose>
                            <!-- </div>     -->
                        </div>
                        <div class="card-body">
                            <!-- 카드 본문  -->

                            

                            <!-- 부트스트랩표 -->
                            <div id="qnaList">
                                <section class="col-lg-12 text-center" style="padding: 0px;">
                                    <table class="table table-bordered" width="100%">
                                      <tbody class="">
                                            <tr>
                                                
                                                <!-- <td>제목</td>
                                                <td colspan="5">${detail.rp_cate}</td> -->

                                                <td class="col-2">번호</td>
                                                <td class="col-2">${detail.rp_num}</td>
                                                <td class="col-2">신고자</td>
                                                <td class="col-2">${detail.user_id}</td>
                                                <td class="col-2">신고유형</td>
                                                <td class="col-2">${detail.rp_cate}</td>
                                                
                                            </tr>
                                            <tr>
                                                <td class="col-2">피신고ID</td>
                                                <td class="col-2 rprpid" onclick="location.href='../member/list?kind=user_id&search=${detail.rp_id}'">${detail.rp_id}</td>
                                                <td class="col-2">번호</td>
                                                <td class="col-2">${detail.rp_phone}</td>
                                                <td class="col-2">메일</td>
                                                <td class="col-2">${detail.rp_email}</td>
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