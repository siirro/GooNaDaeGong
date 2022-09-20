<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- jQuery -->
	<script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
    
    <section>
        <div class="container" align="center">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
              <div align="center">로그인</div>
              <form method="post" action="login">
               <table class="table table-bordered table-hover" align="center" >
                <div class="form-group">
                  <input type="text" class="form-control" id="user_id" name="user_id" placeholder="아이디를 입력해주세요" maxlength="20">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="비밀번호를 입력해주세요" maxlength="20">
                </div>
                    <div class="form-group">
                      <a href="./findID" > 아이디찾기 </a> | <a href="./findPW">비밀번호 찾기</a>
                    </div>
                  <div class="form-group" >
                <input type="submit" class="btn login" style="width:100%;" value="로그인">
                  </div>
                  <div class="form-group" >
                <input type="button" class="btn btn-signup" style="width:100%;" 
                        onClick="location.href='/member/join'" value="회원가입">
                  </div>
                  <button id="login-kakao-btn" onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id={7fd3f72a12710b29220e17ed15eadb6c}&redirect_uri=http://localhost/member/kakao&response_type=code'">
                    카카오로 로그인하기
                  </button>
           
            
                 </table>
              </form>
              </div>
              <div class="col-lg-4"></div>
            </div> 

    </section>


    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>		
</body>
</html>