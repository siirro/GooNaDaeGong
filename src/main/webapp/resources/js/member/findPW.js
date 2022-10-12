const findPWbtn = document.getElementById("findPWbtn");
const user_id= document.getElementById("user_id");
const user_email =document.getElementById("user_email");
const id_check = document.getElementById("id_check");
const email_check = document.getElementById("email_check");
const pwbtn = document.getElementById("pwbtn");
const frmPW = document.getElementById("frmPW");
const modalbody = document.getElementById("modalbody");


pwbtn.addEventListener("click",function(){
    console.log("비밀번호 찾으러 가야만 해요 실행시켜주세요")

    let userID = user_id.value;
    let userEmail = user_email.value;


    //1.XMLHTTPRequest 생성
    const xhttp = new XMLHttpRequest();
    //2.method.url요청정보
    xhttp.open("POST","./findPW");
    //3.Enctype
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    //4.post 파라미터 전송
    xhttp.send("user_id="+userID+"&user_email="+userEmail);
    //5.요청발생
    xhttp.onreadystatechange=function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            console.log("ID==", userID);
            console.log("email==", userEmail);
            console.log("ajax 뭐가오는중이죠?==",xhttp.responseText)
            let result = xhttp.responseText.trim();
            
            if(userID == ""){
                modalbody.innerHTML="아이디를 입력해주세요."
            }else if(userEmail == ""){
                modalbody.innerHTML="이메일을 입력해주세요."
            }else if(result ==""){
                modalbody.innerHTML="입력한 정보로 등록된 정보가 없습니다."
            }else{
                modalbody.innerHTML="등록된 이메일로 임시비밀번호 발급되었습니다."
            }
            
        }
    }
})

