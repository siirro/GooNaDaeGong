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
    <link href="/resources/css/manager/sb-admin-2.css" rel="stylesheet">

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
                <c:import url="./template/topbar.jsp"></c:import>


                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <!-- <h1 class="h3 mb-4 text-gray-800">1대1 문의 리스트</h1> -->

                    <!-- 여기가 진짜본문 -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight" style="color: #6667AB;">1대1 문의 리스트
                                <c:if test="${code == 1}">
                                    [구디나라]
                                </c:if>
        
                                <c:if test="${code == 2}">
                                    [대기공주]
                                </c:if>
                            
                            </h6>
                        </div>
                        <div class="card-body">
                            <!-- 카드 본문  -->

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
                                             <tr>
                                                <td>${nl.qna_num}</td>
                                                <td>${nl.qna_cate}</td>
                                                <td><a href="./detail?qna_num=${nl.qna_num}">${nl.qna_title}</a></td>
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
                                            <li class="page-item"><a class="page-link" href="./list?code=${code}&page=${pager.startNum-1}&kind=${pager.kind}&search=${pager.search}">pre</a></li>
                                        </c:if>
                                        <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
                                            <li class="page-item"><a class="page-link" href="./list?code=${code}&page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a></li>
                                        </c:forEach>
                                        <li class="page-item ${pager.next?'':'disabled'}"><a class="page-link" href="./list?code=${code}&page=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">next</a></li>
                                    </ul>
                                </nav>
                            </div>

                            <!-- 내용 Search -->
                            <div class="" style="justify-content: center; display: flex;">
                            <form action="./list" method="get" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        
                                <div class="input-group">
                                    <div class="search-category" id="search-category">
                                        <select name="kind" class="custom-select custom-select-sm form-control form-control-sm">
                                            <option class="kinds" value="qna_title">제목</option>
                                            <option class="kinds" value="qna_contents">내용</option>
                                            <option class="kinds" value="user_id">작성자</option>
                                        </select>
                                    </div>
                                    <input name="search" value="${param.search}" id="search" type="text" class="form-control bg-light border-0 small" placeholder="Search"
                                        aria-label="Search" aria-describedby="basic-addon2">
                                    <input type="hidden" name="code" value="${code}">
                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="submit">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
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

    <script>
        let k = '${param.kind}';
        const kinds = document.getElementsByClassName('kinds');

        for(let i=0;i<kinds.length;i++) {
            if(k==kinds[i].value) {
                kinds[i].selected=true;
                break;
            }
        }

    </script>
    <script src="/resources/js/manager/qnalist.js"></script>

</body>

</html>