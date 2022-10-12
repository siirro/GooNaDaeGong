const loginbtn = document.getElementById("loginbtn");
const frmLogin = document.getElementById("frmLogin");
const user_id = document.getElementById("user_id");
const user_pw = document.getElementById("user_pw");
//js 체크박스 나오는곳
const id_check = document.getElementById("id_check");
const pw_check = document.getElementById("pw_check");


//check 결과값
let idCheck = false;
let pwCheck = false;


loginbtn.addEventListener("click",function(){
  
    if(user_id.value == ""){
        id_check.innerHTML="아이디를 입력해주세요."
        user_id.focus();
        return;
    }else{
        id_check.innerHTML="";
    }
    if(user_pw.value == ""){
        pw_check.innerHTML="비밀번호를 입력해주세요."
        user_pw.focus();
        return;
    }else{
        pw_check.innerHTML="";
        frmLogin.submit();
    }

});