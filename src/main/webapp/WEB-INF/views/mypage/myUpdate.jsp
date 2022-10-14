<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
         <style>
        ol, ul {
            padding-left: 0rem !important;
        }
    </style>
    <link rel="stylesheet" href="/resources/css/member/mypage.css">
    <link rel="stylesheet" href="/resources/css/member/test.css">
</head>
<body>
    <div class="wrap">
    <c:import url="../template/header.jsp"></c:import>
    <section>
        <div class="css-luwwab eug5r8l4">
            <div class="css-833hqy ecbxmj4">
                <div class="css-1v4whg ecbxmj3">마이페이지</div>
                <ul class="css-1x9bshx ecbxmj2">
                    <li class="css-0 ecbxmj1">
                        <a class="css-nk8664 ecbxmj0" href="./myOrder">주문 내역<span class="css-e41glx e1x0rfoo0"></span></a>
                    </li>
                    <li class="css-0 ecbxmj1">
                        <a class=" css-nk8664 ecbxmj0" href="./myLike">찜한 상품<span class="css-e41glx e1x0rfoo0"></span></a>
                    </li>
                    <li class="css-0 ecbxmj1">
                        <a class=" css-nk8664 ecbxmj0" href="./myReview">상품 후기<span class="css-e41glx e1x0rfoo0"></span></a>
                    </li>
                    <li class="css-0 ecbxmj1">
                        <a class=" css-nk8664 ecbxmj0" href="./myQNA">상품 문의<span class="css-e41glx e1x0rfoo0"></span></a>
                    </li>
                    <li class=" css-0 ecbxmj1">
                        <a class="active css-nk8664 ecbxmj0" href="./myUpdate">개인 정보 수정<span class="css-e41glx e1x0rfoo0"></span></a>
                    </li>
                </ul>
                <a href="../qna/inquiry" class="css-17gln34 e19l01ug3">
                    <div class="css-1niy3no e19l01ug2">
                        <span class="css-1sdidca e19l01ug1">도움이 필요하신가요 ?</span>
                        <span class="css-rnnx2x e19l01ug0">1:1 문의하기</span>
                    </div>
                    <span class="css-1wkaywz e1x0rfoo0"></span>
                </a>
            </div>
            <div class="css-171zbec eug5r8l3">
                <div class="css-1yc2nwy eug5r8l2">
                    <h3 class="css-1ew6v8c eug5r8l1">개인 정보 수정</h3>
                </div>
                        <div class="css-ya8of1 e15so55l1">
                            <form action="myUpdate" method="post" id="frmupdate" enctype="multipart/form-data">
                                <div class="css-y8aj3r eo6ykj40">
                                    <div class="css-1pjgd36 e744wfw6">
                                        <div class="css-1y8737n e744wfw5">
                                            <label class="css-1obgjqh e744wfw4">아이디</label>
                                        </div>
                                        <div class="css-82a6rk e744wfw3">
                                            <div class="css-jmalg e1uzxhvi6">
                                                <div class="css-176lya2 e1uzxhvi3">
                                                    <input data-testid="input-box" id="user_id" name="user_id" placeholder="아이디를 입력해주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="${update.user_id}" disabled>
                                                    <div id="id_check"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="css-1w0ksfz e744wfw2"></div>
                                    </div>
                                    <div class="css-1pjgd36 e744wfw6">
                                        <div class="css-1y8737n e744wfw5">
                                            <label class="css-1obgjqh e744wfw4">비밀번호</label>
                                        </div>
                                        <div class="css-82a6rk e744wfw3">
                                            <div class="css-jmalg e1uzxhvi6">
                                                <div class="css-176lya2 e1uzxhvi3">
                                                    <input data-testid="input-box" id="user_pw" name="user_pw" placeholder="비밀번호를 입력해주세요" type="password" class="css-1bkd15f e1uzxhvi2" value="${update.user_pw}">
                                                    <div id="pw_check"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="css-1w0ksfz e744wfw2"></div>
                                    </div>
                                        <div class="css-1pjgd36 e744wfw6">
                                        <div class="css-1y8737n e744wfw5">
                                            <label class="css-1obgjqh e744wfw4">비밀번호확인</label>
                                        </div>
                                        <div class="css-82a6rk e744wfw3">
                                            <div class="css-jmalg e1uzxhvi6">
                                                <div class="css-176lya2 e1uzxhvi3">
                                                    <input data-testid="input-box" id="user_pw2" name="user_pw2" placeholder="비밀번호를 한번 더 입력해주세요" type="password" class="css-1bkd15f e1uzxhvi2" value="">
                                                    <div id="pw2_check"></div>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="css-1w0ksfz e744wfw2"></div>
                                        </div>
                                        <div class="css-1pjgd36 e744wfw6">
                                            <div class="css-1y8737n e744wfw5">
                                                <label class="css-1obgjqh e744wfw4">이름</label>
                                            </div>
                                            <div class="css-82a6rk e744wfw3">
                                                <div class="css-jmalg e1uzxhvi6">
                                                    <div class="css-176lya2 e1uzxhvi3">
                                                        <input data-testid="input-box" id="user_name" name="user_name" placeholder="이름을 입력해 주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="${update.user_name}">
                                                        <div id="name_check"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="css-1w0ksfz e744wfw2"></div>
                                        </div>
                                        <div class="css-1pjgd36 e744wfw6">
                                            <div class="css-1y8737n e744wfw5">
                                                <label class="css-1obgjqh e744wfw4">이메일</label>
                                            </div>
                                                <div class="css-82a6rk e744wfw3">
                                                    <div class="css-jmalg e1uzxhvi6">
                                                        <div class="css-176lya2 e1uzxhvi3">
                                                            <input data-testid="input-box" id="user_email" name="user_email" placeholder="예: goodeenara@daekigongju.com" type="email" required="" class="css-1bkd15f e1uzxhvi2" value="${update.user_email}">
                                                            <div id="email_check"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            <div class="css-1w0ksfz e744wfw2"></div>
                                        </div>
                                        <div class="css-1pjgd36 e744wfw6">
                                            <div class="css-1y8737n e744wfw5">
                                                <label class="css-1obgjqh e744wfw4">휴대폰</span>
                                                </label>
                                            </div>
                                            <div class="css-82a6rk e744wfw3">
                                                <div class="css-jmalg e1uzxhvi6">
                                                    <div class="css-176lya2 e1uzxhvi3">
                                                        <input data-testid="input-box" id="user_phone" name="user_phone" placeholder="숫자만 입력해주세요." type="tel" required="" class="css-1bkd15f e1uzxhvi2" value="${update.user_phone}">
                                                        <div id="phone_check"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="css-1w0ksfz e744wfw2"></div>
                                        </div>
                                        <div class="css-1pjgd36 e744wfw6">
                                            <div class="css-1y8737n e744wfw5">
                                                <label class="css-1obgjqh e744wfw4">우편번호</label>
                                            </div>
                                            <div class="css-82a6rk e744wfw3">
                                                <div class="css-jmalg e1uzxhvi6">
                                                    <div class="css-176lya2 e1uzxhvi3">
                                                        <input data-testid="input-box" id="user_post" name="user_post" placeholder="우편번호 입력" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="${update.user_post}">
                                                        <div id="name_check"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="css-1w0ksfz e744wfw2"></div>
                                        </div>
                                        <div class="css-1pjgd36 e744wfw6">
                                            <div class="css-1y8737n e744wfw5">
                                                <label class="css-1obgjqh e744wfw4">주소</label>
                                            </div>
                                            <div class="css-82a6rk e744wfw3">
                                                <div class="css-jmalg e1uzxhvi6">
                                                    <div class="css-176lya2 e1uzxhvi3">
                                                        <input data-testid="input-box" id="user_addr" name="user_addr" placeholder="주소검색 버튼을 눌러주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="${update.user_addr}">
                                                        <div id="name_check"></div>
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
                                                    <label class="css-1obgjqh e744wfw4">상세주소</label>
                                                </div>
                                                <div class="css-82a6rk e744wfw3">
                                                    <div class="css-jmalg e1uzxhvi6">
                                                        <div class="css-176lya2 e1uzxhvi3">
                                                            <input data-testid="input-box" id="user_addr2" name="user_addr2" placeholder="상세주소를 입력해 주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="${update.user_addr2}">
                                                            <div id="name_check"></div>
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
                                                    <!-- <div class="css-jmalg e1uzxhvi6"> -->
                                                        <!-- <div class="css-176lya2 e1uzxhvi3"> -->
                                                            <label for="userfile">
                                                                <div class="btn-upload">파일 업로드하기</div>
                                                              </label>
                                                            <input id="userfile" name="userfile" type="file" class=" e1uzxhvi2" value="${fileupdate.fileName}">
                                                            <div id="file_check"></div>
                                                        <!-- </div> -->
                                                    <!-- </div> -->
                                                </div>
                                                <div class="css-1w0ksfz e744wfw2"></div>
                                            </div>               
                                </div>
                                <div class="css-14332pf e1m8ervv0">
                                    <button class="css-ufulao " type="button" id="delbtn">
                                        <span class="css-ymwvow e4nu7ef1">탈퇴하기</span>
                                    </button>
                                    <button class="css-1qirdbn e4nu7ef3" type="button" id="upbtn">
                                        <span class="css-ymwvow e4nu7ef1">회원정보수정</span>
                                    </button>
                                </div>
                            </form>    
                        </div>           
                    </div>
    </section>
    <c:import url="../template/footer.jsp"></c:import>
    </div>
  <script src="/resources/js/mypage/mypage.js"></script>  
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
</body>
</html>