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
    <link rel="stylesheet" href="/resources/css/member/logintest.css">
</head>
<body>
	<div class="wrap">
	    <c:import url="../template/header.jsp"></c:import>
	    <section>
	        <div class="css-1bb6q2p etkckst2">
	            <div class="css-a7gihu etkckst1">로그인</div>
	            <div class="css-10zt1af etkckst0">
	                <form>
	                    <div class="css-46b038 e18ap6t76">
	                        <div class="css-1accgqb e1uzxhvi6">
	                            <div class="css-176lya2 e1uzxhvi3">
	                                <input data-testid="input-box" name="id" placeholder="아이디를 입력해주세요" type="text" class="css-1bkd15f e1uzxhvi2" value="">
	                            </div>
	                        </div>
	                        <div class="css-1accgqb e1uzxhvi6">
	                            <div class="css-176lya2 e1uzxhvi3">
	                                <input data-testid="input-box" name="password" placeholder="비밀번호를 입력해주세요" type="password" autocomplete="off" class="css-1bkd15f e1uzxhvi2" value="">
	                            </div>
	                        </div>
	                    </div>
	                    <div class="css-1vjdduq e18ap6t75">
	                        <a class="css-i4t6me e18ap6t74">아이디 찾기</a>
	                        <span class="css-1cgn39v e18ap6t73"></span>
	                        <a class="css-i4t6me e18ap6t74">비밀번호 찾기</a>
	                    </div>
	                    <div class="css-s4i9n2 e18ap6t71">
	                        <button class="css-qaxuc4 e4nu7ef3" type="submit" height="54" radius="3">
	                            <span class="css-ymwvow e4nu7ef1">로그인</span>
	                        </button>
	                        <button class="css-hxorrg e4nu7ef3" type="button" height="54" radius="3">
	                            <span class="css-ymwvow e4nu7ef1">회원가입</span>
	                        </button>
	                    </div>
	                </form>
	            </div>
	        </div>
	    </section>
	   <c:import url="../template/footer.jsp"></c:import>
	</div>
</body>
</html>