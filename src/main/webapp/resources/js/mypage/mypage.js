const delbtn = document.getElementById("delbtn");
const user_id = document.getElementById("user_id");
const qnatitle = document.querySelector(".qnatitle");

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

