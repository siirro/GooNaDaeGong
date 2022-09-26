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
    <!-- QNA입력 내용 -->
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

    <!-- 마켓컬리 문의 카테고리1 -->
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