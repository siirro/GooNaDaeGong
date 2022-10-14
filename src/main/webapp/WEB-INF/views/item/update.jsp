<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 수정 페이지</title>

    <!-- 상품등록페이지 css -->
    <link href="/resources/css/item/update.css" rel="stylesheet">
</head>

<body>
    <!-- Wrap Start -->
    <div class="wrap">
        <c:import url="../template/header.jsp"></c:import>

        <!-- Section Start -->
        <section class="add_content">
        
            <div class="regist_main_area">
                <div class="regist_top">
                    <div class="regist_box_top">
                        <div>상품 수정</div>
                    </div>
                    <div class="regist_box_sub">
                        <span>*필수항목</span>은 꼭 입력해주세요
                    </div>
                </div>
                <form action="update" method="post" enctype="multipart/form-data">
                <input type="hidden" name="item_num" value="${dto.item_num }">
                
                <div class="regist_box">
                    <div class="description">
                        <dl class="regist_image_dl " id="images_box" style="padding-bottom: 200px;">
                            <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt">
                                <label class="Title-dmi4ru-1 jttSce">상품 이미지</label>
                                <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                            </dt>
                            <div class="count_img">
                            </div>
                            <dd class="dd">
                                <input type="file" multiple="" class="multiple" id="multiple">
                                <img src="https://ccimage.hellomarket.com/img/web/regist/image_camera_x3.png"
                                    alt="기본 상품 등록 이미지" class="default">
                                    
                                <!-- 이미지 첨부 시 여기에 올라감 -->
                                <ul class="image_list">
                                    <c:forEach items="${dto.itemFileDTOs}" var="fileDTO">
										<div class="container_update">
											<div class="img_update">
												<img src="/resources/upload/item/${fileDTO.fileName }" class="img-thumbnail" style="width: 150px; height: 120px;">
											</div>
											<button type="button" class="fileDelete" data-file-num="${fileDTO.fileNum}">삭제</button>        
										</div>
									</c:forEach>
         <!--                            <li>
                                        <div class="up_img_box">
                                            <img src="https://ccimage.hellomarket.com/img/web/regist/image_delete_x3.png" class="img_delete_icon" alt="상품 썸네일 제거 아이콘">
                                            <img src="https://ccimg.hellomarket.com/upload_temp/kr/item/10/08/7513a5f6-7bfb-40f9-b862-73899f621015_1665225727639.png" class="item_img" alt="상품 썸네일">
                                        </div>
                                    </li>
                                     <li>
                                        <div class="up_img_box">
                                            <img src="https://ccimage.hellomarket.com/img/web/regist/image_delete_x3.png" class="img_delete_icon" alt="상품 썸네일 제거 아이콘">
                                            <img src="https://ccimg.hellomarket.com/upload_temp/kr/item/10/08/7513a5f6-7bfb-40f9-b862-73899f621015_1665225727639.png" class="item_img" alt="상품 썸네일">
                                        </div>
                                    </li> -->
                                </ul>
                            </dd>
                        </dl>
                        <dl class="regist_title" id="title">
                            <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt">
                                <label class="Title-dmi4ru-1 jttSce">상품제목</label>
                                <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                            </dt>
                            <dd>
                                <input type="text" name="item_title" class="title_input" placeholder="" value="${dto.item_title}">
                                <ul class="item_recommend_box"></ul>
                            </dd>
                        </dl>
                        <dl class="category__CategoryWrapper-sc-1qdv6sn-0 cGwZbp">
                            <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt">
                                <label class="Title-dmi4ru-1 jttSce category">카테고리</label>
                                <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                                <input type="hidden" name="cate_num" id="cate_num" value="${dto.cate_num }">
								<input type="hidden" name="cate1" id="cate1" value="${dto.cate1 }">
								<input type="hidden" name="cate2" id="cate2" value="${dto.cate2 }">
								<input type="hidden" name="cate3" id="cate3" value="${dto.cate3 }">
								<input type="hidden" name="cate4" id="cate4" value="${dto.cate4 }">
                            </dt>
                            <dd>
                                <div class="category__CategoryBox-sc-1qdv6sn-1 bedVtV">
                                    <div class="List__ListWrapper-sc-1u039ow-0 cjKPpN">
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb category1">${dto.cate1}</div>
                                    </div>
                                    <div class="List__ListWrapper-sc-1u039ow-0 IizqB">
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb category2">${dto.cate2}</div>
                                    </div>
                                    <div class="List__ListWrapper-sc-1u039ow-0 IizqB">
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb category3">${dto.cate3}</div>
                                    </div>
                                    <div class="List__ListWrapper-sc-1u039ow-0 IizqB">
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb category4">${dto.cate4 }</div>
                                    </div>
                                </div>
                                <div class="category__PickCategory-sc-1qdv6sn-6 bPiPKD"></div>
                            </dd>
                        </dl>

                        <dl class="sell_method_box">
                            <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt">
                                <label class="Title-dmi4ru-1 jttSce">가격 입력</label>
                                <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                            </dt>
                            <dd>
                                <div class="box_sell_method box_area">
                                    <div id="price" class="Price__PriceContainer-sc-160p5xs-0 kRLBoR">
                                        <div class="Price__PriceWrapper-sc-160p5xs-1 hmGxRu">
                                            <img src="https://ccimage.hellomarket.com/img/web/regist/price_icon_x3.png"
                                                class="price_icon Price__PriceImg-sc-160p5xs-2 cABIrJ" alt="가격 아이콘">
                                            <input type="text" name="item_price" placeholder="" id="item_contents" class="Price__PriceInput-sc-160p5xs-3 dHybRK" value="${dto.item_price}" style="width: 100%; height: 58px;">
                                        </div>
                                        <span class="Price__PriceDotText-sc-160p5xs-5 kKoWPv">원</span>
                                    </div>
                                </div>
                            </dd>
                        </dl>
                        <dl class="text_area" id="desc">
                            <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt">
                                <label class="Title-dmi4ru-1 jttSce">상품설명</label>
                                <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                            </dt>
                            <dd>
                                <textarea rows="5" cols="100" class="introduce" name="item_contents" placeholder="">${dto.item_contents}</textarea>
                            </dd>
                        </dl>

                    </div>
                </div>
                <div class="item_submit_box">
                    <div class="item_area_submit_box">
                        <a href="/"><button class="btn_item_cancel" type="button">취소</button></a>
                        <button class="btn_item_submit" type="submit">상품 수정 완료</button>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!--  Section End -->


        <c:import url="../template/footer.jsp"></c:import>

    </div>
    <!-- Wrap End -->

    <script src="/resources/js/dg/add.js"></script>
    <script src="/resources/js/item/category.js"></script>
    <script src="/resources/js/item/detail.js"></script>
    <script src="/resources/js/item/update.js"></script>
    <script>
        getCategory1();
        setCount(${dto.itemFileDTOs.size()});
    </script>
</body>

</html>