const cartbtn = document.querySelector(".cartbtn");
const user_id = document.getElementById("user_id");
const item_num = document.getElementById("item_num");
const count = document.getElementById("cart_count");

cartbtn.addEventListener("click",function(){
    console.log("떼잉 장바구니년!");
    let userID = user_id.value;
    let cartCount = count.value;
    let itemNum = item_num.value;
    console.log("시발 아이디",userID);
    console.log("cartCount==",cartCount);
    console.log("시발 아이템 넘",itemNum);
    const xhttp = new XMLHttpRequest();
    xhttp.open("POST","/item/AddCart");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("item_num="+itemNum+"&user_id="+userID+"&item_count="+cartCount)
    xhttp.onreadystatechange=function(){
        if(xhttp.readyState==4 && xhttp.status==200){
            console.log(xhttp.responseText);
            let result = xhttp.responseText.trim();
            if(result ==1){
                alert("장바구니에 추가되었습니다.");
            }else{
                alert("장바구니에 추가하지못했습니다.")
            }
        }
    }
});