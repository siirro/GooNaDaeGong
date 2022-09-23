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
                <div align="center" class="font-center">로그인</div>
              <form action="login" method="post" class="login-form">
                    <div>
                        <input type="text" name="user_id" placeholder="ID"/>
                    </div>
                    <div>
                        <input type="text" name="user_pw" placeholder="PASSWORD"/>
                    </div>
                    <div class="find">
                      <a href="./findID" style="text-decoration: none; color: black;" > 아이디찾기 </a>
                      <span class="findspan"></span>
                      <a href="./findPW" style="text-decoration: none; color: black;">비밀번호 찾기</a>
                    </div>
                    <button class="btn">로그인</button>
                    <button type="button" class="btn2" onclick="location.href='/member/join'">회원가입</button>
                    <!--네이버 로그인-->
                    <div style="text-align: center">
                        <a class="naverbtn" href="#">N  로그인</a>
                    </div>
                </form>
                <form action="kakao">
                    <!-- 카카오 로그인 -->
                    <div id="kakao_id_login" style="text-align: center">
                        <a href="https://kauth.kakao.com/oauth/authorize?client_id=7fd3f72a12710b29220e17ed15eadb6c&redirect_uri=http://localhost/member/kakao&response_type=code">
                        <img  src="/resources/images/member/kakao_login_medium_wide.png" /></a>
                    </div>
                </form>
            </div>
          </div> 
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>	
    <script>
        function loginWithKakao(){
            $.ajax({
                url :'/member/getKakaoAuthUrl',
                type : 'get',
            }).done(function(res){
                location.href=res;
            })
        }
    </script>	
</body>
</html>