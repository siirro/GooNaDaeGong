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
        <div class="accordion" id="accordionExample">
          <div class="accordion-item">
          <c:forEach items="${list}" var="dto" varStatus="i">
            <div class="accordion accordion-flush" id="accordionFlushExample">
              <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne${i.index}">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne${i.index}" aria-expanded="false" aria-controls="flush-collapseOne${i.index}">
                    <svg class="bd-placeholder-img flex-shrink-0 me-4 rounded" width="40" height="40" xmlns="http://www.w3.org/2000/svg" role="img" preserveAspectRatio="xMidYMid slice" focusable="false">
                      <image href="/resources/upload/member/${dto.fileName}" width="100%" height="100%"/>
                    </svg>
                    <div class="d-flex justify-content-between">
                      <i class="bi bi-star-fill" style="color: #6667AB; font-size: 20px;"></i>
                      <i class="bi bi-star-fill" style="color: #6667AB; font-size: 20px;"></i>
                      <i class="bi bi-star-fill" style="color: #6667AB; font-size: 20px;"></i>
                      <i class="bi bi-star-fill" style="color: #6667AB; font-size: 20px;"></i>
                      <i class="bi bi-star-fill" style="color: #6667AB; font-size: 20px;"></i>
                        <strong class="mx-4 text-dark" style="font-size: 18px;">${dto.rv_title}</strong>
                    </div>
                    <div style="font-size: 15px; position: absolute; right: 60px;">${dto.user_id} &nbsp | &nbsp ${dto.rv_date}</div>
                  </button>
                </h2>
                <div id="flush-collapseOne${i.index}" class="accordion-collapse collapse" aria-labelledby="flush-headingOne${i.index}" data-bs-parent="#accordionFlushExample">
                  <svg class="bd-placeholder-img flex-shrink-0 me-4 m-4" width="200" height="200" xmlns="http://www.w3.org/2000/svg" role="img"  preserveAspectRatio="xMidYMid slice" focusable="false">
                    <image href="/resources/upload/member/${dto.rv_file}" width="100%" height="100%"/>
                  </svg>
                  <div class="accordion-body">${dto.rv_contents}</div>
              <div class="mt-3 d-grid gap-2 d-md-flex btn-sm justify-content-md-end">
                <span class="m-3"> 
                <a id="update" class="btn" style="background-color: #6667AB; color: white!important; --bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;"
                  href="update?item_num=${dto.item_num }">수정</a>
                <a id="delete" class="btn" style="background-color: #6667AB; color: white!important; --bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;"
                  href="delete?item_num=${dto.item_num }">삭제</a> 
                </span>
              </div>
                </div>
              </div>
            </div>
          </c:forEach>
        </div>
      </div>
    </form>



    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">후기쓰기</button>
    
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
                <input type="file" name="rv_file" id="fileName">
              </div>
            
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" >Close</button>
            <button type="submit" class="review btn btn-primary" id="reviewBtn">등록하기</button>
          </div>
        </div>
      </div>
    </div>
    <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>
    <script src="/resources/js/item/detail.js"></script>
</body>
</html>



