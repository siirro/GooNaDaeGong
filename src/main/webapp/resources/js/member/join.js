const joinbtn = document.getElementById("joinbtn");
const frmjoin = document.getElementById("frmjoin");
const user_id = document.getElementById("user_id");
const user_pw = document.getElementById("user_pw");
const user_pw2 = document.getElementById("user_pw2");
const user_name =document.getElementById("user_name");
const user_email = document.getElementById("user_email");
const user_phone = document.getElementById("user_phone");
const user_post = document.getElementById("user_post");
const user_addr = document.getElementById("user_addr");
const user_addr2 = document.getElementById("user_addr2");
const userfile = document.getElementById("userfile");
// js 체크
const id_check =document.getElementById("id_check");
const pw_check =document.getElementById("pw_check");
const pw2_check = document.getElementById("pw2_check");
const name_check = document.getElementById("name_check");
const email_check = document.getElementById("email_check");
const phone_check = document.getElementById("phone_check");
const post_check = document.getElementById("post_check");
const addr_check =document.getElementById("addr_check");
const addr2_check =document.getElementById("addr2_check");
const file_check = document.getElementById("file_check");
//약관동의
const all = document.querySelector("#all");
const agrees = document.querySelectorAll(".agrees");
const req = document.getElementsByClassName("req");
//약관동의 모달창 버튼
const mymodal1 =document.getElementById("mymodal1");
const mymodal2 =document.getElementById("mymodal2");
const mymodal3 =document.getElementById("mymodal3");
//약관동의 모달창 바디
const model1 =document.getElementById("modal1");
const model2 =document.getElementById("modal2");
const model3 =document.getElementById("modal3");

//중복체크
const ajaxID = document.getElementById("ajaxID");
const ajaxEmail = document.getElementById("ajaxEmail");

//정규식

//아이디 정규식
var idJ = /^[a-z0-9][a-z0-9_\-]{4,12}$/;
// 비밀번호 정규식
var pwJ = /^[A-Za-z0-9]{4,12}$/;
// 이름 정규식
var nameJ = /^[a-z0-9가-힣]{5,12}$/;
// 이메일 검사 정규식
var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;


//check 결과
let idCheck = false;
let pwCheck = false;
let pw2Check = false;
let nameCheck = false;
let emailCheck = false;
let phoneCheck = false;
let postCheck = false;
let addrCheck =false;
let addr2Check = false;
let fileCheck = false;
let agreeCheck =false;

//아이디
user_id.addEventListener("blur",function(){
    console.log("아이디 체크해라")
    idCheck = false;
    if(idJ.test(user_id.value)){ //조건식부분
        id_check.innerHTML ="";
        idCheck = true;
    }else{
        id_check.innerHTML="5~12자의 영문, 숫자만 사용 가능합니다.";
        user_id.focus();
    }
});

//비밀번호
user_pw.addEventListener("blur",function(){
    console.log("비밀번호 체크해라");
    pwCheck = false;
    if(pwJ.test(user_pw.value)){
        pw_check.innerHTML="";
        pwCheck = true;
    }else{
        pw_check.innerHTML ="4~12자의 숫자 , 문자로만 사용 가능합니다.";
        user_pw.focus();
    }
});

//pw가 같은지 check
user_pw2.addEventListener("blur",function(){
    console.log("비밀번호 같은지 체크하셈");
    pw2Check= false;
    if(user_pw2.value == user_pw.value){
        pw2_check.innerHTML="";
        pw2Check= true;
    }else{
        pw2_check.innerHTML="비밀번호가 일치하지 않습니다.";
        user_pw.focus();
    }
});

//이름
user_name.addEventListener("blur",function(){
    console.log("이름 체크해라");
    nameCheck= false;
    if(user_name.value.length>5){
        name_check.innerHTML="";
        nameCheck=true;
    }else{
        name_check.innerHTML="이름을 입력해주세요.";
        user_name.focus();
    }
});

//이메일
user_email.addEventListener("blur",function(){
    console.log("이메일 체크해라");
    emailCheck=false;
    if(mailJ.test(user_email.value)){
        email_check.innerHTML="";
        emailCheck =true;
    }else{
        email_check.innerHTML="이메일 양식을 확인해주세요.";
        user_email.focus();
    }
});

//핸드폰
user_phone.addEventListener("blur",function(){
    console.log("핸드폰 체크");
    phoneCheck = false;
    if(user_phone.value.length>1){
        phone_check.innerHTML= "";
        phoneCheck = true;
    }else{
        phone_check.innerHTML="핸드폰 조건식";
        user_phone.focus();
    }
});

user_post.addEventListener("blur",function(){
    console.log("님 우편번호 확인이요");
    postCheck =false;
    if(user_post.value == 5){
        post_check.innerHTML="";
        postCheck = true;
    }else{
        post_check.innerHTML="주소검색 버튼을 눌러주세요.";
    }
});

//주소1
user_addr.addEventListener("blur",function(){
    console.log("주소 체크");
    addrCheck =false;
    if(user_addr.value.length>1){
        addr_check.innerHTML="";
        addrCheck = true;
    }else{
        addr_check.innerHTML="주소검색 버튼을 눌러주세요";
        user_addr.focus();
    }
});

//주소2
user_addr2.addEventListener("blur",function(){
    console.log("상세주소 체크");
    addr2Check =false;
    if(user_addr2.value.length>1){
        addr2_check.innerHTML="";
        addr2Check =true;
    }else{
        addr2_check.innerHTML ="상세주소 조건식";
        user_addr2.focus();
    }
});

//파일
userfile.addEventListener("change",function(){
    console.log("프로필 파일 넣을거람슈 ㅇㅅㅇ");
    if(userfile.value==""){
        file_check.innerHTML="";
    }else{
        file_check.innerHTML= userfile.value;
    }
});


//----------------------------약관동의--------------
//전체동의
all.addEventListener("click",function(){
    const img = document.getElementsByClassName("css-1wfsi82");
    console.log("전체동의 체크 되나?")
    console.log(all.checked);
    if(all.checked){
        img[0].setAttribute("src","/resources/images/member/checked.svg")
        for(let x=0; x<agrees.length; x++){
            img[x].setAttribute("src","/resources/images/member/checked.svg");
        }
    }else if(!all.checked){
        img[0].setAttribute("src","/resources/images/member/check.svg");
        for(let t=0; t<agrees.length; t++){
            img[t].setAttribute("src","/resources/images/member/check.svg");
        }
    }else{
        console.log("뭐야 왜안되는거임 시발");
    }
    for(let i=0; i<agrees.length; i++){
        agrees[i].checked = all.checked
      
    }
});
//일반동의
for(let a=0; a<agrees.length; a++){
    agrees[a].addEventListener("click",function(){
        const img = document.getElementsByClassName("css-1wfsi82");
        console.log(agrees[a].checked)
        let checked = {
            open:"/resources/images/member/check.svg",
            close:"/resources/images/member/checked.svg"
        }
        
        agrees[a].checked ?  img[a].setAttribute("src",checked.close) : img[a].setAttribute("src",checked.open)
        let result = true;
        for(let y=0; y<agrees.length; y++){
            console.log(agrees[y].checked)
            if(!agrees[y].checked){
                img[0].setAttribute("src","/resources/images/member/check.svg");
                result = false;
                break;
            }else{
                img[0].setAttribute("src","/resources/images/member/checked.svg");
            }
        }
        all.checked = result;
    });
}

//필수약관만 선택해서 동의



joinbtn.addEventListener("click",function(){
    for(let i= 0; i<req.length; i++){
        console.log(req.length);
        console.log(req[i].checked);
        if(!req[i].checked){
            agreeCheck =false;
            break;
        }else{
            agreeCheck =true;
        }
    }
    if(idCheck&&pwCheck&&pw2Check&&nameCheck&&emailCheck&&phoneCheck&&addrCheck&&addr2Check&&agreeCheck){
        frmjoin.submit();
    }else{
        alert("필수 사항을 모두 체크 해주세요.");
    }
});


// -------------------------------------중복체크
ajaxID.addEventListener("click",function(){
    console.log("이제 아이디 중복 검사할거임")
    let userID = user_id.value;
    //1.XMLHTTPRequest 생성
    const xhttp = new XMLHttpRequest();
    //2.method,url 요청정보
    xhttp.open("POST","./ajaxID");
    //3.Enctype
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    //4.post 파라미터 전송
    xhttp.send("user_id="+userID);
    //5.요청발생
    xhttp.onreadystatechange=function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            console.log(userID);
            console.log(xhttp.responseText);
            let result = xhttp.responseText.trim();

            if(result == 1){
                id_check.innerHTML ="중복된 아이디 입니다.";
                user_id.focus();
            }else{
                id_check.innerHTML = "사용 가능한 아이디 입니다.";
            }

        }
    }
})//ajaxID

ajaxEmail.addEventListener("click",function(){
    console.log("이메일 중복검사 실행 해야함")
    let userEmail = user_email.value;

    //1.XMLHTTPRequest 생성
    const xhttp = new XMLHttpRequest();
    //2.method,url 요청정보
    xhttp.open("POST","./ajaxEmail");
    //3.Enctype
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    //4.post 파라미터 전송
    xhttp.send("user_email="+userEmail);
    //5.요청발생
    xhttp.onreadystatechange=function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            console.log(userEmail);
            console.log(xhttp.responseText)
            let result = xhttp.responseText.trim();
            if(result == 1){
                email_check.innerHTML= "중복된 이메일입니다.";
            }else{
                email_check.innerHTML= "사용 가능한 이메일 입니다."
            }
        }
    }

});



// --------------약관모달창
// mymodal1.addEventListener("click",function(){
//     model1.innerHTML =
//     "         <p>제 1 장 총칙</p>"
//    + "<p>제 1 조 (목적)</p>"
// "<p>본 약관은 CloudFilm이 운영하는 웹 사이트 (http://CloudFilm.com)의 제반 서비스의 이용조건 및 절차에 관한 사항 및 기타 필요한 사항을 규정함을 목적으로 한다.</p>

// "<p>제 2 조 (용어의 정의)</p>
// "<p>본 약관에서 사용하는 용어는 다음과 같이 정의한다.</p>
// "<p>①회원 : 기본 회원 정보를 입력하였고, 회사와 서비스 이용계약을 체결하여 아이디를 부여받은 개인</p>
// "<p>②아이디(ID) : 회원식별과 회원의 서비스 이용을 위해 회원이 선정하고 회사가 승인하는 문자와 숫자의 조합</p>
// "<p>③비밀번호(Password) : 회원이 통신상의 자신의 비밀을 보호하기 위해 선정한 문자와 숫자의 조합</p>
// "<p>④해지 : 회사 또는 회원에 의한 이용계약의 종료</p>

// "<p>제 3 조 (약관의 공시 및 효력과 변경)
// "<p>①본 약관은 회원가입 화면에 게시하여 공시하며 회사는 사정변경 및 영업상 중요한 사유가 있을 경우 약관을 변경할 수 있으며 변경된 약관은 공지사항을 통해 공시한다
// "<p>②본 약관 및 차후 회사사정에 따라 변경된 약관은 이용자에게 공시함으로써 효력을 발생한다.

// "<p>제 4 조 (약관 외 준칙)
// "<p>본 약관에 명시되지 않은 사항이 전기통신기본법, 전기통신사업법, 정보통신촉진법, ‘전자상거래등에서의 소비자 보호에 관한 법률’, ‘약관의 규제에관한법률’, ‘전자거래기본법’, ‘전자서명법’, ‘정보통신망 이용촉진등에 관한 법률’, ‘소비자보호법’ 등 기타 관계 법령에 규정되어 있을 경우에는 그 규정을 따르도록 한다."


// "<p>제 2 장 이용계약"

// "<p>제 5 조 (이용신청)"
// "<p>①이용신청자가 회원가입 안내에서 본 약관과 개인정보보호정책에 동의하고 등록절차(회사의 소정 양식의 가입 신청서 작성)를 거쳐 '확인' 버튼을 누르면 이용신청을 할 수 있다.
// "<p>②이용신청자는 반드시 실명과 실제 정보를 사용해야 하며 1개의 생년월일에 대하여 1건의 이용신청을 할 수 있다."
// "<p>③실명이나 실제 정보를 입력하지 않은 이용자는 법적인 보호를 받을 수 없으며, 서비스 이용에 제한을 받을 수 있다."

// "<p>제 6 조 (이용신청의 승낙)"
// "①회사는 제5조에 따른 이용신청자에 대하여 제2항 및 제3항의 경우를 예외로 하여 서비스 이용을 승낙한다."
// "②회사는 아래 사항에 해당하는 경우에 그 제한사유가 해소될 때까지 승낙을 유보할 수 있다."
// "가. 서비스 관련 설비에 여유가 없는 경우"
// "나. 기술상 지장이 있는 경우"
// "다. 기타 회사 사정상 필요하다고 인정되는 경우"
// "③회사는 아래 사항에 해당하는 경우에 승낙을 하지 않을 수 있다."
// "가. 다른 사람의 명의를 사용하여 신청한 경우"
// "나. 이용자 정보를 허위로 기재하여 신청한 경우"
// "다. 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청한 경우"
// "라. 기타 회사가 정한 이용신청 요건이 미비한 경우</p>"


// "<p>제 3 장 계약 당사자의 의무

// "<p>제 7 조 (회사의 의무)
// "<p>①회사는 사이트를 안정적이고 지속적으로 운영할 의무가 있다.
// "<p>②회사는 이용자로부터 제기되는 의견이나 불만이 정당하다고 인정될 경우에는 즉시 처리해야 한다. 단, 즉시 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 공지사항 또는 전자우편을 통해 통보해야 한다.
// "<p>③제1항의 경우 수사상의 목적으로 관계기관 및 정보통신윤리위원회의 요청이 있거나 영장 제시가 있는 경우, 기타 관계 법령에 의한 경우는 예외로 한다.

// "<p>제 8 조 (이용자의 의무)
// "<p>①이용자는 본 약관 및 회사의 공지사항, 사이트 이용안내 등을 숙지하고 준수해야 하며 기타 회사의 업무에 방해되는 행위를 해서는 안된다.
// "<p>②이용자는 회사의 사전 승인 없이 본 사이트를 이용해 어떠한 영리행위도 할 수 없다.
// "<p>③이용자는 본 사이트를 통해 얻는 정보를 회사의 사전 승낙 없이 복사, 복제, 변경, 번역, 출판, 방송 및 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없다.

// "<p>제 4 장 서비스의 제공 및 이용

// "<p>제 9 조 (서비스 이용)
// "<p>①이용자는 본 약관의 규정된 사항을 준수해 사이트를 이용한다.
// "<p>②본 약관에 명시되지 않은 서비스 이용에 관한 사항은 회사가 정해 '공지사항'에 게시하거나 또는 별도로 공지하는 내용에 따른다.

// "<p>제 10 조 (정보의 제공)
// "<p>회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 정보에 대하여 전자메일이나 서신우편 등의 방법으로 회원에게 정보를 제공할 수 있다.

// "<p>제 11 조 (광고게재)
// "<p>①회사는 서비스의 운용과 관련하여 서비스 화면, 홈페이지, 전자우편 등에 광고 등을 게재할 수 있다.
// "<p>②회사는 사이트에 게재되어 있는 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임을 지지 않는다.

// "<p>제 12 조 (서비스 이용의 제한)
// "<p>본 사이트 이용 및 행위가 다음 각 항에 해당하는 경우 회사는 해당 이용자의 이용을 제한할 수 있다.
// "<p>①공공질서 및 미풍양속, 기타 사회질서를 해하는 경우
// "<p>②범죄행위를 목적으로 하거나 기타 범죄행위와 관련된다고 객관적으로 인정되는 경우
// "<p>③타인의 명예를 손상시키거나 타인의 서비스 이용을 현저히 저해하는 경우
// "<p>④타인의 의사에 반하는 내용이나 광고성 정보 등을 지속적으로 전송하는 경우
// "<p>⑤해킹 및 컴퓨터 바이러스 유포 등으로 서비스의 건전한 운영을 저해하는 경우
// "<p>⑥다른 이용자 또는 제3자의 지적재산권을 침해하거나 지적재산권자가 지적 재산권의 침해를 주장할 수 있다고 판단되는 경우
// "<p>⑦타인의 아이디 및 비밀번호를 도용한 경우
// "<p>⑧기타 관계 법령에 위배되는 경우 및 회사가 이용자로서 부적당하다고 판단한 경우

// "<p>제 13 조 (서비스 제공의 중지)"
// "<p>회사는 다음 각 호에 해당하는 경우 서비스의 전부 또는 일부의 제공을 중지할 수 있다."
// "<p>①전기통신사업법 상에 규정된 기간통신 사업자 또는 인터넷 망 사업자가 서비스를 중지했을 경우"
// "<p>②정전으로 서비스 제공이 불가능할 경우"
// "<p>③설비의 이전, 보수 또는 공사로 인해 부득이한 경우"
// "<p>④서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 제공이 어려운 경우"
// "<p>⑤전시, 사변, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우"
// "<p>제 14 조 (게시물 관리)"
// "<p>회사는 건전한 통신문화 정착과 효율적인 사이트 운영을 위하여 이용자가 게시하거나 제공하는 자료가 제12조에 해당한다고 판단되는 경우에 임의로 삭제, 자료이동, 등록거부를 할 수 있다."
// "<p>제 15 조 (서비스 이용 책임)"
// "<p>이용자는 회사에서 권한 있는 사원이 서명한 명시적인 서면에 구체적으로 허용한 경우를 제외하고는 서비스를 이용하여 불법상품을 판매하는 영업활동을 할 수 없으며 특히 해킹, 돈벌기 광고, 음란 사이트를 통한 상업행위, 상용 S/W 불법제공 등을 할 수 없다. 이를 어기고 발생한 영업활동의 결과 및 손실, 관계기관에 의한 구속 등 법적 조치 등에 관해서는 회사가 책임을 지지 않는다.
// "<p>제 5 장 (재화의 주문 및 결제 관련) "
// "<p>제16조 (결제방법)"
// "‘회원’은 ‘회사’에서 판매하는 재화에 대하여 ‘선불카드, 직불카드, 신용카드 등의 각종 카드 결제 수단’을 이용하여 결제할 수 있다. 이때 ‘회사’는 이용자의 지급방법에 대하여 재화외 어떠한 명목의 수수료를 추가 징수하지 않는다."
// "<p>① ‘회사’는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 한다. 주문확인에 대한 내용은 해당게시판에서 확인 할 수 있다."
// "<p>② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 ‘회사’는 배송전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리한다. 다만 이미 대금을 지불한 경우에는 제18조의 ‘반품규정’을 따른다.
// "<p>제17조 (배송정책)"
// "<p>① ‘회사’는 이용자와 재화의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 결재를 실시한 날부터 7일 이내에 재화 등을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한 조치를 취한다. "
// "<p>②‘회사’는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 제품을 구매하는 웹 페이지 하단에 명시한다. 만약 ‘회사’가 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상한다. 하지만 ‘회사’의 고의과실이 없음을 입증한 경우에는 그러하지 아니한다.
// "<p>18조 (취소 및 반품 환불 규정)"
// "<p>‘회사’는 이용자가 구매 신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 3영업일 이내에 환급하거나 환급에 필요한 조치를 한다."
// "<p>① 재화가 발송 되기전 이용자가 결제를 취소할 경우 ‘회사’는 해당 주문건을 취소 처리하고 카드결제 승인을 취소한다."
// "<p>② 재화가 발송 된 이후 결제 취소는 불가하다. 단, ‘회사’의 부주의 ‘배송’상의 문제로 인한 재화의 파손, 변질의 경우 ‘회사’는 이용자에게 구매 금액의 반품 및 환불 조취 및 교환 조취를 취한다."


// "<p>제 6 장 기타"

// "<p>제 19 조 (면책 및 손해배상)"
// "<p>①천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 회사의 서비스 제공 책임이 면제된다."
// "<p>②회사는 이용자간 또는 이용자와 제3자간의 상호거래 관계에서 발생되는 결과에 대하여 어떠한 책임도 부담하지 않는다."
// "<p>③회사는 이용자가 게시판에 게재한 정보, 자료, 내용 등에 관하여 사실의 정확성, 신뢰도 등에 어떠한 책임도 부담하지 않으며 이용자는 본인의 책임 아래 본 사이트를 이용해야 한다.
// "<p>④이용자가 게시 또는 전송한 자료 등에 관하여 손해가 발생하거나 자료의 취사선택, 기타 무료로 제공되는 서비스 이용과 관련해 어떠한 불이익이 발생하더라도 이에 대한 모든 책임은 이용자에게 있다.
// "<p>⑤아이디와 비밀번호의 관리 및 이용자의 부주의로 인하여 발생되는 손해 또는 제3자에 의한 부정사용 등에 대한 책임은 이용자에게 있다."
// "<p>⑥이용자가 본 약관의 규정을 위반함으로써 회사에 손해가 발생하는 경우 이 약관을 위반한 이용자는 회사에 발생한 모든 손해를 배상해야 하며 동 손해로부터 회사를 면책시켜야 한다.

// "<p>제 20 조 (개인신용정보 제공 및 활용에 대한 동의서)"
// "회사가 회원 가입과 관련해 취득한 개인 신용 정보는 신용정보의 이용 및 보호에 관한 법률 제23조의 규정에 따라 타인에게 제공 및 활용 시 이용자의 동의를 얻어야 한다. 이용자의 동의는 회사가 회원으로 가입한 이용자의  신용정보를 신용정보기관, 신용정보업자 및 기타 이용자 등에게 제공해 이용자의 신용을 판단하기 위한 자료로서 활용하거나 공공기관에서 정책자료로 활용하는데 동의하는 것으로 간주한다.

// "<p>제 21 조 (분쟁의 해결)"
// "<p>①회사와 이용자는 본 사이트 이용과 관련해 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 해야 한다."
// "<p>②제1항의 규정에도 불구하고 동 분쟁으로 인하여 소송이 제기될 경우 동 소송은 회사의 본사 소재지를 관할하는 법원의 관할로 본다.

// <p><부칙>
// 본 약관은 2021년 12월 6일부터 적용한다.
// </p>";
// });