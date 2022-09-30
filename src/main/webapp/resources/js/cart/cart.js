const delbtn = document.getElementById("delbtn");
const user_id = document.getElementById("user_id");
const cart_num = document.getElementById("cart_num");
const plusbtn = document.getElementById("plusbtn");
const minusbtn = document.getElementById("minusbtn");
const count = document.getElementById("count");
const acc = document.getElementById("accordion");

//카트 목록삭제
delbtn.addEventListener("click",function(){
    console.log("삭제 가나요?");
    let cartNum = cart_num.value;
    console.log(cartNum);
    //1.XMLHTTPRequest 생성
    const xhttp = new XMLHttpRequest();
    //2.method,url 요청정보
    xhttp.open("POST","./DeleteCart");
    //3.Enctype
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    //4.post 파라미터 전송
    xhttp.send("cart_num="+cartNum);
    //5.요청발생
    xhttp.onreadystatechange=function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            console.log(xhttp.responseText);
            let result = xhttp.responseText.trim();

            if(result ==1){
                window.location.reload(); 
            }
        }
    }
});

//카트 수량변경
plusbtn.addEventListener("click",function(){
    console.log("수량업")
    let cartNum = cart_num.value;
    let up = count.innerHTML;
    let plusup = ++up;
    console.log("되나 이게",plusup);
    console.log(up)
    //1
    const xhttp = new XMLHttpRequest();
    //2
    xhttp.open("POST","./UpdateCart");
    //3.
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    //4.
    xhttp.send("cart_num="+cartNum+"&item_count=" + plusup);
    //5.
    xhttp.onreadystatechange=function(){
        if(xhttp.readyState==4 & xhttp.status==200){
            console.log(xhttp.responseText);
            let result = xhttp.responseText.trim();

            if(result == 1){
                window.location.reload(); 
            }
        }
    }
});

minusbtn.addEventListener("click",function(){
    console.log("수량다아운")
    let cartNum = cart_num.value;
    let minus = count.innerHTML;
    let minusup = --minus;

    console.log("되나 이게", minusup);
    console.log(minus)
    //1
    const xhttp = new XMLHttpRequest();
    //2
    xhttp.open("POST","./UpdateCart");
    //3.
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    //4.
    xhttp.send("cart_num="+cartNum+"&item_count=" + minusup);
    //5.
    xhttp.onreadystatechange=function(){
        if(xhttp.readyState==4 & xhttp.status==200){
            console.log(xhttp.responseText);
            let result = xhttp.responseText.trim();

            if(result == 1){
                window.location.reload(); 
            }
        }
    }
});

//목록 숨기기/펼치기
acc.addEventListener("click",function(){
    console.log("목록 아코디언")
})