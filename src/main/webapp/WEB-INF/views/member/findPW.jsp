<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<!-- jQuery -->
	<script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <!--findID CSS-->
    <link rel="stylesheet" href="/resources/css/member/findID.css">
</head>
<body>

    <section>
        <div class="login-page">
            <div class="form">
                <div align="center" class="font-center">비밀번호 찾기</div>
              <form action="findPW" method="post" class="login-form" id="frmPW">
                    <div>
                        <label for="user_id" align="left">아이디</label>
                        <input type="text" name="user_id" id="user_id" placeholder="ID"/>
                        <div id="id_check"></div>
                    </div>
                    <div>
                        <label for="user_email" align="left">이메일</label>
                        <input type="text" name="user_email" id="user_email" placeholder="EMAIL"/>
                        <div id="email_check"></div>
                    </div>
                    <!-- Button trigger modal -->
                    <button data-bs-toggle="modal" data-bs-target="#findPWModal" class="btn" id="pwbtn" type="button">FIND</button>
                    <!-- Modal -->
                    <div class="modal fade" id="findPWModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">비밀번호 찾기</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div id="body"></div>
                                    등록하신 이메일로 임시비밀번호가 발급 되었습니다.
                                </div>
                                <div class="modal-footer">
                                    <button type="button" data-bs-dismiss="modal" class="btn">닫기</button>
                                    <button type="button" class="btn" onclick="location.href='/member/login'">로그인</button>
                                </div>
                            </div>
                        </div>
                    </div>
                <button class="btn2">페이지이동버튼</button>
              </form>
            </div>
          </div>
    </section>
    <script src="/resources/js/member/findPW.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>		
</body>
</html>