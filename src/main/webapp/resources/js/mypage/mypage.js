//탈퇴하기
const delbtn = document.getElementById("delbtn");
const user_id = document.getElementById("user_id");
const qnatitle = document.querySelector(".qnatitle");
const revDel= document.querySelectorAll(".revDel");
//수정하기
const user_pw = document.getElementById("user_pw");
const user_pw2 =document.getElementById("user_pw2");
const pw_check =document.getElementById("pw_check");
const pw2_check = document.getElementById("pw2_check");
const frmupdate =document.getElementById("frmupdate");
const upbtn = document.getElementById("upbtn");

let pwCheck = false;
let pw2Check = false;

//회원정보 수정 비밀번호 확인시 안넘어가게 하기
user_pw2.addEventListener("blur",function(){
    pw2Check =false;
    if(user_pw2.value==""){
        pw2_check.innerHTML="비밀번호를 확인해주세요.";
        
    }else if(user_pw.value == user_pw2.value){
        pw2_check.innerHTML="";
        pw2Check = true;
    }else{
        pw2_check.innerHTML="비밀번호가 일치하지 않습니다.";
    }
});

upbtn.addEventListener("click",function(){
    if(pw2Check){
        alert("정보 수정이 완료되었습니다.");
        frmupdate.submit();
    }else{
        alert("비밀번호를 확인해주세요.")
        user_pw2.focus();
    }
});




//탈퇴 버튼 
delbtn.addEventListener("click",function(){
    let userID = user_id.value;
    console.log("탈퇴탈퇴 어떻게하나~")
    alert("정말 탈퇴 하시겠습니까?");
    const xhttp = new XMLHttpRequest();
    xhttp.open("POST","./myDelete");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("user_id="+userID);
    xhttp.onreadystatechange=function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            console.log(xhttp.responseText)
            let result = xhttp.responseText.trim();
            if(result == 1){
                location.href="redirect:/";
            }else{
                console.log("탈퇴 실패");
            }
        }
    }
});









