const ajaxID = document.getElementById("ajaxID");
const ajaxEmail = document.getElementById("ajaxEmail");
const user_id = document.getElementById("user_id");
const user_email = document.getElementById("user_email");
const id_check = document.getElementById("id_check");
const pw_check = document.getElementById("pw_check");
const pw2_check = document.getElementById("pw2_check");
const name_check = document.getElementById("name_check");
const email_check = document.getElementById("email_check");
const phone_check =document.getElementById("phone_check");
const joinbtn = document.getElementById("joinbtn");
const frmjoin = document.getElementById("frmjoin");
const all = document.querySelector("#all");
const agrees = document.querySelectorAll(".agrees");
const req = document.getElementsByClassName("req");


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

// joinbtn.addEventListener("click",function(){
//     frmjoin.submit();
// });

//----------------------------약관동의--------------
//전체동의
all.addEventListener("click",function(){
    console.log("전체동의 체크 되나?")
    console.log(all.checked);
    for(let i=0; i<agrees.length; i++){
        agrees[i].checked = all.checked
    }
});
//일반동의
for(let a=0; a<agrees.length; a++){
    agrees[a].addEventListener("click",function(){
        console.log(agrees[a].checked)
        let result = true;
        for(let y=0; y<agrees.length; y++){
            console.log(agrees[y].checked)
            if(!agrees[y].checked){
                result = false;
                break;
            }
        }
        all.checked = result;
    });
}

//필수약관만 선택해서 동의



joinbtn.addEventListener("click",function(){
    let no = true;
    for(let i= 0; i<req.length; i++){
        console.log(req.length);
        console.log(req[i].checked);
        if(!req[i].checked){
            no =false;
            break;
        }
    }
    if(no){
        //form submit해주기
    }else{
        alert("필수약관 동의 해주세요.")
    }
});

