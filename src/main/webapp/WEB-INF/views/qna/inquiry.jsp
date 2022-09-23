<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>구디나라</title>
</head>
<body>
    
    <!-- 본문 -->
    <div>
        <!-- 본문 -->
        <div class="qna-form col-lg-7">
            <div class="p-5">
                <div class="qna-title text-center">
                    <h1 class="h4 text-gray-900 mb-4">1:1 문의</h1>
                </div>
                <form class="addQna">
                    <div class="form-group row">
                        <!-- 네임 = ${session.user_id} -->
                        <input type="hidden" name="">
                        <!-- 네임 = ${code}-->
                        <input type="hidden" name="">
                        <div class="col-sm-6">
                            카테고리 <input type="text" class="form-control form-control-user" name="qna_cate"
                                placeholder="카테">
                        </div>

                        <div class="col-sm-6 mb-3 mb-sm-0">
                            제목 <input type="text" class="form-control form-control-user" name="qna_title"
                                placeholder="제목">
                        </div>
 
                    </div>

                    <div class="form-group">
                        내용 <input type="email" class="form-control form-control-user" name="qna_contents"
                            placeholder="내용">
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-6 mb-3 mb-sm-0">
                            <input type="password" class="form-control form-control-user"
                                id="exampleInputPassword" placeholder="Password">
                        </div>
                        <div class="col-sm-6">
                            <input type="password" class="form-control form-control-user"
                                id="exampleRepeatPassword" placeholder="Repeat Password">
                        </div>
                    </div>
                    
                </form>
                <hr>
                <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                </div>
                <div class="text-center">
                    <a class="small" href="login.html">Already have an account? Login!</a>
                </div>
            </div>
        </div>


    </div>
    <!-- 본문끝 -->




</body>
</html>