<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!--css-->
    <link rel="stylesheet" href="/resources/css/member/test.css">
</head>
<body>
	<div class="wrap">
	<c:import url="../template/header.jsp"></c:import>
    <section>
        <div class="css-pculus e1ovi4141">
            <div class="css-o5dw7d e1ovi4140">회원가입</div>
            <div class="css-mhmtvt e15so55l1">
                <div class="css-rb0i47 e1yyjjij1">
                    <span class="css-qq9ke6 e1yyjjij0">*</span> 필수입력사항
                </div>
                <form action="join" method="post" id="frmjoin" enctype="multipart/form-data">
                    <div class="css-y8aj3r eo6ykj40">
                        <div class="css-1pjgd36 e744wfw6">
                            <div class="css-1y8737n e744wfw5">
                                <label class="css-1obgjqh e744wfw4">아이디<span class="css-qq9ke6 e744wfw0">*</span></label>
                            </div>
                            <div class="css-82a6rk e744wfw3">
                                <div class="css-jmalg e1uzxhvi6">
                                    <div class="css-176lya2 e1uzxhvi3">
                                        <input data-testid="input-box" id="user_id" name="user_id" placeholder="아이디를 입력해주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                        <div id="id_check" class="check"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="css-1w0ksfz e744wfw2">
                                <button class="css-ufulao e4nu7ef3" type="button" id="ajaxID">
                                    <span class="css-ymwvow e4nu7ef1">중복확인</span>
                                </button>
                            </div>
                        </div>
                        <div class="css-1pjgd36 e744wfw6">
                            <div class="css-1y8737n e744wfw5">
                                <label class="css-1obgjqh e744wfw4">비밀번호<span class="css-qq9ke6 e744wfw0">*</span></label>
                            </div>
                            <div class="css-82a6rk e744wfw3">
                                <div class="css-jmalg e1uzxhvi6">
                                    <div class="css-176lya2 e1uzxhvi3">
                                        <input data-testid="input-box" id="user_pw" name="user_pw" placeholder="비밀번호를 입력해주세요" type="password" class="css-1bkd15f e1uzxhvi2" value="">
                                        <div id="pw_check" class="check"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="css-1w0ksfz e744wfw2"></div>
                        </div>
                            <div class="css-1pjgd36 e744wfw6">
                            <div class="css-1y8737n e744wfw5">
                                <label class="css-1obgjqh e744wfw4">비밀번호확인<span class="css-qq9ke6 e744wfw0">*</span></label>
                            </div>
                            <div class="css-82a6rk e744wfw3">
                                <div class="css-jmalg e1uzxhvi6">
                                    <div class="css-176lya2 e1uzxhvi3">
                                        <input data-testid="input-box" id="user_pw2" name="user_pw2" placeholder="비밀번호를 한번 더 입력해주세요" type="password" class="css-1bkd15f e1uzxhvi2" value="">
                                        <div id="pw2_check" class="check"></div>
                                    </div>
                                </div>
                            </div>
                             <div class="css-1w0ksfz e744wfw2"></div>
                            </div>
                            <div class="css-1pjgd36 e744wfw6">
                                <div class="css-1y8737n e744wfw5">
                                    <label class="css-1obgjqh e744wfw4">이름<span class="css-qq9ke6 e744wfw0">*</span></label>
                                </div>
                                <div class="css-82a6rk e744wfw3">
                                    <div class="css-jmalg e1uzxhvi6">
                                        <div class="css-176lya2 e1uzxhvi3">
                                            <input data-testid="input-box" id="user_name" name="user_name" placeholder="이름을 입력해 주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                            <div id="name_check" class="check"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="css-1w0ksfz e744wfw2"></div>
                            </div>
                            <div class="css-1pjgd36 e744wfw6">
                                    <div class="css-1y8737n e744wfw5"><label class="css-1obgjqh e744wfw4">이메일<span class="css-qq9ke6 e744wfw0">*</span></label>
                                    </div>
                                    <div class="css-82a6rk e744wfw3">
                                        <div class="css-jmalg e1uzxhvi6">
                                            <div class="css-176lya2 e1uzxhvi3">
                                                <input data-testid="input-box" id="user_email" name="user_email" placeholder="예: goodeenara@daekigongju.com" type="email" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                                <div id="email_check" class="check"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="css-1w0ksfz e744wfw2">
                                        <button class="css-ufulao e4nu7ef3" type="button" id="ajaxEmail">
                                            <span class="css-ymwvow e4nu7ef1">중복확인</span>
                                        </button>
                                    </div>
                            </div>
                            <div class="css-1pjgd36 e744wfw6">
                                <div class="css-1y8737n e744wfw5">
                                    <label class="css-1obgjqh e744wfw4">휴대폰<span class="css-qq9ke6 e744wfw0">*</span>
                                    </label>
                                </div>
                                <div class="css-82a6rk e744wfw3">
                                    <div class="css-jmalg e1uzxhvi6">
                                        <div class="css-176lya2 e1uzxhvi3">
                                            <input id="user_phone" name="user_phone" placeholder="숫자만 입력해주세요." type="tel" required="" class="css-1bkd15f e1uzxhvi2" value="" maxlength="11" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');">
                                            <div id="phone_check" class="check"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="css-1w0ksfz e744wfw2"></div>
                            </div>
                            <div class="css-1pjgd36 e744wfw6">
                                <div class="css-1y8737n e744wfw5">
                                    <label class="css-1obgjqh e744wfw4">우편번호<span class="css-qq9ke6 e744wfw0">*</span></label>
                                </div>
                                <div class="css-82a6rk e744wfw3">
                                    <div class="css-jmalg e1uzxhvi6">
                                        <div class="css-176lya2 e1uzxhvi3">
                                            <input data-testid="input-box" id="user_post" name="user_post" placeholder="우편번호 입력" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                            <div id="post_check" class="check"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="css-1w0ksfz e744wfw2"></div>
                            </div>
                            <div class="css-1pjgd36 e744wfw6">
                                <div class="css-1y8737n e744wfw5">
                                    <label class="css-1obgjqh e744wfw4">주소<span class="css-qq9ke6 e744wfw0">*</span></label>
                                </div>
                                <div class="css-82a6rk e744wfw3">
                                    <div class="css-jmalg e1uzxhvi6">
                                        <div class="css-176lya2 e1uzxhvi3">
                                            <input data-testid="input-box" id="user_addr" name="user_addr" placeholder="주소검색 버튼을 눌러주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                            <div id="addr_check" class="check"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="css-1w0ksfz e744wfw2"></div>
                                </div>
                                <div class="css-1pjgd36 e744wfw6">
                                    <div class="css-1y8737n e744wfw5">
                                        <label class="css-1obgjqh e744wfw4"></label>
                                    </div>
                                    <div class="css-82a6rk e744wfw3">
                                        <button class="css-1schgvv e4nu7ef3" type="button" height="44" radius="4" onclick="openDaumPostcode()">
                                            <span class="css-ymwvow e4nu7ef1">
                                                <img src="https://res.kurly.com/pc/service/cart/2007/ico_search.svg" alt="" class="css-1m3kac1 e4nu7ef0">주소 검색</span>
                                            </button>
                                        </div>
                                        <div class="css-1w0ksfz e744wfw2"></div>
                                </div>
                                <div class="css-1pjgd36 e744wfw6">
                                    <div class="css-1y8737n e744wfw5">
                                        <label class="css-1obgjqh e744wfw4">상세주소<span class="css-qq9ke6 e744wfw0">*</span></label>
                                    </div>
                                    <div class="css-82a6rk e744wfw3">
                                        <div class="css-jmalg e1uzxhvi6">
                                            <div class="css-176lya2 e1uzxhvi3">
                                                <input data-testid="input-box" id="user_addr2" name="user_addr2" placeholder="상세주소를 입력해 주세요" type="text" required="" class="css-1bkd15f e1uzxhvi2" value="">
                                                <div id="addr2_check" class="check"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="css-1w0ksfz e744wfw2"></div>
                                </div>
                                <div class="css-1pjgd36 e744wfw6">
                                    <div class="css-1y8737n e744wfw5">
                                        <label class="css-1obgjqh e744wfw4">프로필사진</label>
                                    </div>
                                    <div class="css-82a6rk e744wfw3">

                                                <label for="userfile">
                                                    <div class="btn-upload">파일 업로드하기</div>
                                                  </label>
                                                <input id="userfile" name="userfile" type="file" class=" e1uzxhvi2" value="">
                                                <div id="file_check" class="check"></div>

                                    </div>
                                    <div class="css-1w0ksfz e744wfw2"></div>
                                </div>               
                    </div>
<!-------------------------------------- 약관동의문--------------------------------------------------------------------------------- -->
                                    <div class="css-1eo0fey e1j7jtti0"></div>
                                    <div class="css-y8aj3r e1k9oeg10">
                                        <div class="css-2yzr8b e744wfw6">
                                            <div class="css-1y8737n e744wfw5">
                                                <label class="css-1obgjqh e744wfw4">이용약관동의<span class="css-qq9ke6 e744wfw0">*</span></label>
                                            </div>
                                            <div class="css-82a6rk agrees">
                                                <div class="css-ov2xfu ">
                                                    <label class="css-qihf5m e1dcessg1" for="all">
                                                    <input id="all" type="checkbox" class="css-agvwxo ">
                                                    <img src="/resources/images/member/check.svg" alt="" class="css-1wfsi82 e31wziv0">
                                                    <div class="allAgree"></div>
                                                    전체 동의합니다.
                                                    </label>
                                                        <p class="css-nygcgj e1sjmfnv6">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
                                                </div>

                                                <div class="css-ov2xfu e1sjmfnv7">
                                                    <div class="css-s5xdrg ">
                                                        <input id="RequiredTermsCondition" type="checkbox" class="css-agvwxo req agrees">
                                                        <label class="css-18r9a6u e1dcessg1" for="RequiredTermsCondition">
                                                           <img src="/resources/images/member/check.svg" alt="" class="css-1wfsi82 e31wziv0">
                                                            이용약관 동의
                                                        </label>
                                                        <span class="css-g5xq45 e1sjmfnv5">(필수)</span> 
                                                    </div>
                                                    <button type="button" class="css-7chi73" id="mymodal1"
                                                    data-bs-toggle="modal" data-bs-target="#myModal1">약관보기</button>
                                                    <!-- <a class="css-7chi73 e1sjmfnv3">약관보기</a> -->
                                                </div>

                                                <div class="css-ov2xfu e1sjmfnv7">
                                                    <div class="css-s5xdrg ">
                                                        <input id="RequiredTermsOfPrivacy" type="checkbox" class="css-agvwxo req agrees" >
                                                        <label class="css-18r9a6u e1dcessg1" for="RequiredTermsOfPrivacy">
                                                        <img src="/resources/images/member/check.svg" alt="" class="css-1wfsi82 e31wziv0">
                                                            개인정보 수집∙이용 동의
                                                        </label>
                                                        <span class="css-g5xq45 e1sjmfnv5">(필수)</span>
                                                    </div>
                                                    <button type="button" class="css-7chi73" id="mymodal2"
                                                    data-bs-toggle="modal" data-bs-target="#myModal2">약관보기</button>
                                                        <!-- <a class="css-7chi73 e1sjmfnv3" role="button" data-toggle="modal" data-target="#myModal1">약관보기</a> -->
                                                </div>

                                                <div class="css-ov2xfu e1sjmfnv7">
                                                    <div class="css-s5xdrg ">
                                                        <input id="OptionalTermsOfPrivacy" type="checkbox" class="css-agvwxo agrees">
                                                        <label class="css-18r9a6u " for="OptionalTermsOfPrivacy">
                                                           <img src="/resources/images/member/check.svg" alt="" class="css-1wfsi82 e31wziv0">
                                                                개인정보 수집∙이용 동의
                                                        </label>
                                                            <span class="css-g5xq45 e1sjmfnv5">(선택)</span>
                                                    </div>
                                                    <button type="button" class="css-7chi73" id="mymodal3"
                                                    data-bs-toggle="modal" data-bs-target="#myModal3">약관보기</button>
                                                        <!-- <a class="css-7chi73 e1sjmfnv3">약관보기</a> -->
                                                </div>

                                                <div class="css-ov2xfu e1sjmfnv7">
                                                    <div class="css-s5xdrg ">
                                                        <input id="RequiredSignupAge" type="checkbox" class="css-agvwxo req agrees">
                                                        <label class="css-18r9a6u " for="RequiredSignupAge">
                                                            <img src="/resources/images/member/check.svg" alt="" class="css-1wfsi82 e31wziv0">
                                                                본인은 만 14세 이상입니다.
                                                        </label>
                                                            <span class="css-g5xq45 e1sjmfnv5">(필수)</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="css-137ca2h e1utgeno0">
                                        <button class="css-18m884r e4nu7ef3" type="button" id="joinbtn" width="240" height="56" radius="3">
                                            <span class="css-ymwvow e4nu7ef1">가입하기</span>
                                        </button>
                                    </div>
<!---------------------------------------------------약관 모달 바디  --------------------------------------------------------------------------------->
    <!-- 이용약관 동의 -->
    <div class="modal fade" id="myModal1" tabindex="-1" aria-labelledby="ModalLabel1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="ModalLabel1">이용약관 동의</h1>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" id="model1">
                      <p>제 1 장 총칙</p>
			<p>제 1 조 (목적)
<p>본 약관은 GNDG이 운영하는 웹 사이트 (http://GNDG.com)의 제반 서비스의 이용조건 및 절차에 관한 사항 및 기타 필요한 사항을 규정함을 목적으로 한다.</p>

<p>제 2 조 (용어의 정의)
<p>본 약관에서 사용하는 용어는 다음과 같이 정의한다.
<p>①회원 : 기본 회원 정보를 입력하였고, 회사와 서비스 이용계약을 체결하여 아이디를 부여받은 개인
<p>②아이디(ID) : 회원식별과 회원의 서비스 이용을 위해 회원이 선정하고 회사가 승인하는 문자와 숫자의 조합
<p>③비밀번호(Password) : 회원이 통신상의 자신의 비밀을 보호하기 위해 선정한 문자와 숫자의 조합
<p>④해지 : 회사 또는 회원에 의한 이용계약의 종료</p>

<p>제 3 조 (약관의 공시 및 효력과 변경)
<p>①본 약관은 회원가입 화면에 게시하여 공시하며 회사는 사정변경 및 영업상 중요한 사유가 있을 경우 약관을 변경할 수 있으며 변경된 약관은 공지사항을 통해 공시한다
<p>②본 약관 및 차후 회사사정에 따라 변경된 약관은 이용자에게 공시함으로써 효력을 발생한다.

<p>제 4 조 (약관 외 준칙)
<p>본 약관에 명시되지 않은 사항이 전기통신기본법, 전기통신사업법, 정보통신촉진법, ‘전자상거래등에서의 소비자 보호에 관한 법률’, ‘약관의 규제에관한법률’, ‘전자거래기본법’, ‘전자서명법’, ‘정보통신망 이용촉진등에 관한 법률’, ‘소비자보호법’ 등 기타 관계 법령에 규정되어 있을 경우에는 그 규정을 따르도록 한다.


<p>제 2 장 이용계약

<p>제 5 조 (이용신청)
<p>①이용신청자가 회원가입 안내에서 본 약관과 개인정보보호정책에 동의하고 등록절차(회사의 소정 양식의 가입 신청서 작성)를 거쳐 '확인' 버튼을 누르면 이용신청을 할 수 있다.
<p>②이용신청자는 반드시 실명과 실제 정보를 사용해야 하며 1개의 생년월일에 대하여 1건의 이용신청을 할 수 있다.
<p>③실명이나 실제 정보를 입력하지 않은 이용자는 법적인 보호를 받을 수 없으며, 서비스 이용에 제한을 받을 수 있다.

<p>제 6 조 (이용신청의 승낙)
①회사는 제5조에 따른 이용신청자에 대하여 제2항 및 제3항의 경우를 예외로 하여 서비스 이용을 승낙한다.
②회사는 아래 사항에 해당하는 경우에 그 제한사유가 해소될 때까지 승낙을 유보할 수 있다.
  가. 서비스 관련 설비에 여유가 없는 경우
  나. 기술상 지장이 있는 경우
  다. 기타 회사 사정상 필요하다고 인정되는 경우
③회사는 아래 사항에 해당하는 경우에 승낙을 하지 않을 수 있다.
  가. 다른 사람의 명의를 사용하여 신청한 경우
  나. 이용자 정보를 허위로 기재하여 신청한 경우
  다. 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우
  라. 기타 회사가 정한 이용신청 요건이 미비한 경우


<p>제 3 장 계약 당사자의 의무

<p>제 7 조 (회사의 의무)
<p>①회사는 사이트를 안정적이고 지속적으로 운영할 의무가 있다.
<p>②회사는 이용자로부터 제기되는 의견이나 불만이 정당하다고 인정될 경우에는 즉시 처리해야 한다. 단, 즉시 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 공지사항 또는 전자우편을 통해 통보해야 한다.
<p>③제1항의 경우 수사상의 목적으로 관계기관 및 정보통신윤리위원회의 요청이 있거나 영장 제시가 있는 경우, 기타 관계 법령에 의한 경우는 예외로 한다.

<p>제 8 조 (이용자의 의무)
<p>①이용자는 본 약관 및 회사의 공지사항, 사이트 이용안내 등을 숙지하고 준수해야 하며 기타 회사의 업무에 방해되는 행위를 해서는 안된다.
<p>②이용자는 회사의 사전 승인 없이 본 사이트를 이용해 어떠한 영리행위도 할 수 없다.
<p>③이용자는 본 사이트를 통해 얻는 정보를 회사의 사전 승낙 없이 복사, 복제, 변경, 번역, 출판, 방송 및 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없다.

<p>제 4 장 서비스의 제공 및 이용

<p>제 9 조 (서비스 이용)
<p>①이용자는 본 약관의 규정된 사항을 준수해 사이트를 이용한다.
<p>②본 약관에 명시되지 않은 서비스 이용에 관한 사항은 회사가 정해 '공지사항'에 게시하거나 또는 별도로 공지하는 내용에 따른다.

<p>제 10 조 (정보의 제공)
<p>회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보에 대하여 전자메일이나 서신우편 등의 방법으로 회원에게 정보를 제공할 수 있다.

<p>제 11 조 (광고게재)
<p>①회사는 서비스의 운용과 관련하여 서비스 화면, 홈페이지, 전자우편 등에 광고 등을 게재할 수 있다.
<p>②회사는 사이트에 게재되어 있는 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임을 지지 않는다.

<p>제 12 조 (서비스 이용의 제한)
<p>본 사이트 이용 및 행위가 다음 각 항에 해당하는 경우 회사는 해당 이용자의 이용을 제한할 수 있다.
<p>①공공질서 및 미풍양속, 기타 사회질서를 해하는 경우
<p>②범죄행위를 목적으로 하거나 기타 범죄행위와 관련된다고 객관적으로 인정되는 경우
<p>③타인의 명예를 손상시키거나 타인의 서비스 이용을 현저히 저해하는 경우
<p>④타인의 의사에 반하는 내용이나 광고성 정보 등을 지속적으로 전송하는 경우
<p>⑤해킹 및 컴퓨터 바이러스 유포 등으로 서비스의 건전한 운영을 저해하는 경우
<p>⑥다른 이용자 또는 제3자의 지적재산권을 침해하거나 지적재산권자가 지적 재산권의 침해를 주장할 수 있다고 판단되는 경우
<p>⑦타인의 아이디 및 비밀번호를 도용한 경우
<p>⑧기타 관계 법령에 위배되는 경우 및 회사가 이용자로서 부적당하다고 판단한 경우

<p>제 13 조 (서비스 제공의 중지)
<p>회사는 다음 각 호에 해당하는 경우 서비스의 전부 또는 일부의 제공을 중지할 수 있다.
<p>①전기통신사업법 상에 규정된 기간통신 사업자 또는 인터넷 망 사업자가 서비스를 중지했을 경우
<p>②정전으로 서비스 제공이 불가능할 경우
<p>③설비의 이전, 보수 또는 공사로 인해 부득이한 경우
<p>④서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 제공이 어려운 경우
<p>⑤전시, 사변, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우
<p>제 14 조 (게시물 관리)
<p>회사는 건전한 통신문화 정착과 효율적인 사이트 운영을 위하여 이용자가 게시하거나 제공하는 자료가 제12조에 해당한다고 판단되는 경우에 임의로 삭제, 자료이동, 등록거부를 할 수 있다.
<p>제 15 조 (서비스 이용 책임)
<p>이용자는 회사에서 권한 있는 사원이 서명한 명시적인 서면에 구체적으로 허용한 경우를 제외하고는 서비스를 이용하여 불법상품을 판매하는 영업활동을 할 수 없으며 특히 해킹, 돈벌기 광고, 음란 사이트를 통한 상업행위, 상용 S/W 불법제공 등을 할 수 없다. 이를 어기고 발생한 영업활동의 결과 및 손실, 관계기관에 의한 구속 등 법적 조치 등에 관해서는 회사가 책임을 지지 않는다.
<p>제 5 장 (재화의 주문 및 결제 관련) 
<p>제16조 (결제방법)
‘회원’은 ‘회사’에서 판매하는 재화에 대하여 ‘선불카드, 직불카드, 신용카드 등의 각종 카드 결제 수단’을 이용하여 결제할 수 있다. 이때 ‘회사’는 이용자의 지급방법에 대하여 재화외 어떠한 명목의 수수료를 추가 징수하지 않는다.
<p>① ‘회사’는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 한다. 주문확인에 대한 내용은 해당게시판에서 확인 할 수 있다.
<p>② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 ‘회사’는 배송전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리한다. 다만 이미 대금을 지불한 경우에는 제18조의 ‘반품규정’을 따른다.
<p>제17조 (배송정책)
<p>① ‘회사’는 이용자와 재화의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 결재를 실시한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취한다. 
<p>②‘회사’는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 제품을 구매하는 웹 페이지 하단에 명시한다. 만약 ‘회사’가 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상한다. 하지만 ‘회사’의 고의과실이 없음을 입증한 경우에는 그러하지 아니한다.
<p>18조 (취소 및 반품 환불 규정)
<p>‘회사’는 이용자가 구매 신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 한다.
<p>① 재화가 발송 되기전 이용자가 결제를 취소할 경우 ‘회사’는 해당 주문건을 취소 처리하고 카드결제 승인을 취소한다.
<p>② 재화가 발송 된 이후 결제 취소는 불가하다. 단, ‘회사’의 부주의 ‘배송’상의 문제로 인한 재화의 파손, 변질의 경우 ‘회사’는 이용자에게 구매 금액의 반품 및 환불 조취 및 교환 조취를 취한다.


<p>제 6 장 기타

<p>제 19 조 (면책 및 손해배상)
<p>①천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 회사의 서비스 제공 책임이 면제된다.
<p>②회사는 이용자간 또는 이용자와 제3자간의 상호거래 관계에서 발생되는 결과에 대하여 어떠한 책임도 부담하지 않는다.
<p>③회사는 이용자가 게시판에 게재한 정보, 자료, 내용 등에 관하여 사실의 정확성, 신뢰도 등에 어떠한 책임도 부담하지 않으며 이용자는 본인의 책임 아래 본 사이트를 이용해야 한다.
<p>④이용자가 게시 또는 전송한 자료 등에 관하여 손해가 발생하거나 자료의 취사선택, 기타 무료로 제공되는 서비스 이용과 관련해 어떠한 불이익이 발생하더라도 이에 대한 모든 책임은 이용자에게 있다.
<p>⑤아이디와 비밀번호의 관리 및 이용자의 부주의로 인하여 발생되는 손해 또는 제3자에 의한 부정사용 등에 대한 책임은 이용자에게 있다.
<p>⑥이용자가 본 약관의 규정을 위반함으로써 회사에 손해가 발생하는 경우 이 약관을 위반한 이용자는 회사에 발생한 모든 손해를 배상해야 하며 동 손해로부터 회사를 면책시켜야 한다.

<p>제 20 조 (개인신용정보 제공 및 활용에 대한 동의서)
회사가 회원 가입과 관련해 취득한 개인 신용 정보는 신용정보의 이용 및 보호에 관한 법률 제23조의 규정에 따라 타인에게 제공 및 활용 시 이용자의 동의를 얻어야 한다. 이용자의 동의는 회사가 회원으로 가입한 이용자의  신용정보를 신용정보기관, 신용정보업자 및 기타 이용자 등에게 제공해 이용자의 신용을 판단하기 위한 자료로서 활용하거나 공공기관에서 정책자료로 활용하는데 동의하는 것으로 간주한다.

<p>제 21 조 (분쟁의 해결)
<p>①회사와 이용자는 본 사이트 이용과 관련해 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 해야 한다.
<p>②제1항의 규정에도 불구하고 동 분쟁으로 인하여 소송이 제기될 경우 동 소송은 회사의 본사 소재지를 관할하는 법원의 관할로 본다.

<p><부칙>
본 약관은 2022년 10월 14일부터 적용한다.
            </div>
            <div class="modal-footer">
              <button type="button" class="css-738xq4" data-bs-dismiss="modal">확인</button>
            </div>
          </div>
        </div>
      </div>

      <!-- 개인정보 수집∙이용 동의 동의 -->
      <div class="modal fade" id="myModal2" tabindex="-1" aria-labelledby="ModalLabel2" aria-hidden="true">
        <div class="modal-dialog modal-dialog-scrollable">
          <div class="modal-content">
            <div class="modal-header">
              <h1 class="modal-title fs-5" id="ModalLabel2">개인정보 수집∙이용 동의</h1>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body" id="model2">
                      <p> [GNDG] ('http://www.GNDG.com'이하 'GNDG')은(는) 「개인정보 보호법」 제30조에 따라 정보주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.
<p>제1조(개인정보의 처리목적)
<p>< GNDG >(이)가 개인정보 보호법 제32조에 따라 등록․공개하는 개인정보파일의 처리목적은 다음과 같습니다.
<p>제2조(개인정보처리 위탁)
<p>② < GNDG >은(는) 위탁계약 체결시 「개인정보 보호법」 제26조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적․관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리․감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.
<p>③ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.
<p>제3조(정보주체와 법정대리인의 권리·의무 및 그 행사방법)
<p>① 정보주체는 GNDG에 대해 언제든지 개인정보 열람·정정·삭제·처리정지 요구 등의 권리를 행사할 수 있습니다.
<p>② 제1항에 따른 권리 행사는GNDG에 대해 「개인정보 보호법」 시행령 제41조제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 GNDG은(는) 이에 대해 지체 없이 조치하겠습니다.
<p>③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다.이 경우 “개인정보 처리 방법에 관한 고시(제2020-7호)” 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
<p>④ 개인정보 열람 및 처리정지 요구는 「개인정보 보호법」 제35조 제4항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.
<p>⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.
<p>⑥ GNDG은(는) 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.
<p>제4조(처리하는 개인정보의 항목 작성)
<p>제5조(개인정보의 파기)
<p>① < GNDG > 은(는) 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.
<p>② 정보주체로부터 동의받은 개인정보 보유기간이 경과하거나 처리목적이 달성되었음에도 불구하고 다른 법령에 따라 개인정보를 계속 보존하여야 하는 경우에는, 해당 개인정보를 별도의 데이터베이스(DB)로 옮기거나 보관장소를 달리하여 보존합니다.
<p>1. 법령 근거 :
<p>2. 보존하는 개인정보 항목 : 계좌정보, 거래날짜
<p>③ 개인정보 파기의 절차 및 방법은 다음과 같습니다.
<p>1. 파기절차
<p>[ GNDG ] 은(는) 파기 사유가 발생한 개인정보를 선정하고, < GNDG > 의 개인정보 보호책임자의 승인을 받아 개인정보를 파기합니다.
<p>2. 파기방법
<p>전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.
<p>종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다
<p>제6조(개인정보의 안전성 확보 조치)
<p>[ GNDG ]은(는) 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.
<p>1. 정기적인 자체 감사 실시
<p>개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체 감사를 실시하고 있습니다.
<p>2. 해킹 등에 대비한 기술적 대책
<p><GNDG>('GNDG')은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.
<p>3. 개인정보의 암호화
<p>이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.
<p>4. 접속기록의 보관 및 위변조 방지
<p>개인정보처리시스템에 접속한 기록을 최소 1년 이상 보관, 관리하고 있으며,다만, 5만명 이상의 정보주체에 관하여 개인정보를 추가하거나, 고유식별정보 또는 민감정보를 처리하는 경우에는 2년이상 보관, 관리하고 있습니다.
<p>또한, 접속기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.
<p>5. 개인정보에 대한 접근 제한
<p>개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.
<p>6. 문서보안을 위한 잠금장치 사용
<p>개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.
<p>7. 비인가자에 대한 출입 통제
<p>개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.
<p>제7조(개인정보 자동 수집 장치의 설치•운영 및 거부에 관한 사항)
<p>① GNDG 은(는) 이용자에게 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’를 사용합니다.
<p>② 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.
<p>가. 쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부, 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.
<p>나. 쿠키의 설치•운영 및 거부 : 웹브라우저 상단의 도구>인터넷 옵션>개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다.
<p>다. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.
<p>② 정보주체께서는 GNDG 의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. GNDG 은(는) 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.
<p>제9조(개인정보 열람청구)
<p>정보주체는 ｢개인정보 보호법｣ 제35조에 따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다.
<p>[ GNDG ]은(는) 정보주체의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.
<p>정보주체는 개인정보침해로 인한 구제를 받기 위하여 개인정보분쟁조정위원회, 한국인터넷진흥원 개인정보침해신고센터 등에 분쟁해결이나 상담 등을 신청할 수 있습니다. 이 밖에 기타 개인정보침해의 신고, 상담에 대하여는 아래의 기관에 문의하시기 바랍니다.
<p>1. 개인정보분쟁조정위원회 : (국번없이) 1833-6972 (www.kopico.go.kr)
<p>2. 개인정보침해신고센터 : (국번없이) 118 (privacy.kisa.or.kr)
<p>3. 대검찰청 : (국번없이) 1301 (www.spo.go.kr)
<p>4. 경찰청 : (국번없이) 182 (ecrm.cyber.go.kr)
<p>「개인정보보호법」제35조(개인정보의 열람), 제36조(개인정보의 정정·삭제), 제37조(개인정보의 처리정지 등)의 규정에 의한 요구에 대 하여 공공기관의 장이 행한 처분 또는 부작위로 인하여 권리 또는 이익의 침해를 받은 자는 행정심판법이 정하는 바에 따라 행정심판을 청구할 수 있습니다.
<p>※ 행정심판에 대해 자세한 사항은 중앙행정심판위원회(www.simpan.go.kr) 홈페이지를 참고하시기 바랍니다.
<p>① 이 개인정보처리방침은 2021년 12월 12부터 적용됩니다.</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="css-738xq4" data-bs-dismiss="modal">확인</button>
            </div>
          </div>
        </div>
      </div>
          <!-- 개인정보 수집∙이용 동의(선택) 동의 -->
          <div class="modal fade" id="myModal3" tabindex="-1" aria-labelledby="ModalLabel3" aria-hidden="true">
            <div class="modal-dialog modal-dialog-scrollable">
              <div class="modal-content">
                <div class="modal-header">
                  <h1 class="modal-title fs-5" id="ModalLabel3">개인정보 수집∙이용 동의(선택)</h1>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="model3">
                 제 1 조 (목적)
이 약관은 GNDG 주식회사 (이하 “회사”)가 제공하는 위치기반서비스와 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2 조 (약관 외 준칙)
이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 개인정보보호법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보처리방침, 회사가 별도로 정한 지침 등에 의합니다.

제 3 조 (서비스 내용 및 요금)
① 회사는 위치정보사업자로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다.

1. GeoTagging 서비스: 게시물 또는 이용자가 저장하는 콘텐츠에 포함된 개인위치정보주체 또는 이동성 있는 기기의 위치정보가 게시물과 함께 저장됩니다. 저장된 위치정보는 별도의 활용없이 보관되거나, 또는 장소를 기반으로 콘텐츠를 분류하거나 검색할 수 있는 기능이 제공될 수도 있습니다.
2. 위치정보를 활용한 검색결과 및 콘텐츠 제공 : 정보 검색을 요청하거나 개인위치정보주체 또는 이동성 있는 기기의 위치정보를 제공 시 본 위치정보를 이용한 검색결과, 주변결과(맛집, 주변업체, 교통수단 등), 번역결과를 제시합니다.
3. 이용자 위치를 활용한 광고정보 제공: 검색결과 또는 기타 서비스 이용 과정에서 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 광고소재를 제시합니다.
4. 이용자 보호 및 부정 이용 방지: 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 권한없는 자의 비정상적인 서비스 이용 시도 등을 차단합니다.
5. 길 안내 등 생활편의 서비스 제공: 교통정보와 길 안내 등 최적의 경로를 지도로 제공하며, 주변 시설물 찾기, 뉴스/날씨 등 생활정보, 긴급구조 서비스, 주소 자동 입력 등 다양한 운전 및 생활 편의 서비스를 제공합니다.
② 제1항 위치기반서비스의 이용요금은 무료입니다.
제 4 조 (개인위치정보주체의 권리)
① 개인위치정보주체는 개인위치정보 수집 범위 및 이용약관의 내용 중 일부 또는 개인위치정보의 이용ㆍ제공 목적, 제공받는 자의 범위 및 위치기반서비스의 일부에 대하여 동의를 유보할 수 있습니다.
② 개인위치정보주체는 개인위치정보의 수집ㆍ이용ㆍ제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다.
③ 개인위치정보주체는 언제든지 개인위치정보의 수집ㆍ이용ㆍ제공의 일시적인 중지를 요구할 수 있습니다. 이 경우 회사는 요구를 거절하지 아니하며, 이를 위한 기술적 수단을 갖추고 있습니다
④ 개인위치정보주체는 회사에 대하여 아래 자료의 열람 또는 고지를 요구할 수 있고, 당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 회사는 정당한 이유 없이 요구를 거절하지 아니합니다.

1. 개인위치정보주체에 대한 위치정보 수집ㆍ이용ㆍ제공사실 확인자료
2. 개인위치정보주체의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법령의 규정에 의하여 제3자에게 제공된 이유 및 내용
⑤ 회사는 개인위치정보주체가 동의의 전부 또는 일부를 철회한 경우에는 지체 없이 수집된 개인위치정보 및 위치정보 수집ㆍ이용ㆍ제공사실 확인자료를 파기합니다.단, 동의의 일부를 철회하는 경우에는 철회하는 부분의 개인위치정보 및 위치정보 수집ㆍ이용ㆍ제공사실 확인자료에 한합니다.
⑥ 개인위치정보주체는 제1항 내지 제4항의 권리행사를 위하여 이 약관 제13조의 연락처를 이용하여 회사에 요구할 수 있습니다.
제 5 조 (법정대리인의 권리)
① 회사는 만14세 미만 아동으로부터 개인위치정보를 수집ㆍ이용 또는 제공하고자 하는 경우에는 만14세 미만 아동과 그 법정대리인의 동의를 받아야 합니다.
② 법정대리인은 만14세 미만 아동의 개인위치정보를 수집ㆍ이용ㆍ제공에 동의하는 경우 동의유보권, 동의철회권 및 일시중지권, 열람ㆍ고지요구권을 행사할 수 있습니다.
제 6 조 (위치정보 이용·제공사실 확인자료 보유근거 및 보유기간)
회사는 위치정보의 보호 및 이용 등에 관한 법률 제16조 제2항에 근거하여 개인위치정보주체에 대한 위치정보 수집·이용·제공사실 확인자료를 위치정보시스템에 자동으로 기록하며, 6개월 이상 보관합니다.
제 7 조 (서비스의 변경 및 중지)
① 회사는 위치기반서비스사업자의 정책변경 등과 같이 회사의 제반 사정 또는 법률상의 장애 등으로 서비스를 유지할 수 없는 경우, 서비스의 전부 또는 일부를 제한, 변경하거나 중지할 수 있습니다.
② 제1항에 의한 서비스 중단의 경우에는 회사는 사전에 인터넷 등에 공지하거나 개인위치정보주체에게 통지합니다.
제 8 조 (개인위치정보 제3자 제공 시 즉시 통보)
① 회사는 개인위치정보주체의 동의 없이 당해 개인위치정보주체의 개인위치정보를 제3자에게 제공하지 아니하며, 제3자 제공 서비스를 제공하는 경우에는 제공받는 자 및 제공목적을 사전에 개인위치정보주체에게 고지하고 동의를 받습니다.
② 회사는 개인위치정보를 개인위치정보주체가 지정하는 제3자에게 제공하는 경우에는 개인위치정보를 수집한 당해 통신단말장치로 매회 개인위치정보주체에게 제공받는 자, 제공일시 및 제공목적을 즉시 통보합니다.
③ 다만, 아래에 해당하는 경우에는 개인위치정보주체가 미리 특정하여 지정한 통신단말장치 또는 전자우편주소 등으로 통보합니다.

1.개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우
2.개인위치정보주체가 개인위치정보를 수집한 당해 통신단말장치 외의 통신단말장치 또는 전자우편주소 등으로 통보할 것을 미리 요청한 경우
제 9 조 (8세 이하의 아동 등의 보호의무자의 권리)
① 회사는 아래의 경우에 해당하는 자(이하 “8세 이하의 아동 등"이라 함)의 보호의무자가 8세 이하의 아동 등의 생명 또는 신체보호를 위하여 개인위치정보의 이용 또는 제공에 동의하는 경우에는 본인의 동의가 있는 것으로 봅니다.

1. 8세 이하의 아동
2. 피성년후견인
3. 장애인복지법 제2조제2항제2호의 규정에 의한 정신적 장애를 가진 자로서 장애인고용촉진 및 직업재활법 제2조제2호의 규정에 의한 중증장애인에 해당하는 자(장애인복지법 제32조의 규정에 의하여 장애인등록을 한 자에 한정)
② 8세 이하의 아동 등의 생명 또는 신체의 보호를 위하여 개인위치정보의 이용 또는 제공에 동의를 하고자 하는 보호의무자는 서면동의서에 보호의무자임을 증명하는 서면을 첨부하여 회사에 제출하여야 합니다.
③ 보호의무자는 8세 이하의 아동 등의 개인위치정보 이용 또는 제공에 동의하는 경우 개인위치정보주체 권리의 전부를 행사할 수 있습니다
제 10 조 (개인위치정보의 보유목적 및 이용기간)
① 회사는 위치기반서비스를 제공하기 위해 필요한 최소한의 기간 동안 개인위치정보를 보유 및 이용합니다.
② 회사는 대부분의 위치기반서비스에서 개인위치정보를 일회성 또는 임시로 이용 후 지체없이 파기합니다. 단, ‘GeoTagging’ 서비스와 같이 이용자가 게시물, 콘텐츠와 함께 개인위치정보를 GNDG 서비스에 게시 또는 보관하는 경우, 해당 게시물, 콘텐츠의 보관기간 동안 개인위치정보가 함께 보관됩니다.
제 11 조 (손해배상)
개인위치정보주체는 회사의 위치정보의 보호 및 이용 등에 관한 법률 제15조 내지 26조의 규정을 위반한 행위로 손해를 입은 경우에 회사에 대하여 손해배상을 청구할 수 있습니다. 이 경우 회사는 고의 또는 과실이 없음을 입증하지 아니하면 책임을 면할 수 없습니다.
제 12 조 (분쟁의 조정)
① 회사는 위치정보와 관련된 분쟁에 대하여 개인위치정보주체와 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 방송통신위원회에 재정을 신청할 수 있습니다.
② 회사 또는 개인위치정보주체는 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 개인정보보호법에 따라 개인정보분쟁조정위원회에 조정을 신청할 수 있습니다.
제 13 조 (사업자 정보 및 위치정보 관리책임자)
① 회사의 상호, 주소 및 연락처는 다음과 같습니다.

- 상호: GNDG주식회사
② 회사는 다음과 같이 위치정보 관리책임자를 지정하여 이용자들이 서비스 이용과정에서 발생한 민원사항 처리를 비롯하여 개인위치정보주체의 권리 보호를 위해 힘쓰고 있습니다.

- 메일 : 문의하기
부칙
제1조 시행일
2022년 4월 27일부터 시행되던 종전의 약관은 본 약관으로 대체하며, 본 약관은 2022년 5월 18일부터 적용됩니다.
                </div>
                <div class="modal-footer">
                  <button type="button" class="css-738xq4" data-bs-dismiss="modal">확인</button>
                </div>
              </div>
            </div>
          </div>

    


                    </form>                                    
            </div>
        </div>
    </section>
    <c:import url="../template/footer.jsp"></c:import>
	</div> <!-- wrap end -->
    <script src="/resources/js/member/join.js"></script>

<!-- 다음 우편주소api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//우편번호, 주소 Daum API
	function openDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
				document.getElementById('user_post').value = data.zonecode;
				document.getElementById('user_addr').value = data.address;
			}
		}).open();
	}
</script>
    <!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>		 -->
</body>
</html>