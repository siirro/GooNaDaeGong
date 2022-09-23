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

    <title>1대1 문의</title>

    <!-- Custom fonts for this template-->
    <!-- <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"> -->
    <link href="/resources/vendor/managerboot/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <!-- <link href="/css/sb-admin-2.min.css" rel="stylesheet"> -->
    <link href="/resources/css/managerboot/sb-admin-2.css" rel="stylesheet">
    <style>
        table {
            border: none;
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
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight" style="color: #6667AB;">1대1 문의</h6>
                        </div>
                        <div class="card-body">
                            <!-- 카드 본문  -->

                            

                            <!-- 부트스트랩표 -->
                            <div id="qnaList">
                                <section class="col-lg-12 text-center" style="padding: 0px;">
                                    <table class="table table-bordered" width="100%">
                                      <tbody class="">
                                            <tr>
                                                <td class="w-25" style="border-right: 1px;">제목</td>
                                                <td colspan="3">${qnaDTO.qna_title}</td>
                                            </tr>
                                            <tr>
                                                <td class="w-25">작성자</td>
                                                <td>${qnaDTO.user_id}</td>
                                                <td class="w-25">작성일</td>
                                                <td>${qnaDTO.qna_date}</td>
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
                                                <td style="height: 150px;">${qnaDTO.qna_contents}</td>
                                            </tr>
                                      </tbody>
                                    </table>
                                </section>
                            </div>

                            <!-- 글내용2번 -->
                            <!-- <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-primary shadow h-150 py-2" style="width: 500px;">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="h6 mb-0 font-weight-bold text-gray-800">
                                                    ${qnaDTO.qna_contents}
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div> -->

                            <!-- 회원이 첨부한 파일 링크 -->
                            <div>
                                <section class="col-lg-12 text-center" style="padding: 0px;">
                                    <table class="table table-bordered" width="100%">
                                      <tbody>
                                           <tr style="height: 10px;">
                                                <td colspan="3">첨부파일</td>
                                                <td colspan="1"><a href="#">파일.png</a></td>
                                            </tr>
                                      </tbody>
                                    </table>
                                </section>
                                
                            </div>

                            

                            <!-- 답변내용 -->
                            <div id="commentList">
                            <c:if test="${not empty qnaDTO.qna_comment}">
                                    <!-- 
                                    <section class="col-lg-12 text-center" style="padding: 0px;">
                                        <table class="table border border-danger" width="100%">
                                        <tbody>
                                                <tr>
                                                    <th class="text-center">답변내용</th>
                                                </tr>
                                                <tr>
                                                    <td>${qnaDTO.qna_comment}</td>
                                                </tr>
                                                
                                        </tbody>
                                        </table>
                                    </section>
                                    -->
                                
                            </c:if>
                            </div>
                            
                            <c:if test="${empty qnaDTO.qna_comment}">
                                <div id="commentNull">
                                    <h3 class="text-center">답변 미등록</h3>
                                </div>
                            </c:if> 
                            

                            <!-- 답변하기 버튼 (누르면 입력폼이 나온다) -->
                            <c:choose>
                                <c:when test="${empty qnaDTO.qna_comment}">
                                    <div style="display: flex; justify-content: right;" class="">
                                        <button data-qna-num="${qnaDTO.qna_num}" id="qnaComment" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                                            <i class="fas fa-download fa-sm text-white-50"></i> 
                                            
                                                답변하기
                                                
                                        </a>
                                    </div>
                                </c:when>
                            

                                <c:otherwise>
                                    <div class="mb-3" style="display: flex; justify-content: right;" class="">
                                        <button data-qna-num="${qnaDTO.qna_num}" id="qnaComment" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                                            <i class="fas fa-download fa-sm text-white-50"></i> 
                                            
                                                답변수정
                                                
                                        </a>
                                        <button data-qna-num="${qnaDTO.qna_num}" id="qnaCommentDelete" class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm ml-1">
                                            <i class="fas fa-wrench fa-sm text-white-50"></i> 
                                            
                                                답변삭제
                                                
                                        </a>
                                    </div>            
                                </c:otherwise>
                            </c:choose>

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
    <script src="/resources/js/managerboot/sb-admin-2.min.js"></script>

    <script src="/resources/js/managerboot/qnadetail.js"></script>

</body>

</html>