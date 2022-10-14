<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>상품 등록 페이지</title>

            <!-- 상품등록페이지 css -->
            <link href="/resources/css/item/add.css" rel="stylesheet">
            <link href="/resources/css/manager/sb-admin-2.css" rel="stylesheet">
        </head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

        <body>
            <!-- Page Wrapper -->
    <div id="wrapper">
            <!-- 사이드바 임포트 -->
            <c:import url="../manager/template/sidebar.jsp"></c:import>
            <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- 탑바 임포트 -->
                <c:import url="../manager/template/topbar.jsp"></c:import>

            <div class="layout__Children-sc-1fg0dfe-2 hmtAob">
                <section class="content">
                    <div class="regist_main_area">
                        <div class="regist_top">
                            <div class="regist_box_top">
                                <div>상품 등록</div>
                            </div>
                            <div class="regist_box_sub"><span>*필수항목</span>은 꼭 입력해주세요</div>
                        </div>
                        <form action="add" method="post" enctype="multipart/form-data">
                            <div class="regist_box">
                                <div class="description">
                                    <dl class="regist_image_dl" id="images_box">
                                        <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt">

                                            <label class="Title-dmi4ru-1 jttSce mt-4">상품 이미지
                                                <span class="Title__EssentialMark-dmi4ru-2 jXKHON">*</span>
                                                <div><button class="btn_item_submit mt-3"
                                                        style=" width: 90px; height: 40px; border-radius:5px; font-size: 15px; padding:1%"
                                                        type="button" id="button">이미지 등록</button></div>
                                            </label>
                                        </dt>

                                        <dd id="fileAdd">

                                        </dd>

                                    </dl>
                                    <dl class="regist_title" id="title">
                                        <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt"><label
                                                class="Title-dmi4ru-1 jttSce">상품제목</label>
                                            <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                                        </dt>
                                        <dd><input type="text" name="item_title" class="title_input"
                                                placeholder="상품 제목을 입력해주세요" value="">
                                            <ul class="item_recommend_box"></ul>
                                        </dd>
                                    </dl>
                                    <dl id="category" class="category__CategoryWrapper-sc-1qdv6sn-0 cGwZbp">
                                        <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt"><label
                                                class="Title-dmi4ru-1 jttSce">카테고리</label>
                                            <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                                        </dt>
                                        <dd>
                                            <div id="category" class="category__CategoryBox-sc-1qdv6sn-1 bedVtV">
                                                <select id="category1">
                                                    <option hidden>선택</option>
                                                </select> <select id="category2">
                                                    <option hidden>선택</option>
                                                </select> <select id="category3">
                                                    <option hidden>선택</option>
                                                </select> <select id="category4">
                                                    <option hidden>선택</option>
                                                </select> <input type="hidden" name="cate_num" id="cate_num" value="">
                                                <input type="hidden" name="cate1" id="cate1" value=""> <input
                                                    type="hidden" name="cate2" id="cate2" value=""> <input type="hidden"
                                                    name="cate3" id="cate3" value=""> <input type="hidden" name="cate4"
                                                    id="cate4" value="">
                                            </div>


                                            <div class="MobileCategory__MobileCategoryWrapper-sc-1vuk5mp-0 jkOkZp">
                                                <div class="MobileCategory__CategoryBox-sc-1vuk5mp-1 jwRosb">
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <dl class="sell_method_box">
                                        <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt"><label
                                                class="Title-dmi4ru-1 jttSce">재고 수량</label>
                                            <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                                        </dt>
                                        <dd>
                                            <div class="box_sell_method box_area">
                                                <div id="price" class="Price__PriceContainer-sc-160p5xs-0 kRLBoR">
                                                    <div class="Price__PriceWrapper-sc-160p5xs-1 eeIDfH">
                                                        <input type="text" name="item_stock" class="title_input"
                                                            placeholder="수량을 입력해주세요" style="width: 200px;" value="">
                                                    </div>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>
                                    <dl class="sell_method_box">
                                        <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt"><label
                                                class="Title-dmi4ru-1 jttSce">가격 입력</label>
                                            <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                                        </dt>
                                        <dd>
                                            <div class="box_sell_method box_area">
                                                <div id="price" class="Price__PriceContainer-sc-160p5xs-0 kRLBoR">
                                                    <div class="Price__PriceWrapper-sc-160p5xs-1 eeIDfH">
                                                        <input type="text" name="item_price" class="title_input"
                                                            placeholder="가격을 입력해주세요" style="width: 200px;" value="">
                                                    </div><span
                                                        class="Price__PriceDotText-sc-160p5xs-5 kKoWPv"><b>&nbsp원</b></span>
                                                </div>
                                            </div>
                                        </dd>
                                    </dl>

                                    <dl class="text_area" id="desc">
                                        <dt class="Title__TitleWrapper-dmi4ru-0 bgOTQt"><label
                                                class="Title-dmi4ru-1 jttSce">상품설명</label>
                                            <div class="Title__EssentialMark-dmi4ru-2 jXKHON">*</div>
                                        </dt>
                                        <dd><textarea name="item_contents" rows="10" class="introduce"
                                                style="width: 800px;"
                                                placeholder="상품의 상태를 정확하게 알 수 있는 여러 장의 상품사진과 구입연도, 브랜드, 사용감, 하자 유무 등 구매자에게 필요한 정보를 꼭 포함해 주세요! 문의를 줄이고 더 쉽게 판매할 수 있어요."></textarea>
                                        </dd>
                                    </dl>

                                </div>
                            </div>
                            <div class="item_submit_box">
                                <div class="item_area_submit_box"><a href="/"><button class="btn_item_cancel"
                                            type="button">취소</button></a>
                                    <button class="btn_item_submit" type="submit">상품 등록 완료</button>
                                </div>
                            </div>
                    </div>
                    </form>
                </section>

            </div>
        </div>
        <!-- End of Main Content -->

        <!-- footer 임포트 -->
        <c:import url="../manager/template/footer.jsp"></c:import>


    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
                crossorigin="anonymous"></script>
            <script src="/resources/js/item/add.js"></script>
            <script src="/resources/js/item/category.js"></script>
            <script>
                getCategory1();
            </script>
               <!-- Bootstrap core JavaScript-->
    <!-- <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->
    <script src="/resources/vendor/managerboot/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/managerboot/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/managerboot/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/manager/sb-admin-2.min.js"></script>
        </body>

        </html>