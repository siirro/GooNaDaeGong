<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- jQuery -->
	<script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
	<!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    
</head>
<body>
    
    <section >
        <!-- <div class="mb-3 row">
            <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
            <div class="form-group">
              <input type="text" readonly class="form-control-plaintext" id="staticEmail" value="email@example.com">
            </div>
          </div>
          <div class="col-sm-6 col-md-offset-3">
            <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
            <div class="form-group">
              <input type="password" class="form-control" id="inputPassword">
            </div>
          </div> -->


        <article class="container">
            <div class="page-header">
                <div class="col-md-6 col-md-offset-3">
                    <div align=center>
                        <h2>회원가입</h2>
                    </div>
                </div>
            </div>
            <hr>
            <div class="col-sm-6 col-md-offset-3">
                <form action="join" method="post">
                    <div class="form-group">
                        <label for="user_id">아이디</label>
                        <input type="text" class="form-control" id="user_id" name="user_id" placeholder="ID">
                        <button type="button" class="btn btn-default">
                        <div class="check_font" id="id_check"></div>
                    </div>
                    <div class="form-group">
                        <label for="user_pw">비밀번호&nbsp; </label> 
                         <input type="password" class="form-control" id="user_pw" name="user_pw"
                            placeholder="PASSWORD">
                        <div class="check_font" id="pw_check"></div>
                    </div>
                    <div class="form-group">
                        <label for="user_pw2">비밀번호 확인</label> 
                         <input type="password" class="form-control" id="user_pw2" name="user_pw2"
                            placeholder="Confirm Password">
                        <div class="check_font" id="pw2_check"></div>
                    </div>
                    <div class="form-group">
                        <label for="user_name">이름</label> 
                         <input type="text" class="form-control" id="user_name" name="user_name"
                            placeholder="PASSWORD">
                        <div class="check_font" id="pw_check"></div>
                    </div>
                    <div class="form-group">
                        <label for="user_phone">핸드폰번호</label> 
                         <input type="text" class="form-control" id="user_phone" name="user_phone"
                            placeholder="Phone Number">
                        <div class="check_font" id="nick_check"></div>
                    </div>
                    <div class="form-group">
                        <label for="user_email">이메일 주소</label>
                         <input type="email" class="form-control" id="user_email" name="user_email"
                            placeholder="E-mail (Ex.GNDG@naver.com)">
                        <div class="check_font" id="email_check"></div>
                    </div>
                    <div class="form-group">
                        <label for="user_post">우편번호</label> 
                        <input class="form-control" style="width: 40%; display: inline; top: 5px;"
                            placeholder="우편번호" name="user_post" id="user_post" type="text">
                        <button type="button" class="btn btn-default"
                            onclick="openDaumPostcode()">
                            <i class="fa fa-search"></i> 우편번호 찾기
                        </button>
                    <div class="form-group">
                        <label for="user_addr">주소</label> 
                         <input type="text" class="form-control" id="user_addr" name="user_addr"
                            placeholder="Address">
                        <div class="check_font" id="addr_check"></div>
                    </div>
                    <div class="form-group">
                        <label for="user_phone">상세주소</label>
                         <input type="text" class="form-control" id="user_addr2" name="user_addr2"
                            placeholder="Detail Address">
                        <div class="check_font" id="addr2_check"></div>
                    </div>
                    <div class="form-group">
                        <label for="user_file">프로필 사진</label>
                         <input type="file" class="form-control" id="user_file" name="user_file">
                    </div>
                    <hr>
                    <label>이용약관 동의</label><br>
                     <input type="checkbox" name="agreeAll" value="agreeAll" id="agreeAll">
                      <span>모두 동의합니다</span><br>
                     <input type="checkbox" name="agree">
                      <span>이용약관 동의&nbsp;<strong>(필수)</strong></span>
                      <button type="button" class="btn btn-link" style="text-align :right; text-decoration :none; color:black;"
                       data-toggle="modal" data-target="#myModal1">약관보기 ></button><br>
                     <input type="checkbox" name="agree">
                      <span>개인정보 수집 및 이용 동의&nbsp;<strong>(필수)</strong></span>
                     <button type="button" class="btn btn-link" style="text-align :right; text-decoration :none; color:black;"
                       data-toggle="modal" data-target="#myModal2">약관보기 ></button><br>
                     <input type="checkbox" name="agree">
                      <span>만 14세 이상입니다.&nbsp;<strong>(필수)</strong></span><br><br>
                    
                        <div class="form-group text-center">
                        <button class="btn signup" type="submit" style="width:100%;">회원가입</button>
                    </div>

    </section>
<!-- 다음 우편주소api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//우편번호, 주소 Daum API
	function openDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
				document.getElementById('user_post').value = data.zonecode;
				document.getElementById('user_addr').value = data.address;
			}
		}).open();
	}
</script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>		
</body>
</html>