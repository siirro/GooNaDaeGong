// $('.message a').click(function(){
//     $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
//  });
const findbtn = document.getElementById("findbtn");
const user_name= document.getElementById("user_name");
const user_phone = document.getElementById("user_phone");
const modalbody = document.getElementById("modalbody");

findbtn.addEventListener("click",function(){
    let userName= user_name.value;
    let userPhone= user_phone.value;
    console.log("name==",userName);
    console.log("phone==",userPhone);

    //1.XMLHTTPRequest 생성
    const xhttp = new XMLHttpRequest();
    //2.method.url요청정보
    xhttp.open("POST","./findID");
    //3.Enctype 
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    //4.post 파라미터 전송
    xhttp.send("user_name="+userName+"&user_phone="+userPhone);
    //5.요청발생
    xhttp.onreadystatechange=function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            console.log(xhttp.responseText)
            let id= xhttp.responseText.trim();

            if(id==""){
                modalbody.innerHTML="입력한 정보로 등록된 ID가 없습니다."
            }else{
                modalbody.innerHTML="회원님의 계정을 찾았습니다."+"<br>"+id;
            }
        }
    }


});