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
   <link rel="stylesheet" href="/resources/css/member/findtest.css">
</head>
<body>
	<div class="wrap">
	<c:import url="../template/header.jsp"></c:import>
    <section>
        <div class="css-140915z e13dlrpy2">
            <div class="css-7500ra e13dlrpy0">아이디 찾기</div>
            <div class="css-u3y03b e13dlrpy1">
                <form class="css-s3iz85 e1mnvs534" action="findID">
                    <div class="css-1blp8ou e1mnvs533">
                        <div class="css-1yjqrpx e1uzxhvi6">
                            <label for="user_name" class="css-c3g9of e1uzxhvi4">이름</label>
                            <div class="css-176lya2 e1uzxhvi3">
                                <input data-testid="input-box" id="user_name" name="user_name" placeholder="이름을 입력해 주세요" type="text" class="css-1bkd15f e1uzxhvi2" value="">
                                <div id="name_check"></div>
                            </div>
                        </div>
                        <!-- <p class="css-1ozil7i e1revjhv0">가입 시 등록한 이름을 입력해 주세요.</p> -->
                    </div>
                    <div class="css-1blp8ou e1mnvs533">
                        <div class="css-1yjqrpx e1uzxhvi6">
                            <label for="user_phone" class="css-c3g9of e1uzxhvi4">휴대폰 번호</label>
                            <div height="46" class="css-1iilz1t e1uzxhvi3">
                                <input data-testid="input-box" id="user_phone" name="user_phone" placeholder="휴대폰 번호를 입력해 주세요" type="tel" height="46" class="css-189shdi e1uzxhvi2" value="">
                                <div id="phone_check"></div>
                            </div>
                        </div>
                        <!-- <p class="css-1ozil7i e1revjhv0">가입 시 등록한 휴대폰 번호를 입력해 주세요.</p> -->
                    </div>
                    <div class="css-3vxi16 e1mnvs530">
                          <!-- Button trigger modal -->
	                    <button type="button" data-bs-toggle="modal" data-bs-target="#findIDModal" class="css-1s9rhb5 e4nu7ef3" radius="4" id="findbtn">FIND</button>
                         <!-- Modal -->
	                    <div class="modal fade" id="findIDModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	                        <div class="modal-dialog">
	                            <div class="modal-content">
	                                <div class="modal-header">
	                                    <h5 class="modal-title" id="exampleModalLabel">아이디 찾기</h5>
	                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                                </div>
	                                <div class="modal-body" id="modalbody">
	                                    ${find.user_id}
	                                </div>
	                                <div class="modal-footer">
	                                    <button type="button"  class="css-1s9rhb5 e4nu7ef3" radius="4" onClick="location.href='./login'">로그인</button>
	                                    <button type="button" class="css-1s9rhb5 e4nu7ef3" radius="4" onclick="location.href='/member/findPW'">비밀번호 찾기</button>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <c:import url="../template/footer.jsp"></c:import>
	</div>
    <script src="/resources/js/member/findID.js"></script>
</body>
</html>