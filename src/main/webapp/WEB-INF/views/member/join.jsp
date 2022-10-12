<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--css-->
    <link rel="stylesheet" href="/resources/css/member/test.css">
</head>
<body>
	<div class="wrap">
	<c:import url="../template/header.jsp"></c:import>
    <section>
        <div class="css-pculus e1ovi4141">
            <div class="css-o5dw7d e1ovi4140">회원가입</div>
            <div class="css-mhmtvt e15so55l1">
                <div class="css-rb0i47 e1yyjjij1">
                    <span class="css-qq9ke6 e1yyjjij0">*</span> 필수입력사항
                </div>
                <form action="join" method="post" id="frmjoin" enctype="multipart/form-data">
                    <div class="css-y8aj3r eo6ykj40">
                        <div class="css-1pjgd36 e744wfw6">
                            <div class="css-1y8737n e744wfw5">
                                <label class="css-1obgjqh e744wfw4">아이디<span class="css-qq9ke6 e744wfw0">*</span></label>
                            </div>
                            <div class="css-82a6rk e744wfw3">
                                <div class="css-jmalg e1uzxhvi6">
                                    <div class="css-176lya2 e1uzxhvi3">
                                        <input data-testid="input-box" id="user_id" name="user_id" placeholder="아이디를 입력해주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                        <div id="id_check" class="check"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="css-1w0ksfz e744wfw2">
                                <button class="css-ufulao e4nu7ef3" type="button" id="ajaxID">
                                    <span class="css-ymwvow e4nu7ef1">중복확인</span>
                                </button>
                            </div>
                        </div>
                        <div class="css-1pjgd36 e744wfw6">
                            <div class="css-1y8737n e744wfw5">
                                <label class="css-1obgjqh e744wfw4">비밀번호<span class="css-qq9ke6 e744wfw0">*</span></label>
                            </div>
                            <div class="css-82a6rk e744wfw3">
                                <div class="css-jmalg e1uzxhvi6">
                                    <div class="css-176lya2 e1uzxhvi3">
                                        <input data-testid="input-box" id="user_pw" name="user_pw" placeholder="비밀번호를 입력해주세요" type="password" class="css-1bkd15f e1uzxhvi2" value="">
                                        <div id="pw_check" class="check"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="css-1w0ksfz e744wfw2"></div>
                        </div>
                            <div class="css-1pjgd36 e744wfw6">
                            <div class="css-1y8737n e744wfw5">
                                <label class="css-1obgjqh e744wfw4">비밀번호확인<span class="css-qq9ke6 e744wfw0">*</span></label>
                            </div>
                            <div class="css-82a6rk e744wfw3">
                                <div class="css-jmalg e1uzxhvi6">
                                    <div class="css-176lya2 e1uzxhvi3">
                                        <input data-testid="input-box" id="user_pw2" name="user_pw2" placeholder="비밀번호를 한번 더 입력해주세요" type="password" class="css-1bkd15f e1uzxhvi2" value="">
                                        <div id="pw2_check" class="check"></div>
                                    </div>
                                </div>
                            </div>
                             <div class="css-1w0ksfz e744wfw2"></div>
                            </div>
                            <div class="css-1pjgd36 e744wfw6">
                                <div class="css-1y8737n e744wfw5">
                                    <label class="css-1obgjqh e744wfw4">이름<span class="css-qq9ke6 e744wfw0">*</span></label>
                                </div>
                                <div class="css-82a6rk e744wfw3">
                                    <div class="css-jmalg e1uzxhvi6">
                                        <div class="css-176lya2 e1uzxhvi3">
                                            <input data-testid="input-box" id="user_name" name="user_name" placeholder="이름을 입력해 주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                            <div id="name_check" class="check"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="css-1w0ksfz e744wfw2"></div>
                            </div>
                            <div class="css-1pjgd36 e744wfw6">
                                    <div class="css-1y8737n e744wfw5"><label class="css-1obgjqh e744wfw4">이메일<span class="css-qq9ke6 e744wfw0">*</span></label>
                                    </div>
                                    <div class="css-82a6rk e744wfw3">
                                        <div class="css-jmalg e1uzxhvi6">
                                            <div class="css-176lya2 e1uzxhvi3">
                                                <input data-testid="input-box" id="user_email" name="user_email" placeholder="예: goodeenara@daekigongju.com" type="email" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                                <div id="email_check" class="check"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="css-1w0ksfz e744wfw2">
                                        <button class="css-ufulao e4nu7ef3" type="button" id="ajaxEmail">
                                            <span class="css-ymwvow e4nu7ef1">중복확인</span>
                                        </button>
                                    </div>
                            </div>
                            <div class="css-1pjgd36 e744wfw6">
                                <div class="css-1y8737n e744wfw5">
                                    <label class="css-1obgjqh e744wfw4">휴대폰<span class="css-qq9ke6 e744wfw0">*</span>
                                    </label>
                                </div>
                                <div class="css-82a6rk e744wfw3">
                                    <div class="css-jmalg e1uzxhvi6">
                                        <div class="css-176lya2 e1uzxhvi3">
                                            <input id="user_phone" name="user_phone" placeholder="숫자만 입력해주세요." type="tel" required="" class="css-1bkd15f e1uzxhvi2" value="" maxlength="11" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                            <div id="phone_check" class="check"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="css-1w0ksfz e744wfw2"></div>
                            </div>
                            <div class="css-1pjgd36 e744wfw6">
                                <div class="css-1y8737n e744wfw5">
                                    <label class="css-1obgjqh e744wfw4">우편번호<span class="css-qq9ke6 e744wfw0">*</span></label>
                                </div>
                                <div class="css-82a6rk e744wfw3">
                                    <div class="css-jmalg e1uzxhvi6">
                                        <div class="css-176lya2 e1uzxhvi3">
                                            <input data-testid="input-box" id="user_post" name="user_post" placeholder="우편번호 입력" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                            <div id="post_check" class="check"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="css-1w0ksfz e744wfw2"></div>
                            </div>
                            <div class="css-1pjgd36 e744wfw6">
                                <div class="css-1y8737n e744wfw5">
                                    <label class="css-1obgjqh e744wfw4">주소<span class="css-qq9ke6 e744wfw0">*</span></label>
                                </div>
                                <div class="css-82a6rk e744wfw3">
                                    <div class="css-jmalg e1uzxhvi6">
                                        <div class="css-176lya2 e1uzxhvi3">
                                            <input data-testid="input-box" id="user_addr" name="user_addr" placeholder="주소검색 버튼을 눌러주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                            <div id="addr_check" class="check"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="css-1w0ksfz e744wfw2"></div>
                                </div>
                                <div class="css-1pjgd36 e744wfw6">
                                    <div class="css-1y8737n e744wfw5">
                                        <label class="css-1obgjqh e744wfw4"></label>
                                    </div>
                                    <div class="css-82a6rk e744wfw3">
                                        <button class="css-1schgvv e4nu7ef3" type="button" height="44" radius="4" onclick="openDaumPostcode()">
                                            <span class="css-ymwvow e4nu7ef1">
                                                <img src="https://res.kurly.com/pc/service/cart/2007/ico_search.svg" alt="" class="css-1m3kac1 e4nu7ef0">주소 검색</span>
                                            </button>
                                        </div>
                                        <div class="css-1w0ksfz e744wfw2"></div>
                                </div>
                                <div class="css-1pjgd36 e744wfw6">
                                    <div class="css-1y8737n e744wfw5">
                                        <label class="css-1obgjqh e744wfw4">상세주소<span class="css-qq9ke6 e744wfw0">*</span></label>
                                    </div>
                                    <div class="css-82a6rk e744wfw3">
                                        <div class="css-jmalg e1uzxhvi6">
                                            <div class="css-176lya2 e1uzxhvi3">
                                                <input data-testid="input-box" id="user_addr2" name="user_addr2" placeholder="상세주소를 입력해 주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                                <div id="addr2_check" class="check"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="css-1w0ksfz e744wfw2"></div>
                                </div>
                                <div class="css-1pjgd36 e744wfw6">
                                    <div class="css-1y8737n e744wfw5">
                                        <label class="css-1obgjqh e744wfw4">프로필사진</label>
                                    </div>
                                    <div class="css-82a6rk e744wfw3">

                                                <label for="userfile">
                                                    <div class="btn-upload">파일 업로드하기</div>
                                                  </label>
                                                <input id="userfile" name="userfile" type="file" class=" e1uzxhvi2" value="">
                                                <div id="file_check" class="check"></div>

                                    </div>
                                    <div class="css-1w0ksfz e744wfw2"></div>
                                </div>               
                    </div>
<!-------------------------------------- 약관동의문--------------------------------------------------------------------------------- -->
                                    <div class="css-1eo0fey e1j7jtti0"></div>
                                    <div class="css-y8aj3r e1k9oeg10">
                                        <div class="css-2yzr8b e744wfw6">
                                            <div class="css-1y8737n e744wfw5">
                                                <label class="css-1obgjqh e744wfw4">이용약관동의<span class="css-qq9ke6 e744wfw0">*</span></label>
                                            </div>
                                            <div class="css-82a6rk agrees">
                                                <div class="css-ov2xfu ">
                                                    <label class="css-qihf5m e1dcessg1" for="all">
                                                    <input id="all" type="checkbox" class="css-agvwxo ">
                                                    <img src="/resources/images/member/check.svg" alt="" class="css-1wfsi82 e31wziv0">
                                                    <div class="allAgree"></div>
                                                    전체 동의합니다.
                                                    </label>
                                                        <p class="css-nygcgj e1sjmfnv6">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
                                                </div>

                                                <div class="css-ov2xfu e1sjmfnv7">
                                                    <div class="css-s5xdrg ">
                                                        <input id="RequiredTermsCondition" type="checkbox" class="css-agvwxo req agrees">
                                                        <label class="css-18r9a6u e1dcessg1" for="RequiredTermsCondition">
                                                           <img src="/resources/images/member/check.svg" alt="" class="css-1wfsi82 e31wziv0">
                                                            이용약관 동의
                                                        </label>
                                                        <span class="css-g5xq45 e1sjmfnv5">(필수)</span> 
                                                    </div>
                                                    <button type="button" class="css-7chi73" id="mymodal1"
                                                    data-bs-toggle="modal" data-bs-target="#myModal1">약관보기</button>
                                                    <!-- <a class="css-7chi73 e1sjmfnv3">약관보기</a> -->
                                                </div>

                                                <div class="css-ov2xfu e1sjmfnv7">
                                                    <div class="css-s5xdrg ">
                                                        <input id="RequiredTermsOfPrivacy" type="checkbox" class="css-agvwxo req agrees" >
                                                        <label class="css-18r9a6u e1dcessg1" for="RequiredTermsOfPrivacy">
                                                        <img src="/resources/images/member/check.svg" alt="" class="css-1wfsi82 e31wziv0">
                                                            개인정보 수집∙이용 동의
                                                        </label>
                                                        <span class="css-g5xq45 e1sjmfnv5">(필수)</span>
                                                    </div>
                                                    <button type="button" class="css-7chi73" id="mymodal2"
                                                    data-bs-toggle="modal" data-bs-target="#myModal2">약관보기</button>
                                                        <!-- <a class="css-7chi73 e1sjmfnv3" role="button" data-toggle="modal" data-target="#myModal1">약관보기</a> -->
                                                </div>

                                                <div class="css-ov2xfu e1sjmfnv7">
                                                    <div class="css-s5xdrg ">
                                                        <input id="OptionalTermsOfPrivacy" type="checkbox" class="css-agvwxo agrees">
                                                        <label class="css-18r9a6u " for="OptionalTermsOfPrivacy">
                                                           <img src="/resources/images/member/check.svg" alt="" class="css-1wfsi82 e31wziv0">
                                                                개인정보 수집∙이용 동의
                                                        </label>
                                                            <span class="css-g5xq45 e1sjmfnv5">(선택)</span>
                                                    </div>
                                                    <button type="button" class="css-7chi73" id="mymodal3"
                                                    data-bs-toggle="modal" data-bs-target="#myModal3">약관보기</button>
                                                        <!-- <a class="css-7chi73 e1sjmfnv3">약관보기</a> -->
                                                </div>

                                                <div class="css-ov2xfu e1sjmfnv7">
                                                    <div class="css-s5xdrg ">
                                                        <input id="RequiredSignupAge" type="checkbox" class="css-agvwxo req agrees">
                                                        <label class="css-18r9a6u " for="RequiredSignupAge">
                                                            <img src="/resources/images/member/check.svg" alt="" class="css-1wfsi82 e31wziv0">
                                                                본인은 만 14세 이상입니다.
                                                        </label>
                                                            <span class="css-g5xq45 e1sjmfnv5">(필수)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="css-137ca2h e1utgeno0">
                                        <button class="css-18m884r e4nu7ef3" type="button" id="joinbtn" width="240" height="56" radius="3">
                                            <span class="css-ymwvow e4nu7ef1">가입하기</span>
                                        </button>
                                    </div>
                   <!--약관 모달 바디  -->
    <!-- 이용약관 동의 -->
    <div class="modal fade" id="myModal1" tabindex="-1" aria-labelledby="ModalLabel1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="ModalLabel1">이용약관 동의</h1>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" id="model1">
              ...
            </div>
            <div class="modal-footer">
              <button type="button" class="css-738xq4" data-bs-dismiss="modal">확인</button>
            </div>
          </div>
        </div>
      </div>

      <!-- 개인정보 수집∙이용 동의 동의 -->
      <div class="modal fade" id="myModal2" tabindex="-1" aria-labelledby="ModalLabel2" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="ModalLabel2">개인정보 수집∙이용 동의</h1>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" id="model2">
              ...
            </div>
            <div class="modal-footer">
              <button type="button" class="css-738xq4" data-bs-dismiss="modal">확인</button>
            </div>
          </div>
        </div>
      </div>
          <!-- 개인정보 수집∙이용 동의(선택) 동의 -->
          <div class="modal fade" id="myModal3" tabindex="-1" aria-labelledby="ModalLabel3" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="ModalLabel3">개인정보 수집∙이용 동의(선택)</h1>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="model3">
                  ...
                </div>
                <div class="modal-footer">
                  <button type="button" class="css-738xq4" data-bs-dismiss="modal">확인</button>
                </div>
              </div>
            </div>
          </div>

    


                    </form>                                    
            </div>
        </div>
    </section>
    <c:import url="../template/footer.jsp"></c:import>
	</div> <!-- wrap end -->
    <script src="/resources/js/member/join.js"></script>

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
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>		 -->
</body>
</html>