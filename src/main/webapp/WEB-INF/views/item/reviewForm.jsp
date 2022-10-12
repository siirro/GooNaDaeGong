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
                <div class="sort" style="bottom:-9px">
                    <select onchange="this.form.sortType.value=this.value;this.form.submit()">
                        <option value="LATEST">최근등록순</option>
                        <option value="LIKE">좋아요많은순</option>
                    </select>
                </div>
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
                    <th scope="col" class="input_txt">
                        <span class="screen_out">회원 등급</span>
                    </th>
                    <th scope="col" class="input_txt" align="left">작성자</th>
                    <th scope="col" class="input_txt">작성일</th>
                    <th scope="col" class="input_txt">도움</th>
                </tr>
            </tbody>
        </table>
        <div class="tr_line">
            <table class="xans-board-listheaderd tbl_newtype1" width="100%" cellpadding="0" cellspacing="0" onclick="view_content(this,event,'notice')">
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
                            공지
                        </td>
                        <td class="subject" id="subject">
                            <div>금주의 Best 후기 안내</div>
                        </td>
                        <td class="user_grade grade_comm">
                        </td>
                        <td class="user_grade">Marketkurly </td>
                        <td class="time">2019-11-01</td>
                        <td>
                            <span class="review-like-cnt" data-sno="6412655">1</span>
                        </td>
    
    
    
                    </tr>
                </tbody>
            </table>
            <div data-sno="6412655" class="review_view" id="review_view">
                <div class="inner_review">
                    <div class="name_purchase">
                        <strong class="name"></strong>
                        <p class="package"></p>
                    </div>
                    <div class="review_photo"></div>
                    ■ Best 후기 당첨자 안내<br> <br>고객님 안녕하세요, 마켓컬리입니다<br> <br>[ 2022년 09월 26일 ~ 2022년 10월 02일 ]의 Best 후기 당첨자
                    공지드립니다.<br> <br><br> <br>마켓컬리는 상품에 대한 고객 여러분의 생생한 의견을 듣고 더 나은 상품을 준비하기 위해 상품 후기 게시판을 운영하고 있습니다.<br>
                    <br>실제로 상품의 후기가 구매 결정에 있어 큰 도움이 된 best 후기를 아래로 공유드립니다.<br> <br><br> <br>정성껏 후기를 작성해주신 모든 고객님께
                    감사드립니다.<br> <br><br> <br>jungaa**** 박*아 5,000 <br> <br>mingd**** 이*정 5,000 <br> <br>purp**** 정*이 5,000
                    <br> <br>cori**** 윤*라 5,000 <br> <br>qu**** 김*진 5,000 <br> <br>amo**** 김*영 5,000 <br> <br>swa**** 이*은
                    5,000 <br> <br>min**** 강*민 5,000 <br> <br>suklove**** 이*이 5,000 <br> <br>mwl**** 수*티 5,000 <br>
                    <br>thals**** 최*연 5,000 <br> <br>momol**** 이*주 5,000 <br> <br>toh**** 양*은 5,000 <br> <br>xixn**** 송*신
                    5,000 <br> <br>ea**** 김*호 5,000 <br> <br>myfl**** 강*연 5,000 <br> <br>ks**** 김*경 5,000 <br> <br>khh****
                    김*민 5,000 <br> <br>m123456**** 김*정 5,000 <br> <br>lh**** 이*결 5,000 <br> <br>shr**** 신*리 5,000 <br>
                    <br>blessh**** 김*현 5,000 <br> <br>yano**** 손*미 5,000 <br> <br>mort**** 이*미 5,000 <br> <br>cmh95**** C*G
                    5,000 <br> <br>sulap**** 박*아 5,000 <br> <br>energ**** 김*우 5,000 <br> <br>espoi**** 박*서 5,000 <br>
                    <br>dinne**** 이*현 5,000 <br> <br>annaj**** 정*정 5,000 <br> <br>xeb**** 배*운 5,000 <br> <br>o3o**** 정*지
                    5,000 <br> <br>oprah**** 윤*경 5,000 <br> <br>gum**** 김*룡 5,000 <br> <br>em**** 조*미 5,000 <br>
                    <br>rrii**** 황*롱 5,000 <br> <br>eke**** 김*령 5,000 <br> <br>yuri**** 최*은 5,000 <br> <br>sy**** 희*야 5,000
                    <br> <br>wkd**** 구*연 5,000 <br> <br>so**** 김*정 5,000 <br> <br>jy4**** 이*영 5,000 <br> <br>ey**** 김*영
                    5,000 <br> <br>verti**** 현*영 5,000 <br> <br>sss**** 송*정 5,000 <br> <br>lmh**** 이*희 5,000 <br>
                    <br>mingd**** 이*지 5,000 <br> <br>selig**** 민*정 5,000 <br> <br>mylife**** 장*교 5,000 <br> <br>dmsal****
                    이*미 5,000 <br> <br>Juliaa**** j*0 5,000 <br> <br>bluemi**** 박*희 5,000 <br> <br>sooyoun**** 안*영 5,000
                    <br> <br>parkms**** 박*선 5,000 <br> <br>Lemongr**** 조*경 5,000 <br> <br>oh**** 오*공 5,000 <br> <br>lia****
                    R*k 5,000 <br> <br>ma**** 이*아 5,000 <br> <br>kle**** 박*현 5,000 <br> <br>eyoqwr**** 정*진 5,000 <br>
                    <br>boba**** 김*배 5,000 <br> <br>liveur**** 조*빈 5,000 <br> <br>we**** 김*희 5,000 <br> <br>ingenio**** 현*성
                    5,000 <br> <br>bellaluna**** 신*정 5,000 <br> <br>k10**** 김*미 5,000 <br> <br>mchoi**** 최*애 5,000 <br>
                    <br>ar**** 김*름 5,000 <br> <br>hungry**** 이*영 5,000 <br> <br>ar**** 이*나 5,000 <br> <br>dydtnst**** 설*순
                    5,000 <br> <br>gu**** 현*주 5,000 <br> <br>nextkit**** 안*주 5,000 <br> <br>ujin**** 윤*주 5,000 <br>
                    <br>jae**** 최*은 5,000 <br> <br>ar**** 이*나 5,000 <br> <br>miracl**** 한*경 5,000 <br> <br>ranee**** 신*란
                    5,000 <br> <br>jujak0**** 박*빈 5,000 <br> <br>To**** 오*은 5,000 <br> <br>parkyun**** 박*나 5,000 <br>
                    <br>jjy**** 전*영 5,000 <br> <br>jang**** 장*희 5,000 <br> <br>va**** 이*수 5,000 <br> <br>hms**** 박*화 5,000
                    <br> <br>Yuzomi**** 유*정 5,000 <br> <br>kbk**** 강*경 5,000 <br> <br>swe**** 이*정 5,000 <br> <br>ka**** 공*영
                    5,000 <br> <br>kj**** 김*은 5,000 <br> <br>bb**** 최*아 5,000 <br> <br>djp**** 박*정 5,000 <br> <br>ne**** 봉*현
                    5,000 <br> <br>fnqll**** 권*정 5,000 <br> <br>summer**** 김*미 5,000 <br> <br>kibou**** 조*숙 5,000 <br>
                    <br>sooyoun**** 안*영 5,000 <br> <br>Lucille97**** 원*지 5,000 <br> <br>ar**** 이*나 5,000 <br> <br>parke****
                    박*진 5,000 <br> <br><br> <br><br> <br>마켓컬리 드림.<br>
                </div>
                <div class="goods-review-grp-btn">
                </div>
            </div>
        </div>
        <div class="tr_line">
            <table class="xans-board-listheaderd tbl_newtype1" width="100%" cellpadding="0" cellspacing="0"
                onclick="view_content(this,event,'notice')">
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
                            공지
                        </td>
                        <td class="subject">
                            <div>상품 후기 적립금 정책 안내</div>
                        </td>
                        <td class="user_grade grade_comm">
                        </td>
                        <td class="user_grade">
                            Marketkurly </td>
                        <td class="time">2019-11-01</td>
                        <td>
                            <span class="review-like-cnt" data-sno="6412546">1</span>
                        </td>
    
    
    
                    </tr>
                </tbody>
            </table>
            <div data-sno="6412546" class="review_view">
                <div class="inner_review">
                    <div class="name_purchase">
                        <strong class="name"></strong>
                        <p class="package"></p>
                    </div>
                    <div class="review_photo"></div>
                    [ 금주의 Best 후기 및 상품 후기 적립금 정책 변경 안내 ]<br> <br><br> <br>고객님 안녕하세요. 마켓컬리 입니다.<br> <br>적립금 지급 정책을 안내드리니 컬리
                    이용에 참고 부탁드립니다.<br> <br><br> <br>■ 적립금 지급 정책 ■<br> <br>1. 일반 후기<br> <br> -글 후기 50원/건<br> <br> -사진 후기
                    100원/건<br> <br> *퍼플/더퍼플 러버스 고객님께는 더블 후기 적립금이 지급됩니다.<br> <br> *지급에 영업일 기준 1~2일 소요됩니다.<br> <br> → 금~일 작성
                    시, 월요일 지급<br> <br> <br><br> <br>2. 베스트 후기<br> <br> 1) 선정 건 수 : 일주일 최대 100건<br> <br> 2) 혜택 : 선정 시 적립금
                    5,000원 <br> <br> 3) 지급 일시 : 매주 수요일 (지급일이 공휴일의 경우 전 영업일)<br> <br> *당첨 ID 및 그 주의 Best 후기는 후기 게시판에서 확인하실 수
                    있습니다.<br> <br><br> <br>3. 상품 후기 게시판(Product review) 적립금 지급 유의 사항<br> <br><br> <br> 마켓컬리는 믿을 수 있는 후기문화를
                    함께 만들어가고자 합니다. 따라서 후기 내용이 아래에 해당하는 경우에는 검토 후 삭제 및 적립금 회수 조치될 수 있습니다. <br> <br><br> <br> 1. 욕설, 폭력성, 음란성,
                    상업성 등 업체나 타인에게 불쾌한 내용을 작성한 경우<br> <br> 2. 구매한 상품과 무관한 내용이나 동일 문자/단순 초성의 반복 등 부적합한 내용을 작성한 경우<br> <br> 3.
                    상품의 기능이나 효과 등에 오해의 소지가 있는 내용을 작성한 경우<br> <br> 4. 저작권, 초상권 등 타인의 권리를 침해하는 이미지, 동영상을 사용한 경우<br> <br> 5.
                    구매한 상품이 아닌 캡쳐 사진, 포장 박스 사진 등 상품과 관련 없는 이미지, 동영상을 사용한 경우<br> <br><br> <br> 또한, 비정상적인 방법을 통해 후기를 작성하고 적립금을
                    취득한 경우 작성자에 법적 책임의 소지가 있음을 알려드립니다.<br> <br><br>
                </div>
                <div class="goods-review-grp-btn">
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
                            BEST
                        </td>
                        <td class="subject">
                            <div class="fst">가격대비 고기 괜찮아요 만족! 
                                <img src="https://res.kurly.com/pc/ico/1910/ico_attach2.gif" alt="이미지가 첨부됨">
                            </div>
                            <div class="snd">가격대비 고기 괜찮아요 만족! 
                                <img src="https://res.kurly.com/pc/ico/1910/ico_attach2.gif" alt="이미지가 첨부됨">
                            </div>
                        </td>
                        <td class="user_grade grade_comm">
                            <span class="ico_grade grade1">
                                화이트 </span>
                        </td>
                        <td class="user_grade">
                            한*훈 </td>
                        <td class="time">2022-09-09</td>
                        <td>
                            <span class="review-like-cnt" data-sno="62948357">0</span>
                        </td>
    
    
    
                    </tr>
                </tbody>
            </table>
            <div data-sno="62948357" class="review_view">
                <div class="inner_review">
                    <div class="name_purchase">
                        <strong class="name">[브룩클린688] 호주산 목초육 치마살 구이용 300g (냉장)</strong>
                        <p class="package">[브룩클린688] 호주산 목초육 치마살 구이용 300g (냉장)</p>
                    </div>
                    <div class="review_photo"></div>
                    치마살인데 호주산이면 원래 싸지 않은 부위인데, 카드 할인까지 해서 꽤나 합리적인 가격에 구매했습니다. <br>그래서 큰 기대는 없었는데... 육질도 괜찮고 지방도 많지 않아서 오히려
                    담백 쫄깃하니 취향 저격이었어요. 기름기가 많지 않아 적당히 고소하고 맛있었습니다.^^
                    <br> <br>저희 집은 200도 예열된 오븐에서 5-6분 구웠습니다. 웰던을 선호하는 분이 계셔서 완전히 익혔지만, 사실 시간을 더 짧고 굵게 굽는 게 더 부드럽고 맛있을 듯 합니다.
                    취향 차이 이긴 하지만요..ㅎㅎ <br> <br> 프라이팬으로 구울 때는 중불 이상에서 3분 이내로 한 번 뒤집어 구우면 육즙 살아있고 딱 적당할 것 같네요. <br>300그램짜리라 한
                    명이 다 먹을 수 있을 양이긴 한데ㅎㅎ 밥이랑 같이 둘이 먹었어요. 만족스럽게 잘 먹었습니다!
                </div>
                <div class="goods-review-grp-btn">
                    <button type="button" class="styled-button review-like-btn" data-sno="62948357"
                        onclick="review_like('62948357',$(this));">도움이 돼요 <span class="num">0</span></button>
                </div>
            </div>
        </div>

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
        <a href="./review?item_num=${dgItemDetailDTO.item_num}">
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