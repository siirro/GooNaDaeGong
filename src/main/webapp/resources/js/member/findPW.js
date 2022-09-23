const findPWbtn = document.getElementById("findPWbtn");
const user_id= document.getElementById("user_id");
const user_email =document.getElementById("user_email");

findPWbtn.addEventListener("click",function(){
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
        }
    }
})