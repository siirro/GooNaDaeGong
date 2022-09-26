const loginbtn = document.getElementById("loginbtn");
const frmLogin = document.getElementById("frmLogin");
const user_id = document.getElementById("user_id");
const user_pw = document.getElementById("user_pw");
const id_check = document.getElementById("id_check");
const pw_check = document.getElementById("pw_check");

loginbtn.addEventListener("click",function(){

    if(user_id.value ==""){
        id_check.innerHTML ="아이디를 입력해주세요.";
        user_id.focus();
    }else if(user_pw.value ==""){
        pw_check.innerHTML="비밀번호를 입력해주세요.";
        user_pw.focus();
    }

    user_id.addEventListener("blur",function(){
        if(user_id.value == ""){
            id_check.innerHTML = "아이디를 입력해주세요.";
            user_id.focus();
        }else{
            id_check.innerHTML = "";
        }
    })
    user_pw.addEventListener("blur",function(){
        if(user_pw.value == ""){
            pw_check.innerHTML ="비밀번호를 입력해주세요";
            user_pw.focus();
        }else{
            pw_check.innerHTML="";
        }
    })


      
    
});