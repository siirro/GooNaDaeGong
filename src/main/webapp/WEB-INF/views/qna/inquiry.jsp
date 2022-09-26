<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/notice/list.css">
</head>
<body>



<!-- 본문 전체박스 -->
<div class="css-2b29tl eug5r8l5">

    <!-- 레이아웃 박스 -->
    <div class="css-luwwab eug5r8l4">

        <!-- sidebar import -->
        <c:import url="../notice/nsidebar.jsp"></c:import>
        <!-- sidebar 끝 -->

        <!-- 1:1문의 본문 -->
        <div class="css-171zbec eug5r8l3" id="qnaContents">

            <!-- 찐본문의 제목 -->
            <div class="css-1yc2nwy eug5r8l2">
                <h3 class="css-1ew6v8c eug5r8l1">1:1 문의</h3>
            </div>

            <!-- 찐본문의 본문 -->
            <div class="css-185m8ch e1153ede0">
                <form>

                    <!-- 카테고리 전체 디브 -->
                    <div class="css-17bp14q e1vbjq4w3">

                        <div class="css-mm5tap e1vbjq4w2">
                            <label data-testid="label-text">유형<span data-testid="label-required-text" class="css-hwfcu5 e1vbjq4w0">*</span>
                            </label>
                        </div>

                        <div class="css-12l4j2c e1vbjq4w1">
                            <div class="css-zjik7 epfrwk70">

                                <!-- 문의 카테고리1 -->
                                <div class="css-1a8mkrv e1u0xj870" style="margin-right: 5px;">
                                    <div>
                                        <div class="MuiFormControl-root css-tzsjye">
                                            <div variant="outlined" class="MuiOutlinedInput-root MuiInputBase-root MuiInputBase-colorPrimary MuiInputBase-formControl jss1 css-eg1co4">
                                                
                                                <div tabindex="0" role="button" aria-expanded="false" aria-haspopup="listbox" aria-label="Without label" 
                                                class="MuiSelect-select MuiSelect-outlined MuiOutlinedInput-input MuiInputBase-input css-qiwgdb">문의유형을 선택해주세요
                                                </div>

                                                <input aria-hidden="true" tabindex="-1" class="MuiSelect-nativeInput css-1k3x8v3" value="">
                                                
                                                <svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeMedium MuiSelect-icon MuiSelect-iconOutlined css-1636szt" focusable="false" 
                                                aria-hidden="true" viewBox="0 0 24 24" data-testid="ArrowDropDownIcon">
                                                    <path d="M7 10l5 5 5-5z"></path>
                                                </svg>

                                                <fieldset aria-hidden="true" class="MuiOutlinedInput-notchedOutline css-igs3ac">
                                                <legend class="css-nnbavb"><span class="notranslate">​</span></legend>
                                                </fieldset>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- 문의 카테고리2 -->
                                <div class="css-1a8mkrv e1u0xj870">
                                    <div>
                                        <div class="MuiFormControl-root css-tzsjye">
                                            <div variant="outlined" class="MuiOutlinedInput-root MuiInputBase-root MuiInputBase-colorPrimary Mui-disabled MuiInputBase-formControl jss1 css-eg1co4">
                                                
                                                <div role="button" aria-disabled="true" aria-expanded="false" aria-haspopup="listbox" aria-label="Without label" 
                                                class="MuiSelect-select MuiSelect-outlined Mui-disabled MuiOutlinedInput-input MuiInputBase-input Mui-disabled css-qiwgdb">상세유형을 선택해주세요
                                                </div>

                                                <input aria-hidden="true" tabindex="-1" disabled="" class="MuiSelect-nativeInput css-1k3x8v3" value="">
                                                <svg class="MuiSvgIcon-root MuiSvgIcon-fontSizeMedium MuiSelect-icon MuiSelect-iconOutlined Mui-disabled css-1636szt" 
                                                focusable="false" aria-hidden="true" viewBox="0 0 24 24" data-testid="ArrowDropDownIcon">
                                                    <path d="M7 10l5 5 5-5z"></path>
                                                </svg>

                                                <fieldset aria-hidden="true" class="MuiOutlinedInput-notchedOutline css-igs3ac">
                                                    <legend class="css-nnbavb">
                                                    <span class="notranslate">​
                                                    </span>
                                                    </legend>
                                                </fieldset>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- 카테고리 전체 디브 -->
                            
                            
                            
                            
                            
                    <!-- 제목 입력 -->
                    <div class="css-17bp14q e1vbjq4w3">
                        <div class="css-mm5tap e1vbjq4w2">
                            <label for="inquiry-subject" data-testid="label-text">제목<span data-testid="label-required-text" 
                                class="css-hwfcu5 e1vbjq4w0">*</span>
                            </label>
                        </div>

                        <div class="css-12l4j2c e1vbjq4w1">
                            <div class="css-1waqr6j e1uzxhvi6">
                                <div height="44" class="css-t7kbxx e1uzxhvi3">
                                    <input data-testid="input-box" id="inquiry-subject" name="subject" placeholder="제목을 입력해주세요" 
                                    type="text" height="44" class="css-n2am0u e1uzxhvi2" value="">
                                </div>
                            </div>
                        </div>

                    </div>


                    <!-- 내용 입력 -->
                    <div class="css-rm6te4 e1fgvk594">
                        <div class="css-17bp14q e1vbjq4w3">
                            <div class="css-mm5tap e1vbjq4w2">
                                <label for="inquiry-contents" data-testid="label-text">내용
                                    <span data-testid="label-required-text" class="css-hwfcu5 e1vbjq4w0">*</span>
                                </label>
                            </div>

                            <div class="css-12l4j2c e1vbjq4w1">

                                <div class="css-0 e1tjt2bn7">
                                    <div class="css-1gua357 e1tjt2bn5">
                                        <textarea id="inquiry-contents" inputmode="text" aria-label="textarea-message" name="contents" class="css-5etceh e1tjt2bn1"></textarea>
                                        
                                        <div class="placeholder css-1ofzfyp e1tjt2bn6">

                                            <div class="css-168e7y9 e1fgvk593">
                                                <strong class="css-c2iqrm e1fgvk592">1:1 문의 작성 전 확인해주세요</strong>
                                                <strong class="css-1sz9zst e1fgvk592">반품 / 환불</strong>
                                                <p class="css-1cdremq e1fgvk591">제품 하자 혹은 이상으로 반품(환불)이 필요한 경우 사진과 함께 구체적인 내용을 남겨주세요.</p>
                                                <strong class="css-1sz9zst e1fgvk592">주문취소</strong>
                                                <p class="css-1cdremq e1fgvk591">주문취소는 배송 단계별로 방법이 상이합니다.</p>
                                                <p class="css-1cdremq e1fgvk591">[주문완료] 상태일 경우에만 주문 취소 가능합니다.</p>
                                                <p class="css-1cdremq e1fgvk591">[마이컬리 &gt; 주문내역 상세페이지]에서 직접 취소하실 수 있습니다.</p>
                                                <p class="css-1cdremq e1fgvk591">생산이 시작된 [상품준비중] 이후에는 취소가 제한되는 점 고객님의 양해 부탁드립니다.</p>
                                                <p class="css-1cdremq e1fgvk591">[배송준비중] 이후에는 취소가 불가하니, 반품으로 진행해주세요. (상품에 따라 반품이 불가할 수 있습니다.)</p>
                                                <p class="css-1bawe5n e1fgvk590">주문상품의 부분취소는 불가능합니다. 전체 주문 취소 후 다시 구매 해주세요.</p>
                                                <strong class="css-1sz9zst e1fgvk592">배송</strong>
                                                <p class="css-1cdremq e1fgvk591">주문 완료 후 배송 방법(샛별/택배)은 변경이 불가능합니다.</p>

                                            </div>
                                
                                        </div>

                                        <span class="content-length-counter css-zgkz6w e1tjt2bn0">
                                        
                                            <span>
                                                <span class="css-14kcwq8 e1tjt2bn2">0자 </span>
                                                <span class="css-14kcwq8 e1tjt2bn3">/ 5000자</span>
                                            </span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- 내용입력 끝 -->
                    
                    <!-- 파일첨부 -->
                    <div class="css-17bp14q e1vbjq4w3">
                        <div class="css-mm5tap e1vbjq4w2">
                        <label data-testid="label-text"></label>
                        </div>
                        
                        <div class="css-12l4j2c e1vbjq4w1">
                            <div class="css-mlazth edd8l6o3">
                                <div class="css-g8ewo8 e9bfpi41">
                                    <div class="css-175wokr e9bfpi40">
                                        <div>
                                            <label for="photo-picker" class="css-0 e1l8vpkx2">
                                            <button type="button" class="css-j9ybaa e1l8vpkx0">
                                            <span class="css-113ip0v e1tcjz8t0"></span>
                                            </button>
                                            <input multiple="" type="file" accept="image/jpg, image/jpeg, image/png, image/bmp" class="css-eivff4 e1l8vpkx1">
                                            </label>
                                        </div>
                                    </div>

                                    <div class="css-sqqcql edd8l6o2">
                                        <div class="css-7n55a5 edd8l6o1">
                                            <span class="css-1xbds45 edd8l6o0"></span>30MB 이하의 이미지만 업로드 가능합니다.
                                        </div>

                                        <div class="css-7n55a5 edd8l6o1">
                                            <span class="css-1xbds45 edd8l6o0"></span>상품과 무관한 내용이거나 음란 및 불법적인 내용은 통보없이 삭제 될 수 있습니다.
                                        </div>
                                        
                                        <div class="css-7n55a5 edd8l6o1">
                                            <span class="css-1xbds45 edd8l6o0"></span>사진은 최대 8장까지 등록가능합니다.
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    
                    <!-- 답변수신 체크 -->
                    <div class="css-v3zc4x effwtd5">
                        <div class="css-17bp14q e1vbjq4w3">

                            <div class="css-mm5tap e1vbjq4w2">
                            <label for="inquiryAllowsNotificationCheck" data-testid="label-text">답변 수신</label>
                            </div>

                            <div class="css-12l4j2c e1vbjq4w1">
                                <div class="css-1wnowod effwtd4">
                                    <div class="css-n7yl5s effwtd3">
                                        <div class="css-bg7ww1 e1uzxhvi6">
                                            <div height="44" class="css-t7kbxx e1uzxhvi3">
                                                <input data-testid="input-box" id="inquiryAllowsNotificationCheck" disabled="" type="text" height="44" 
                                                class="css-n2am0u e1uzxhvi2" value="010-8546-****">
                                            </div>

                                        </div>
                                    </div>

                                    <div class="css-1s6b9a2 effwtd0">
                                        <label class="css-1ogv3dl e1dcessg1" for="InputAllowsNotificationCheck">
                                            <input name="allowsNotification" id="InputAllowsNotificationCheck" type="checkbox" class="css-agvwxo e1dcessg0" checked="">
                                            <img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIy
                                            NCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgI
                                            CAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTE3Ni
                                            4wMDAwMDAsIC0xMDkwLjAwMDAwMCkgdHJhbnNsYXRlKDEwMC4wMDAwMDAsIDkzNi4wMDAwMDApIHRyYW5zbGF0ZSg2MC4wMDAwMDAsIDE0
                                            Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4
                                            PSIxMiIgY3k9IjEyIiByPSIxMiIgZmlsbD0iIzVGMDA4MCIvPgogICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBz
                                            dHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjU
                                            iIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgP
                                            C9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" alt="" class="css-1wfsi82 e31wziv0">문자/알림톡 받기
                                        </label>
                                        </div>
                                    <a class="css-1ybcx6v effwtd1">개인정보 수정</a>
                                </div>

                                <div class="css-3ky9df effwtd2">
                                <span>※ 야간에도 답변 완료 알림톡이 발송 되는 점 참고 부탁드립니다.</span>
                                </div>

                            </div>
                        </div>
                    </div>


                    <!-- 등록 버튼 -->
                    <div class="css-1spu0j4 ebvrvv11">
                    <button type="submit" disabled="" class="css-13kn1it ebvrvv10">등록</button>
                    </div>

                </form>
            </div>
            <!-- 찐본문의 본문 끝 -->

        </div>
        <!-- 1대1 문의 끝 -->




    </div>
    <!-- 레이아웃 박스 끝 -->
    
    
</div>
<!-- 본문 전체 끝 -->








<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
<script src="/resources/js/notice/list.js"></script>
</body>
</html>