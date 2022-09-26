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

})

