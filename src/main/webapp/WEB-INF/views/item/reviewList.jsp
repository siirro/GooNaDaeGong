<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/item/reviewForm.css">
    <title>Document</title>
    
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
</head>
<body>
    <form name="frmList">
        <div class="title_txt">
            <h2 >PRODUCT REVIEW</h2>
        </div>
        <table class="xans-board-listheader" width="100%"  cellpadding="0" cellspacing="0">
    <c:forEach items="${list}" var="dto">
			<div class="d-flex text-muted pt-3 mx-2">
				<svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="50" height="50" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false">
					<image href="/resources/upload/member/${dto.fileName}" width="100%" height="100%"/>
				</svg>
			
				<div class="mx-3 pb-2 small border-bottom w-100">
					<div class="d-flex justify-content-between">
					<div>
					<i class="bi bi-star-fill" style="color: #6667AB; font-size: 15px;"></i>
					<i class="bi bi-star-fill" style="color: #6667AB; font-size: 15px;"></i>
					<i class="bi bi-star-fill" style="color: #6667AB; font-size: 15px;"></i>
					<i class="bi bi-star-fill" style="color: #6667AB; font-size: 15px;"></i>
					<i class="bi bi-star-fill" style="color: #6667AB; font-size: 15px;"></i>
						<strong class="mx-2 text-dark" style="font-size: 18px;">${dto.rv_title}</strong>
					</div>
						<div>
							<div><i class="bi bi-hand-thumbs-up"></i> 도움돼요</div>
							<div><i class="bi bi-hand-thumbs-down"></i> 도움안돼요</div>
						</div>   123123.00.
					</div>
					<span class="d-block" style="font-size: 15px;">${dto.user_id}	|	${dto.rv_date}</span>
				</div>
			</div>
		</c:forEach>







		</table>
    </form>
    
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">후기쓰기</button>
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" id="update" data-bs-whatever="@mdo">수정</button>
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" id="delete"  data-bs-whatever="@mdo">삭제</button>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="exampleModalLabel">리뷰 작성</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            
              <div class="mb-3">
                <label for="rv_title" class="col-form-label">제목</label>
                <input type="text" class="form-control" id="rv_title" name="rv_title">
              </div>
              <div class="mb-3">
                <label for="rv_contents" class="col-form-label">내용</label>
                <textarea class="form-control" id="rv_contents" name="rv_contents"></textarea>
              </div>
              <div class="mb-3">
                <label for="rv_star" class="col-form-label">상품 만족도</label>
                <input type="text" class="form-control" id="rv_star" name="rv_star">
              </div>
              <div class="mb-3">
                <label for="rv_file" class="col-form-label">사진 첨부</label>
                <input type="file" name="rv_file" id="rv_file">
              </div>
            
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" >Close</button>
            <button type="button" class="review btn btn-primary" id="reviewBtn">등록하기</button>
          </div>
        </div>
      </div>
    </div>
    <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
    <script src="/resources/js/item/review.js"></script>
</body>
</html>



