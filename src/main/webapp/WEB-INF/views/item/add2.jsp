<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 등록 페이지</title>

    <!-- 상품등록페이지 css -->
    <link href="/resources/css/item/add.css" rel="stylesheet">
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
                        <div>상품 등록</div>
                    </div>
                    <div class="regist_box_sub">
                        <span>*필수항목</span>은 꼭 입력해주세요
                    </div>
                </div>
                <div class="regist_box">
                    <div class="description">
                        <dl class="regist_image_dl " id="images_box" style="padding-bottom: 200px;">
                            <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt">
                                <label class="Title-dmi4ru-1 jttSce">상품 이미지</label>
                                <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                            </dt>
                            <div class="count_img">
                                (<span>0</span>/5)
                            </div>
                            <dd class="dd">
                                <input type="file" multiple="" class="multiple" id="multiple">
                                <img src="https://ccimage.hellomarket.com/img/web/regist/image_camera_x3.png"
                                    alt="기본 상품 등록 이미지" class="default">
                                    
                                <!-- 이미지 첨부 시 여기에 올라감 -->
                                <ul class="image_list">
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
                                <input type="text" name="title" class="title_input" placeholder="상품 제목을 입력해주세요"
                                    value="">
                                <ul class="item_recommend_box"></ul>
                            </dd>
                        </dl>
                        <dl class="category__CategoryWrapper-sc-1qdv6sn-0 cGwZbp">
                            <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt">
                                <label class="Title-dmi4ru-1 jttSce category">카테고리</label>
                                <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                            </dt>
                            <dd>
                                <div class="category__CategoryBox-sc-1qdv6sn-1 bedVtV">
                                    <div class="List__ListWrapper-sc-1u039ow-0 cjKPpN">
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb">스마트폰</div>
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb">태블릿</div>
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb">MagSafe</div>
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb">웨어러블</div>
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb">충전용품</div>
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb">차량용품</div>
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb">여행용품</div>
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb">생활용품</div>
                                        <div class="Text__TextWrapper-easj65-0 iJdpqb">콜라보레이션</div>
                                    </div>
                                    <div class="List__ListWrapper-sc-1u039ow-0 IizqB"></div>
                                </div>
                                <div class="category__PickCategory-sc-1qdv6sn-6 bPiPKD"></div>
                            </dd>
                        </dl>
                        <dl class="regist_condition" id="condition">
                            <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt">
                                <label class="Title-dmi4ru-1 jttSce">상품컨디션</label>
                                <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                            </dt>
                            <dd>
                                <div class="itemStatus_description">판매할 상품의 컨디션을 선택해 주세요!</div>
                                <ul class="item_status_list">
                                    <li class="item_status">
                                        <div class="text_wrapper">새 상품(미개봉)</div>
                                    </li>
                                    <li class="item_status">
                                        <div class="text_wrapper">거의 새상품</div>
                                    </li>
                                    <li class="item_status">
                                        <div class="text_wrapper">사용감 있는 깨끗한 상품</div>
                                    </li>
                                    <li class="item_status">
                                        <div class="text_wrapper">사용 흔적이 많이 있는 상품</div>
                                    </li>
                                </ul>
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
                                            <input type="text" name="price" placeholder="숫자를 입력해주세요" class="Price__PriceInput-sc-160p5xs-3 dHybRK" value="" style="width: 100%; height: 58px;">
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
                                <textarea rows="5" cols="100" class="introduce"
                                    placeholder="상품의 상태를 정확하게 알 수 있는 여러 장의 상품사진과 구입연도, 브랜드, 사용감, 하자 유무 등 구매자에게 필요한 정보를 꼭 포함해 주세요! 문의를 줄이고 더 쉽게 판매할 수 있어요."></textarea>
                            </dd>
                        </dl>

                        <dl class="regist_condition" id="condition">
                            <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt">
                                <label class="Title-dmi4ru-1 jttSce">판매방식</label>
                                <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                            </dt>
                            <dd>
                                <div class="itemStatus_description">판매방식을 선택해 주세요!</div>
                                <ul class="item_status_list">
                                    <li class="item_status">
                                        <div class="text_wrapper">안전거래</div>
                                    </li>
                                    <li class="item_status">
                                        <div class="text_wrapper">직거래</div>
                                    </li>
                                </ul>
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="item_submit_box">
                    <div class="item_area_submit_box">
                        <a href="/"><button class="btn_item_cancel" type="button">취소</button></a>
                        <button class="btn_item_submit" type="button">상품 등록 완료</button>
                    </div>
                </div>
            </div>
        </section>
        <!--  Section End -->


        <c:import url="../template/footer.jsp"></c:import>

    </div>
    <!-- Wrap End -->

    <script src="/resources/js/dg/add.js"></script>
</body>

</html>