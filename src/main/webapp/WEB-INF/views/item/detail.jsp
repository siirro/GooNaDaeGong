<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/css/item/detail.css">
<title>상세페이지</title>
<style>
	a {
		color: black !important;
	}
</style>
</head>
<body>
	<!-- Wrap Start -->
	<div class="wrap">
		<c:import url="../template/header.jsp"></c:import>

		<!-- Section Start -->
		<section>
			<main class="content_buy">
				<div class="item_list_area">
					<div class="item_list_area_box">
						<div class="breadcrumbs">
							<div class="container_buy">
								<div><a href="/">HOME</a></div>
								<div><a href="../dgItem/list?cate_num="${dgItemDetailDTO.category.cate_num}>&gt; <span class="cate4">${dgItemDetailDTO.category.cate_name}</span></a></div>
							</div>
						</div>
						<div class="main_area">
							<div class="main_area_center">
								<section class="main">
									<div class="detail_box">
										<article class="detail_box_top">
											<section class="detail_top_area">
												<div class="photo_area">
													<div class="large_img">
														<div class="item-image__ImgBox-sc-1o2byye-0 dMmKaI">
															<div class="swiper-container swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events"
																modules="[object Object],[object Object],[object Object]">
																<div class="swiper-button-prev "></div>
																<div class="swiper-button-next "></div>
																<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
																	<div class="swiper-slide swiper-slide-active"
																		style="width: 460px;">
																		<div class="swiper-container">
																			<div class="swiper-wrapper">
																				<div class="badeagle">
																					<div class="centered">
                                                                                        <img alt="상세 이미지 "
																							class="view thumbnail_img mainItemImg"
																							src="../resources/upload/item/${dto.itemFileDTOs[0].fileName}" >
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
													<div class="als_image_viewport">
														<div class="als_prev"></div>
														<div class="als_container">
															<div class="als_item als_normal_item">
																<a>
																	<img alt="작은 썸네일 이미지" class="thumbnail_img" src="https://ccimg.hellomarket.com/images/2022/item/10/03/13/5822435_5255763_1.jpg?size=s6">
																</a>
															</div>

															<div class="als_item als_item_other">
																<a>
																	<img alt="작은 썸네일 이미지" class="thumbnail_img" src="https://ccimage.hellomarket.com/web/2019/item/img_itemdetails_thumbnail_noimage50x50_x2.png">
																</a>
															</div>
															<div class="als_item als_item_other">
																<a>
																	<img alt="작은 썸네일 이미지" class="thumbnail_img" src="https://ccimage.hellomarket.com/web/2019/item/img_itemdetails_thumbnail_noimage50x50_x2.png">
																</a>
															</div>
															<div class="als_item als_item_other">
																<a>
																	<img alt="작은 썸네일 이미지" class="thumbnail_img" src="https://ccimage.hellomarket.com/web/2019/item/img_itemdetails_thumbnail_noimage50x50_x2.png">
																</a>
															</div>
															<div class="als_item als_item_other">
																<a>
																	<img alt="작은 썸네일 이미지" class="thumbnail_img" src="https://ccimage.hellomarket.com/web/2019/item/img_itemdetails_thumbnail_noimage50x50_x2.png">
																</a>
															</div>
															<div class="als_item als_item_other">
																<a>
																	<img alt="작은 썸네일 이미지" class="thumbnail_img" src="https://ccimage.hellomarket.com/web/2019/item/img_itemdetails_thumbnail_noimage50x50_x2.png">
																</a>
															</div>
														</div>
														<div class="als_next"></div>
													</div>
												</div>
												<div class="item_info">
													<div class="item_title_area">
														<span class="item_tag">
															<!-- <span class="used_type_tag">거의 새상품</span> -->
																<!-- <span class="delivery_tag used_type_tag_active active used_type_tag_active">무료배송</span> -->
																<span class="share_box item_share_box">
																	<img  src="https://ccimage.hellomarket.com/web/2018/item/btn_share_16x16_x2.png" alt="공유이미지" class="share_icon">
																</span>
															<div class="registration_date_box">
																<fmt:formatDate value="${dto.item_date}" pattern="yy/MM/dd" /> ·<span class="">찜 0 </span>
															</div>
														</span>
													</div>
													<h1 class="H1-sc-1jnmmbn-0 lUWLJ">
														<span class="item_title">${dto.item_title }</span>
													</h1>
													<div class="item_price_box item_price_box_bottom">
														<div class="item_price_box_bottom_low">
															<div class="item_price item_price_bottom">
																<span>${price}원</span>
															</div>
														</div>
														<div class="description_hellopay  only_hellopay_area">
															<table  class="detail_table">
																<tbody>
																	<tr class="first">
																		<td class="title">거래방법</td>
																		<td class="description" style="padding-bottom: 3px;">카드, 네이버페이, 카카오페이</td>
																	</tr>
																	<tr>
																		<td class="title">배송비</td>
																		<td class="description">3만원 이상 시 무료배송</td>
																	</tr>
																	<tr>
																		<td class="title">배송 방법</td>
																		<td class="description">택배</td>
																	</tr>
																	<tr>
																		<td class="title">남은 갯수</td>
																		<td class="description"><span>${dgItemDetailDTO.item_stock}</span>개</td>
																	</tr>
																</tbody>
															</table>

															<div class="bd_2cuha">
																<button type="button" class="bd_EZ05h bd_3ex46 bd_2jhSJ N=a:pcs.quantity" disabled="">
																	<span class="blind">수량 빼기</span>
																</button>

																<input type="number" class="bd_2eiJL N=a:pcs.quantity" value="1">
																
																<button type="button" class="bd_EZ05h bd_2nJMW N=a:pcs.quantity">
																	<span class="blind">수량 추가</span>
																</button>
															</div>

															<div class="bd_2qCsT bd_xMsL8 bd_7h93m">
																<strong class="bd_28JKM">총 상품 금액</strong>
																<div class="bd_CVTqI" style="margin:4px 0 0 6px">
																	<button type="button" class="bd_32dL8 N=a:pcs.price" aria-haspopup="true" aria-expanded="false">
																		<svg xmlns="http://www.w3.org/2000/svg" width="6" height="8" class="bd_3GYLw">
																			<path fill="#5f5f5f" fill-rule="evenodd" d="M5 3v1H4v2H2V4h1V3h1V1H2v1H0V1h1V0h4v1h1v2H5zM4 8H2V7h2v1z"></path>
																		</svg>
																		<span class="blind">도움말</span>
																	</button>
																	<div class="bd_y5n6u bd_2ZJCl bd_2K79u" style="display:none">
																		<i class="bd_1XGXQ"></i>
																		<button type="button" class="bd_3gqWB">
																			<svg xmlns="http://www.w3.org/2000/svg" width="11" height="11" viewBox="0 0 17 17" class="bd_K4Ce9">
																				<path fill-rule="evenodd" d="M16.272 0L8.5 7.772.728 0 0 .728 7.772 8.5 0 16.272.728 17 8.5 9.228 16.272 17l.728-.728L9.228 8.5 17 .728 16.272 0z"></path>
																			</svg>
																			<span class="blind">닫기</span>
																		</button>
																	</div>
																</div>
																<div class="bd_3XvVU">
																	<em class="bd_1hU3G">총 수량 <!-- -->5<!-- -->개</em>
																	<strong class="bd_1Ukv5 bd_2WCtq">
																		<span class="bd_32Qz_">157,500 원</span>
																	</strong>
																</div>
															</div>
															<!-- <div class="notice_text_box big">
																<span>
																	<div class="highlight_method">
																		<span class="highlight_notice">직거래 유도 주의안내</span>
																	</div>

																	<div class="notice_text">대기공주는 안전결제 거래만 가능합니다. <br>
																		계좌입금 및 직거래를 유도하는 경우 대기공주로 신고 바랍니다. <br>
																		안전거래 외 거래는 사기피해 보호를 받을 수 없습니다.</div>
																</span>
															</div> -->
															<div style="margin-top: 0px;"></div>
														</div>
														<div class="item_sns item_detail_sns">
															<div class="item_hello_box">
																<div class="item_hello_box_talk">
																	<div class="wish_img_box">
																		<img src="https://ccimage.hellomarket.com/web/2018/item/ico_zzim.png" alt="찜하기이미지" class="wish_icon">
																	</div>

																	<button type="button"class="hello_talk_btn canpayment_hello_talk_btn">장바구니</button>
																</div>
																<div class="item_hello_box_pay item_hello_box_chat_pay">
																	<button type="button" class="hello_pay_btn">구매</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</section>
											<section>
												<div class="detail_box_bottom detail_box_item" style="padding-top: 0px;">
													<div class="detail_comment">
<!-- 														<section class="main_auto_item_section">
															<div class="main_auto_item_title"><span class="common_text"></span>
																<h3 class="H3-sc-7ikhff-0 hUvHkp">
																	<span class="bold_text"> 판매자의 다른상품</span><span class="all_data">전체보기 &gt;</span>
																</h3>
																<div class="previous_arrow">
																	<img src="https://ccimage.hellomarket.com/web/2020/item/btn_detail_arrow_box_left_50x50.png" alt="더보기">
																</div>
																<div class="next_arrow">
																	<img src="https://ccimage.hellomarket.com/web/2020/item/btn_detail_arrow_box_right_50x50.png.png" alt="더보기">
																</div>
															</div>
															<div class="main_auto_item">
																<div class="translate_local" style="transform: translateX(0px);">
																	<ul>
																		<div class="more_traslate">
																			<article>
																				<li>
																					<section class="wrap_auto_item_wrapper">
																						<div class="image_wrapper">
																							<div class="image_outside">
																								<div class="image_centerbox">
																									<img src="https://ccimg.hellomarket.com/images/2022/item/10/03/13/5822435_5255763_1.jpg?size=s4" alt="애플워치7 41mm 스뎅 실버 > 그파랑 바꾸실준">
																								</div>
																								<div class="dealer_text_position" style="left: 25px; top: 15px; width: 100%;">
																									<img src="https://ccimage.hellomarket.com/web/2020/item/ico_badge_thumbnail_hellopay_x2.png"
																										alt="헬로페이 아이콘" style="width: 43px; height: 21px;">
																									<img src="https://ccimage.hellomarket.com/web/2020/item/ico_badge_card_freeshipping_x2.png"
																										alt="무료배송 아이콘" style="width: 43px; height: 21px;">
																								</div>
																							</div>
																						</div>
																					</section>
																					<section class="item_upper">
																						<h2 class="H2-sc-1ir23so-0 loqpJg">
																							<span class="item_title">애플워치7 41mm 스뎅 실버 &gt; 그파랑 바꾸실준</span>
																						</h2>
																					</section>
																					<section class="item_bottom">
																						<div class="item_price">
																							<span class="price">800,000원</span>
																						</div>
																					</section>
																				</li>
																			</article>
																		</div>
																	</ul>
																</div>
															</div>
														</section> -->
														<!-- <section class="pc_item_user_info">
															<div class="profile_img">
																<a href="/s/@16366874">
																	<img class="profile" src="https://ccimage.hellomarket.com/web/tag/img_itemdetail_profile_noimage.png" alt="모바일 상품 회원 프로필 이미지">
																</a>
															</div>

															<div class="nick"><a href="#">판매자 아이디</a></div>
															<div class="item_count"><a href="/s/@16366874?type=item">
																<span class="item_count_title">상품</span>
																<span class="item_count_number">3</span></a>
															</div>
															<div class="detail_profile_review">
																<a href="/s/@16366874?tab=review">
																	<span class="review_label">거래후기</span>
																		<span class="item_count_rating">(0)</span>
																		<span class="item_count_rating_image">
																		<img src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png" alt="상품 상세 모바일 별점 없는 이미지 1">
																		<img src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png" alt="상품 상세 모바일 별점 없는 이미지 2">
																		<img src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png" alt="상품 상세 모바일 별점 없는 이미지 3">
																		<img src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png" alt="상품 상세 모바일 별점 없는 이미지 4">
																		<img src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png" alt="상품 상세 모바일 별점 없는 이미지 5"></span></a></div>
														</section> -->
														<section class="description">
															<h3 class="H3-sc-7ikhff-0 hUvHkp">
																<div class="description_title">상세설명</div>
															</h3>
															<div class="description_text">
																<span>${dto.item_contents }</span>
															</div>
															<c:forEach items="${dto.itemFileDTOs}" var="fileDTO">
																<img alt="" src="../resources/upload/item/${fileDTO.fileName}">
															</c:forEach>
														</section>

														<!-- 하단 태그인데 말썽이여서 주석 -->
														<!--<div class="brand_size_wrapper"><span class="brand_size_tag">애플워치</span>
														</div>
														 <section class="detail_bottom_box">
															<div class="brand_size_wrapper_mw">
																<span class="brand_size_tag_mw">애플워치</span>
															</div>
															<div class="detail_bottom_area"><img
																	src="https://ccimage.hellomarket.com/web/2020/item/ico_detail_info_tag_x2.png"
																	alt="지도아이콘" class="item_location_img"><span class="tag"><a
																		href="/search?q=애플"><button
																			type="button">#애플</button></a><a
																		href="/search?q=애플워치"><button
																			type="button">#애플워치</button></a></span></div>
															<div class="detail_bottom_area">
																<img src="https://ccimage.hellomarket.com/web/2020/item/ico_detail_info_category_x2.png"
																	alt="지도아이콘" class="item_location_img">
																	<a href="/search?category=HAC0000">
																		<span>시계/지갑/잡화</span>
																	</a>
																<div> &gt; </div>
																<a href="/search?category=HAC0007"><span>시계/보석</span></a>
															</div>
														</section> -->
														<section class="item_buy_area">
															<div class="item_wish_box">
																<div class="item_wish_box_border">
																	<button type="button" class="image_wish_box_btn">
																		<img src="https://ccimage.hellomarket.com/web/2018/item/ico_zzim.png" alt="찜하기이미지" class="ad_wish_icon">
																	</button>
																</div>
															</div>
															<div class="item_talk_box">
																<div class="item_talk">헬로톡</div>
															</div>
															<div class="item_buy_box">
																<button type="button" class="item_buy">헬로페이 구매</button>
															</div>
														</section>

														<section class="item_user_info mobile_item_user_info">
															<div class="profile_img">
																<a href="/s/@16366874">
																	<img
																		src="https://ccimage.hellomarket.com/web/tag/img_itemdetail_profile_noimage.png"
																		alt="상품 상세 회원 프로필 이미지"></a></div>
															<div class="nick">
																<a href="#">판매자 아이디</a></div>
															<div class="item_count">
																<span class="item_count_rating_image">
																	<img src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png" alt="상품 상세 별점 없는 이미지 1">
																	<img src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png" alt="상품 상세 별점 없는 이미지 2">
																	<img src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png" alt="상품 상세 별점 없는 이미지 3">
																	<img src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png" alt="상품 상세 별점 없는 이미지 4">
																	<img src="https://ccimage.hellomarket.com/web/2019/member/img_review_star_blank_16x16_x2.png" alt="상품 상세 별점 없는 이미지 5">
																</span>
																<span class="item_count_rating">(0)</span>
															</div>
															<span class="item_count_number mw_item_count_number">상품 3개</span>
														</section>
														
														<!-- 대기공주 후기창 -->
														<!-- 후기 글 펼치는 방법 -->
														<!-- review.css에서 review_view display : block; 처리 -->
														<c:import url="./reviewForm.jsp"></c:import>
														
														<!-- 구디나라 댓글창 -->
														<!-- <section class="comment_title">
															<span class="comment_title_comment">댓글</span>
															<span>(0)</span>
														</section>

														<section class="input_custorm">
															<div class="cm_in_box">
																<textarea type="text" placeholder="댓글을 입력해주세요." class="input_txt"></textarea>
															</div>
															<div class="cms_btn_box">
																<div class="comment_send_btn">댓글등록</div>
															</div>
														</section> -->
														<!-- 구디나라 댓글창 끝 -->
													</div>
												</div>
											</section>
										</article>
									</div>
								</section>
								<section class="item_relation_wrapper">
									<div class="item_relation">
										<h3 class="H3-sc-7ikhff-0 hUvHkp">
											<div class="item_relation_normal_title">이런 상품은 어때요?</div>
										</h3>
										<div class="item_relation_item_list">
											<div>
												<div class="infinite-scroll-component" style="height: auto; overflow: hidden auto;">
													<ul>
														<li class="main_col_4">
															<article>
																<a class="card card_list relation_card_list" href="/item/175504931?viewPath=similar&amp;clickPath=relation">
																	<div class="card_box">
																		<section class="image_wrapper">
																			<div class="image_outside">
																				<div class="image_centerbox">
																					<img src="https://ccimg.hellomarket.com/images/2022/item/10/03/14/2820929_2990636_1.jpg?size=s4" alt="애플워치 정품 밀레니즈루프44mm 실버의 사진" class="thumbnail_img"></div>
																			</div>
																		</section>
																		<section class="cont">
																			<h2 class="H2-sc-1ir23so-0 loqpJg">
																				<div class="item_title relation_item_title">애플워치 정품 밀레니즈루프44mm 실버</div><br>
																			</h2>
																			<div class="item_price relation_item_price">50,000원</div>
																		</section>
																	</div>
																</a>
																<div class="relation_image_wish_box image_wish_box">
																	<button type="button" class="image_wish_box_btn">
																		<svg viewBox="0 0 24 24" fill="#484848" fill-opacity="0.5" stroke="#ffffff" stroke-width="2"
																			focusable="false" aria-label="찜하기" role="img"
																			stroke-linecap="round" stroke-linejoin="round"
																			class="image_wish_box_img">
																			<path
																				d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
																				stroke-linejoin="round"></path>
																		</svg></button></div>
															</article>
														</li>
														<li class="main_col_4">
															<article><a class="card card_list relation_card_list"
																	href="/item/174954553?viewPath=together&amp;clickPath=relation">
																	<div class="card_box">
																		<section class="image_wrapper">
																			<div class="image_outside">
																				<div class="image_centerbox"><img
																						src="https://ccimg.hellomarket.com/images/2022/item/08/10/03/3015881_2399597_1.jpg?size=s4"
																						alt="Apple Watch 7 GPS+Cellular 스타라이트 미개봉의 사진"
																						class="thumbnail_img"></div>
																			</div>
																		</section>
																		<section class="cont">
																			<h2 class="H2-sc-1ir23so-0 loqpJg">
																				<div class="item_title relation_item_title">
																					Apple Watch 7 GPS+Cellular 스타라이트 미개봉</div> <br>
																			</h2>
																			<div class="item_price relation_item_price">600,000원
																			</div>
																		</section>
																	</div>
																</a>
																<div class="relation_image_wish_box image_wish_box"><button
																		type="button" class="image_wish_box_btn"><svg
																			viewBox="0 0 24 24" fill="#484848"
																			fill-opacity="0.5" stroke="#ffffff" stroke-width="2"
																			focusable="false" aria-label="찜하기" role="img"
																			stroke-linecap="round" stroke-linejoin="round"
																			class="image_wish_box_img">
																			<path
																				d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
																				stroke-linejoin="round"></path>
																		</svg></button></div>
															</article>
														</li>
														<li class="main_col_4">
															<article><a class="card card_list relation_card_list"
																	href="/item/175509651?viewPath=similar&amp;clickPath=relation">
																	<div class="card_box">
																		<section class="image_wrapper">
																			<div class="image_outside">
																				<div class="image_centerbox"><img
																						src="https://ccimg.hellomarket.com/images/2022/item/10/03/22/3646919_4369291_1.jpg?size=s4"
																						alt="애플워치se 40mm의 사진"
																						class="thumbnail_img"></div>
																			</div>
																		</section>
																		<section class="cont">
																			<h2 class="H2-sc-1ir23so-0 loqpJg">
																				<div class="item_title relation_item_title">
																					애플워치se 40mm</div> <br>
																			</h2>
																			<div class="item_price relation_item_price">290,000원
																			</div>
																		</section>
																	</div>
																</a>
																<div class="relation_image_wish_box image_wish_box"><button
																		type="button" class="image_wish_box_btn"><svg
																			viewBox="0 0 24 24" fill="#484848"
																			fill-opacity="0.5" stroke="#ffffff" stroke-width="2"
																			focusable="false" aria-label="찜하기" role="img"
																			stroke-linecap="round" stroke-linejoin="round"
																			class="image_wish_box_img">
																			<path
																				d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
																				stroke-linejoin="round"></path>
																		</svg></button></div>
															</article>
														</li>
														<li class="main_col_4">
															<article><a class="card card_list relation_card_list"
																	href="/item/175096501?viewPath=together&amp;clickPath=relation">
																	<div class="card_box">
																		<section class="image_wrapper">
																			<div class="image_outside">
																				<div class="image_centerbox"><img
																						src="https://ccimg.hellomarket.com/images/2022/item/08/24/14/5505585_4925694_1.jpg?size=s4"
																						alt="(풀박스)애플워치6 44mm LTE+GPS 정상해지!! 0823-1의 사진"
																						class="thumbnail_img"></div>
																			</div>
																		</section>
																		<section class="cont">
																			<h2 class="H2-sc-1ir23so-0 loqpJg">
																				<div class="item_title relation_item_title">
																					(풀박스)애플워치6 44mm LTE+GPS 정상해지!! 0823-1</div> <br>
																			</h2>
																			<div class="item_price relation_item_price">440,000원
																			</div>
																		</section>
																	</div>
																</a>
																<div class="relation_image_wish_box image_wish_box"><button
																		type="button" class="image_wish_box_btn"><svg
																			viewBox="0 0 24 24" fill="#484848"
																			fill-opacity="0.5" stroke="#ffffff" stroke-width="2"
																			focusable="false" aria-label="찜하기" role="img"
																			stroke-linecap="round" stroke-linejoin="round"
																			class="image_wish_box_img">
																			<path
																				d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
																				stroke-linejoin="round"></path>
																		</svg></button></div>
															</article>
														</li>
														<li class="main_col_4">
															<article><a class="card card_list relation_card_list"
																	href="/item/175533087?viewPath=similar&amp;clickPath=relation">
																	<div class="card_box">
																		<section class="image_wrapper">
																			<div class="image_outside">
																				<div class="image_centerbox"><img
																						src="https://ccimg.hellomarket.com/images/2022/item/10/06/11/4556812_5675758_1.jpg?size=s4"
																						alt="애플워치 에르메스 스트랩 골드 싱글투어 가죽 스트랩 (38, 40, 41의 사진"
																						class="thumbnail_img"></div>
																			</div>
																		</section>
																		<section class="cont">
																			<h2 class="H2-sc-1ir23so-0 loqpJg">
																				<div class="item_title relation_item_title">애플워치
																					에르메스 스트랩 골드 싱글투어 가죽 스트랩 (38, 40, 41</div> <br>
																			</h2>
																			<div class="item_price relation_item_price">420,000원
																			</div>
																		</section>
																	</div>
																</a>
																<div class="relation_image_wish_box image_wish_box"><button
																		type="button" class="image_wish_box_btn"><svg
																			viewBox="0 0 24 24" fill="#484848"
																			fill-opacity="0.5" stroke="#ffffff" stroke-width="2"
																			focusable="false" aria-label="찜하기" role="img"
																			stroke-linecap="round" stroke-linejoin="round"
																			class="image_wish_box_img">
																			<path
																				d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
																				stroke-linejoin="round"></path>
																		</svg></button></div>
															</article>
														</li>
														<li class="main_col_4">
															<article><a class="card card_list relation_card_list"
																	href="/item/175494026?viewPath=together&amp;clickPath=relation">
																	<div class="card_box">
																		<section class="image_wrapper">
																			<div class="image_outside">
																				<div class="image_centerbox"><img
																						src="https://ccimg.hellomarket.com/images/2022/item/10/02/07/4349110_4563761_1.jpg?size=s4"
																						alt="애플워치7나이키에디션45미리판매해요 경기도일산의 사진"
																						class="thumbnail_img"></div>
																			</div>
																		</section>
																		<section class="cont">
																			<h2 class="H2-sc-1ir23so-0 loqpJg">
																				<div class="item_title relation_item_title">
																					애플워치7나이키에디션45미리판매해요 경기도일산</div> <br>
																			</h2>
																			<div class="item_price relation_item_price">480,000원
																			</div>
																		</section>
																	</div>
																</a>
																<div class="relation_image_wish_box image_wish_box"><button
																		type="button" class="image_wish_box_btn"><svg
																			viewBox="0 0 24 24" fill="#484848"
																			fill-opacity="0.5" stroke="#ffffff" stroke-width="2"
																			focusable="false" aria-label="찜하기" role="img"
																			stroke-linecap="round" stroke-linejoin="round"
																			class="image_wish_box_img">
																			<path
																				d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
																				stroke-linejoin="round"></path>
																		</svg></button></div>
															</article>
														</li>
														<li class="main_col_4">
															<article><a class="card card_list relation_card_list"
																	href="/item/175474082?viewPath=similar&amp;clickPath=relation">
																	<div class="card_box">
																		<section class="image_wrapper">
																			<div class="image_outside">
																				<div class="image_centerbox"><img
																						src="https://ccimg.hellomarket.com/images/2022/item/09/30/00/4156951_5586952_1.jpg?size=s4"
																						alt="애플워치5 나이키 40mm 스페이스 그레이 wifi팝니다의 사진"
																						class="thumbnail_img"></div>
																			</div>
																		</section>
																		<section class="cont">
																			<h2 class="H2-sc-1ir23so-0 loqpJg">
																				<div class="item_title relation_item_title">
																					애플워치5 나이키 40mm 스페이스 그레이 wifi팝니다</div> <br>
																			</h2>
																			<div class="item_price relation_item_price">130,000원
																			</div>
																		</section>
																	</div>
																</a>
																<div class="relation_image_wish_box image_wish_box"><button
																		type="button" class="image_wish_box_btn"><svg
																			viewBox="0 0 24 24" fill="#484848"
																			fill-opacity="0.5" stroke="#ffffff" stroke-width="2"
																			focusable="false" aria-label="찜하기" role="img"
																			stroke-linecap="round" stroke-linejoin="round"
																			class="image_wish_box_img">
																			<path
																				d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
																				stroke-linejoin="round"></path>
																		</svg></button></div>
															</article>
														</li>
														<li class="main_col_4">
															<article><a class="card card_list relation_card_list"
																	href="/item/175518193?viewPath=similar&amp;clickPath=relation">
																	<div class="card_box">
																		<section class="image_wrapper">
																			<div class="image_outside">
																				<div class="image_centerbox"><img
																						src="https://ccimg.hellomarket.com/images/2022/item/10/04/21/1738654_5611640_1.jpg?size=s4"
																						alt="신품!  !  6.5mm~7.0mm 천연 아코야 진주 목걸이의 사진"
																						class="thumbnail_img"></div>
																			</div>
																		</section>
																		<section class="cont">
																			<h2 class="H2-sc-1ir23so-0 loqpJg">
																				<div class="item_title relation_item_title">신품!
																					! 6.5mm~7.0mm 천연 아코야 진주 목걸이</div> <br>
																			</h2>
																			<div class="item_price relation_item_price">180,000원
																			</div>
																		</section>
																	</div>
																</a>
																<div class="relation_image_wish_box image_wish_box"><button
																		type="button" class="image_wish_box_btn"><svg
																			viewBox="0 0 24 24" fill="#484848"
																			fill-opacity="0.5" stroke="#ffffff" stroke-width="2"
																			focusable="false" aria-label="찜하기" role="img"
																			stroke-linecap="round" stroke-linejoin="round"
																			class="image_wish_box_img">
																			<path
																				d="m17.5 2.9c-2.1 0-4.1 1.3-5.4 2.8-1.6-1.6-3.8-3.2-6.2-2.7-1.5.2-2.9 1.2-3.6 2.6-2.3 4.1 1 8.3 3.9 11.1 1.4 1.3 2.8 2.5 4.3 3.6.4.3 1.1.9 1.6.9s1.2-.6 1.6-.9c3.2-2.3 6.6-5.1 8.2-8.8 1.5-3.4 0-8.6-4.4-8.6"
																				stroke-linejoin="round"></path>
																		</svg></button></div>
															</article>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
				</div>
			</main>
		</section>
		<!--  Section End -->

		<c:import url="../template/footer.jsp"></c:import>

	</div>
	<!-- Wrap End -->
</body>
</html>