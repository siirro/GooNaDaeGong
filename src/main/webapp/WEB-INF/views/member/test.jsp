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
    <!--css-->
    <link rel="stylesheet" href="/resources/css/member/test.css">
</head>
<body>

    <section>
        <div class="css-pculus e1ovi4141">
            <div class="css-o5dw7d e1ovi4140">회원가입</div>
            <div class="css-mhmtvt e15so55l1">
                <div class="css-rb0i47 e1yyjjij1">
                    <span class="css-qq9ke6 e1yyjjij0">*</span> 필수입력사항
                </div>
                <form action="test" method="post">
                    <div class="css-y8aj3r eo6ykj40">
                        <div class="css-1pjgd36 e744wfw6">
                            <div class="css-1y8737n e744wfw5">
                                <label class="css-1obgjqh e744wfw4">아이디<span class="css-qq9ke6 e744wfw0">*</span></label>
                            </div>
                            <div class="css-82a6rk e744wfw3">
                                <div class="css-jmalg e1uzxhvi6">
                                    <div class="css-176lya2 e1uzxhvi3">
                                        <input data-testid="input-box" id="user_id" name="user_id" placeholder="아이디를 입력해주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="">
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
                                                <input data-testid="input-box" id="user_email" name="user_email" placeholder="예: marketkurly@kurly.com" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="">
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
                                                <input data-testid="input-box" id="user_phone" name="user_phone" placeholder="숫자만 입력해주세요." type="tel" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="css-1w0ksfz e744wfw2">
                                        <button class="css-ufulao e4nu7ef3" type="button" disabled="">
                                            <span class="css-ymwvow e4nu7ef1">인증번호 받기</span>
                                        </button>
                                    </div>
                                </div>
                                <div class="css-1pjgd36 e744wfw6">
                                    <div class="css-1y8737n e744wfw5">
                                        <label class="css-1obgjqh e744wfw4">주소<span class="css-qq9ke6 e744wfw0">*</span></label>
                                    </div>
                                    <div class="css-82a6rk e744wfw3">
                                        <button class="css-1schgvv e4nu7ef3" type="button" height="44" radius="4">
                                            <span class="css-ymwvow e4nu7ef1">
                                                <img src="https://res.kurly.com/pc/service/cart/2007/ico_search.svg" alt="" class="css-1m3kac1 e4nu7ef0">주소 검색</span>
                                            </button>
                                        </div>
                                        <div class="css-1w0ksfz e744wfw2"></div>
                                </div>
                                <div class="css-1pjgd36 e744wfw6">
                                    <div class="css-1y8737n e744wfw5">
                                        <label class="css-1obgjqh e744wfw4">프로필사진</label>
                                    </div>
                                    <div class="css-82a6rk e744wfw3">
                                        <!-- <div class="css-jmalg e1uzxhvi6"> -->
                                            <!-- <div class="css-176lya2 e1uzxhvi3"> -->
                                                <label for="user_file">
                                                    <div class="btn-upload">파일 업로드하기</div>
                                                  </label>
                                                <input id="user_file" name="user_file" type="file" class=" e1uzxhvi2" value="">
                                            <!-- </div> -->
                                        <!-- </div> -->
                                    </div>
                                    <div class="css-1w0ksfz e744wfw2"></div>
                                </div>
                            
                    </div>
                                    <div class="css-1eo0fey e1j7jtti0"></div>
                                    <div class="css-y8aj3r e1k9oeg10">
                                        <div class="css-2yzr8b e744wfw6">
                                            <div class="css-1y8737n e744wfw5">
                                                <label class="css-1obgjqh e744wfw4">이용약관동의<span class="css-qq9ke6 e744wfw0">*</span></label>
                                            </div>
                                            <div class="css-82a6rk e744wfw3">
                                                <div class="css-ov2xfu e1sjmfnv7">
                                                    <label class="css-qihf5m e1dcessg1" for="TermsAgreeAll">
                                                        <input id="TermsAgreeAll" type="checkbox" class="css-agvwxo e1dcessg0">
                                                        <img src="/resources/images/member/button.svg" alt="" class="css-1wfsi82 e31wziv0">전체 동의합니다.</label>
                                                        <p class="css-nygcgj e1sjmfnv6">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
                                                </div>
                                                <div class="css-ov2xfu e1sjmfnv7">
                                                    <div class="css-s5xdrg e1sjmfnv4">
                                                        <label class="css-18r9a6u e1dcessg1" for="RequiredTermsCondition">
                                                            <input id="RequiredTermsCondition" type="checkbox" class="css-agvwxo e1dcessg0">
                                                            <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjREREIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjY5LjAwMDAwMCwgLTEwOTAuMDAwMDAwKSB0cmFuc2xhdGUoMTAwLjAwMDAwMCwgOTM2LjAwMDAwMCkgdHJhbnNsYXRlKDU1My4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" alt="" class="css-1wfsi82 e31wziv0">이용약관 동의</label><span class="css-g5xq45 e1sjmfnv5">(필수)</span>
                                                    </div>
                                                    <a class="css-7chi73 e1sjmfnv3">약관보기</a>
                                                </div>
                                                <div class="css-ov2xfu e1sjmfnv7">
                                                    <div class="css-s5xdrg e1sjmfnv4"><label class="css-18r9a6u e1dcessg1" for="RequiredTermsOfPrivacy">
                                                        <input id="RequiredTermsOfPrivacy" type="checkbox" class="css-agvwxo e1dcessg0">
                                                        <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjREREIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjY5LjAwMDAwMCwgLTEwOTAuMDAwMDAwKSB0cmFuc2xhdGUoMTAwLjAwMDAwMCwgOTM2LjAwMDAwMCkgdHJhbnNsYXRlKDU1My4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" alt="" class="css-1wfsi82 e31wziv0">개인정보 수집∙이용 동의</label><span class="css-g5xq45 e1sjmfnv5">(필수)</span>
                                                    </div>
                                                        <a class="css-7chi73 e1sjmfnv3">약관보기</a>
                                                </div>
                                                <div class="css-ov2xfu e1sjmfnv7">
                                                    <div class="css-s5xdrg e1sjmfnv4">
                                                        <label class="css-18r9a6u e1dcessg1" for="OptionalTermsOfPrivacy">
                                                            <input id="OptionalTermsOfPrivacy" type="checkbox" class="css-agvwxo e1dcessg0">
                                                            <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjREREIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjY5LjAwMDAwMCwgLTEwOTAuMDAwMDAwKSB0cmFuc2xhdGUoMTAwLjAwMDAwMCwgOTM2LjAwMDAwMCkgdHJhbnNsYXRlKDU1My4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" alt="" class="css-1wfsi82 e31wziv0">개인정보 수집∙이용 동의</label><span class="css-g5xq45 e1sjmfnv5">(선택)</span>
                                                        </div>
                                                        <a class="css-7chi73 e1sjmfnv3">약관보기</a>
                                                    </div>
                                                    <div class="css-ob6kg2 e1sjmfnv7">
                                                        <div class="css-s5xdrg e1sjmfnv4">
                                                            <label class="css-18r9a6u e1dcessg1" for="SignupEventAll">
                                                                <input id="SignupEventAll" type="checkbox" class="css-agvwxo e1dcessg0">
                                                                <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjREREIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjY5LjAwMDAwMCwgLTEwOTAuMDAwMDAwKSB0cmFuc2xhdGUoMTAwLjAwMDAwMCwgOTM2LjAwMDAwMCkgdHJhbnNsYXRlKDU1My4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" alt="" class="css-1wfsi82 e31wziv0">무료배송, 할인쿠폰 등 혜택/정보 수신 동의</label><span class="css-g5xq45 e1sjmfnv5">(선택)</span>
                                                            </div>
                                                    </div>
                                                    <div class="css-ov2xfu e1sjmfnv7">
                                                        <div class="css-s5xdrg e1sjmfnv4">
                                                            <label class="css-18r9a6u e1dcessg1" for="RequiredSignupAge">
                                                                <input id="RequiredSignupAge" type="checkbox" class="css-agvwxo e1dcessg0">
                                                                <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjREREIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjY5LjAwMDAwMCwgLTEwOTAuMDAwMDAwKSB0cmFuc2xhdGUoMTAwLjAwMDAwMCwgOTM2LjAwMDAwMCkgdHJhbnNsYXRlKDU1My4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" alt="" class="css-1wfsi82 e31wziv0">본인은 만 14세 이상입니다.</label><span class="css-g5xq45 e1sjmfnv5">(필수)</span>
                                                        </div>
                                                    </div>
                                                </div>
                                        </div>
                                    </div>

                                    <div class="css-137ca2h e1utgeno0">
                                        <button class="css-18m884r e4nu7ef3" type="submit" width="240" height="56" radius="3">
                                            <span class="css-ymwvow e4nu7ef1">가입하기</span>
                                        </button>
                                    </div>
                    </form>                                    
            </div>
        </div>
    </section>
    <script src="/resources/js/member/test.js"></script>

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