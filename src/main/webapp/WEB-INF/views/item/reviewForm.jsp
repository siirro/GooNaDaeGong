<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/item/reviewForm.css">
    <title>Document</title>
</head>
<body>
    <form name="frmList">
        <input type="hidden" name="sortType" value="">
        <input type="hidden" name="page_num" value="">
        <input type="hidden" name="goodsno" value="5055948">
        <div class="title_txt">
            <h2>PRODUCT REVIEW</h2>
            <div class="sort-wrap">
                <ul class="list_type1 old">
                    <li><span class="ico"></span>
                        <p class="txt">상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</p>
                    </li>
                    
                    <li><span class="ico"></span>
                        <p class="txt">배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 
                            <a href="#none" onclick="window.parent.location.href = '/mypage/inquiry/list'" class="emph">1:1 문의</a>에 남겨주세요.</p>
                    </li>
                </ul>
                <!-- 시발 넌 구현안해 빠져 -->
                <!-- <div class="sort" style="bottom:-9px">
                    <select onchange="this.form.sortType.value=this.value;this.form.submit()">
                        <option value="LATEST">최근등록순</option>
                        <option value="LIKE">좋아요많은순</option>
                    </select>
                </div> -->
            </div>
        </div>
        <table class="xans-board-listheader" width="100%" border="0" cellpadding="0" cellspacing="0">
            <caption style="display:none">구매후기 제목</caption>
            <colgroup>
                <col style="width:70px;">
                <col style="width:auto;">
                <col style="width:51px;">
                <col style="width:77px;">
                <col style="width:100px;">
                <col style="width:80px;">
            </colgroup>
            <tbody>
                <tr>
                    <th scope="col" class="input_txt">번호</th>
                    <th scope="col" class="input_txt">제목</th>
                    <!-- <th scope="col" class="input_txt">
                        <span class="screen_out">회원 등급</span>
                    </th> -->
                    <th scope="col" class="input_txt" align="left">작성자</th>
                    <th scope="col" class="input_txt">작성일</th>
                    <!-- <th scope="col" class="input_txt">도움</th> -->
                </tr>
            </tbody>
        </table>

        <div class="tr_line">
            <table class="xans-board-listheaderd tbl_newtype1" width="100%" cellpadding="0" cellspacing="0" onclick="view_content(this,event,false)">
                <caption style="display:none">구매후기 내용</caption>
                <colgroup>
                    <col style="width:70px;">
                    <col style="width:auto;">
                    <col style="width:51px;">
                    <col style="width:77px;">
                    <col style="width:100px;">
                    <col style="width:80px;">
                </colgroup>
                <tbody>
                    <tr>
                        <td align="center">
                            18352
                        </td>
                        <td class="subject">
                            <div class="fst">굿 <img src="https://res.kurly.com/pc/ico/1910/ico_attach2.gif" alt="이미지가 첨부됨">
                            </div>
                            <div class="snd">굿 <img src="https://res.kurly.com/pc/ico/1910/ico_attach2.gif" alt="이미지가 첨부됨">
                            </div>
                        </td>
                        <td class="user_grade grade_comm">
                            <span class="ico_grade grade2">
                                라벤더 </span>
                        </td>
                        <td class="user_grade">
                            윤* </td>
                        <td class="time">2022-10-06</td>
                        <td>
                            <span class="review-like-cnt" data-sno="64794711">0</span>
                        </td>
    
    
    
                    </tr>
                </tbody>
            </table>
            <div data-sno="64794711" class="review_view">
                <div class="inner_review">
                    <div class="name_purchase">
                        <strong class="name">[브룩클린688] 호주산 목초육 치마살 구이용 300g (냉장)</strong>
                        <p class="package">[브룩클린688] 호주산 목초육 치마살 구이용 300g (냉장)</p>
                    </div>
                    <div class="review_photo"></div>
                    호주산 치맛살 맛있어요~~
                </div>
                <div class="goods-review-grp-btn">
                    <button type="button" class="styled-button review-like-btn" data-sno="64794711"
                        onclick="review_like('64794711',$(this));">도움이 돼요 <span class="num">0</span></button>
                </div>
            </div>
        </div>
        <div class="tr_line">
            <table class="xans-board-listheaderd tbl_newtype1" width="100%" cellpadding="0" cellspacing="0"
                onclick="view_content(this,event,false)">
                <caption style="display:none">구매후기 내용</caption>
                <colgroup>
                    <col style="width:70px;">
                    <col style="width:auto;">
                    <col style="width:51px;">
                    <col style="width:77px;">
                    <col style="width:100px;">
    
                    <col style="width:80px;">
                </colgroup>
                <tbody>
                    <tr>
                        <td align="center">
                            18351
                        </td>
                        <td class="subject">
                            <div class="fst">맛있어요 <img src="https://res.kurly.com/pc/ico/1910/ico_attach2.gif"
                                    alt="이미지가 첨부됨"></div>
                            <div class="snd">맛있어요 <img src="https://res.kurly.com/pc/ico/1910/ico_attach2.gif"
                                    alt="이미지가 첨부됨"></div>
                        </td>
                        <td class="user_grade grade_comm">
                        </td>
                        <td class="user_grade">
                            김*애 </td>
                        <td class="time">2022-10-06</td>
                        <td>
                            <span class="review-like-cnt" data-sno="64794497">0</span>
                        </td>
    
    
    
                    </tr>
                </tbody>
            </table>
            <div data-sno="64794497" class="review_view">
                <div class="inner_review">
                    <div class="name_purchase">
                        <strong class="name">[브룩클린688] 호주산 목초육 치마살 구이용 300g (냉장)</strong>
                        <p class="package">[브룩클린688] 호주산 목초육 치마살 구이용 300g (냉장)</p>
                    </div>
                    <div class="review_photo"></div>
                    부드럽고 풍미가 좋아요
                </div>
                <div class="goods-review-grp-btn">
                    <button type="button" class="styled-button review-like-btn" data-sno="64794497"
                        onclick="review_like('64794497',$(this));">도움이 돼요 <span class="num">0</span></button>
                </div>
            </div>
        </div>
        <div class="tr_line">
            <table class="xans-board-listheaderd tbl_newtype1" width="100%" cellpadding="0" cellspacing="0"
                onclick="view_content(this,event,false)">
                <caption style="display:none">구매후기 내용</caption>
                <colgroup>
                    <col style="width:70px;">
                    <col style="width:auto;">
                    <col style="width:51px;">
                    <col style="width:77px;">
                    <col style="width:100px;">
    
                    <col style="width:80px;">
                </colgroup>
                <tbody>
                    <tr>
                        <td align="center">
                            18350
                        </td>
                        <td class="subject">
                            <div class="fst">맛있음 <img src="https://res.kurly.com/pc/ico/1910/ico_attach2.gif"
                                    alt="이미지가 첨부됨"></div>
                            <div class="snd">맛있음 <img src="https://res.kurly.com/pc/ico/1910/ico_attach2.gif"
                                    alt="이미지가 첨부됨"></div>
                        </td>
                        <td class="user_grade grade_comm">
                            <span class="ico_grade grade2">
                                라벤더 </span>
                        </td>
                        <td class="user_grade">
                            이*희 </td>
                        <td class="time">2022-10-06</td>
                        <td>
                            <span class="review-like-cnt" data-sno="64792998">0</span>
                        </td>
    
    
    
                    </tr>
                </tbody>
            </table>
            <div data-sno="64792998" class="review_view">
                <div class="inner_review">
                    <div class="name_purchase">
                        <strong class="name">[브룩클린688] 호주산 목초육 치마살 구이용 300g (냉장)</strong>
                        <p class="package">[브룩클린688] 호주산 목초육 치마살 구이용 300g (냉장)</p>
                    </div>
                    <div class="review_photo"></div>
                    부드럽고 맛있어요 굿
                </div>
                <div class="goods-review-grp-btn">
                    <button type="button" class="styled-button review-like-btn" data-sno="64792998"
                        onclick="review_like('64792998',$(this));">도움이 돼요 <span class="num">0</span></button>
                </div>
            </div>
        </div>
        <div class="tr_line">
            <table class="xans-board-listheaderd tbl_newtype1" width="100%" cellpadding="0" cellspacing="0"
                onclick="view_content(this,event,false)">
                <caption style="display:none">구매후기 내용</caption>
                <colgroup>
                    <col style="width:70px;">
                    <col style="width:auto;">
                    <col style="width:51px;">
                    <col style="width:77px;">
                    <col style="width:100px;">
    
                    <col style="width:80px;">
                </colgroup>
                <tbody>
                    <tr>
                        <td align="center">
                            18349
                        </td>
                        <td class="subject">
                            <div class="fst">ㅎㅎ </div>
                            <div class="snd">ㅎㅎ </div>
                        </td>
                        <td class="user_grade grade_comm">
                            <span class="ico_grade grade2">
                                라벤더 </span>
                        </td>
                        <td class="user_grade">
                            정*미 </td>
                        <td class="time">2022-10-06</td>
                        <td>
                            <span class="review-like-cnt" data-sno="64792803">0</span>
                        </td>
    
    
    
                    </tr>
                </tbody>
            </table>
            <div data-sno="64792803" class="review_view">
                <div class="inner_review">
                    <div class="name_purchase">
                        <strong class="name">[브룩클린688] 호주산 목초육 치마살 구이용 300g (냉장)</strong>
                        <p class="package">[브룩클린688] 호주산 목초육 치마살 구이용 300g (냉장)</p>
                    </div>
                    <div class="review_photo"></div>
                    고소해요 ㅎㅎㅎㅎㅎㅎ
                </div>
                <div class="goods-review-grp-btn">
                    <button type="button" class="styled-button review-like-btn" data-sno="64792803"
                        onclick="review_like('64792803',$(this));">도움이 돼요 <span class="num">0</span></button>
                </div>
            </div>
        </div>
    </form>
    
    <p class="btnArea after">
        <a href="./review?item_num=${dto.item_num}">
            <span class="bhs_button" style="line-height:30px; width:130px;">후기쓰기</span>
        </a>
    </p>
    
    <div class="board_pg_area">
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=1" class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a>
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=1" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
        <strong class="layout-pagination-button layout-pagination-number __active">1</strong>
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=2" class="layout-pagination-button layout-pagination-number">2</a>
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=3" class="layout-pagination-button layout-pagination-number">3</a>
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=4" class="layout-pagination-button layout-pagination-number">4</a>
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=5" class="layout-pagination-button layout-pagination-number">5</a>
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=6" class="layout-pagination-button layout-pagination-number">6</a>
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=7" class="layout-pagination-button layout-pagination-number">7</a>
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=8" class="layout-pagination-button layout-pagination-number">8</a>
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=9" class="layout-pagination-button layout-pagination-number">9</a>
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=10" class="layout-pagination-button layout-pagination-number">10</a>
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=2" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a>
        <a href="/shop/goods/goods_review_list.php?goodsno=5055948&amp;page=2623" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
    </div>

</body>
</html>