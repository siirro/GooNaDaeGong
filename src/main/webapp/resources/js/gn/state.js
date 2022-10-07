const item_state1 = document.querySelector("#item_state1");
const item_state2 = document.querySelector("#item_state2");
const item_state3 = document.querySelector("#item_state3");


//판매중
item_state1.addEventListener("click", function () {
    console.log(item_state1.value)
    console.log(item_num);
    let item1 = item_state1.value;

    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "stateUpdate");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("item_num=" + item_num + "&item_state=" + item1);
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            let result = xhttp.responseText.trim();
            if(result>0){
            }
        }
    }
}
)


//예약중
item_state2.addEventListener("click", function () {
    console.log(item_state2.value)
    console.log(item_num);
    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "stateUpdate");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("item_num=" + item_num + "&item_state=" + item_state2);
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            let result = xhttp.responseText.trim();
            if(result>0){
                item_state2.innerHTML=item_state2.value;
        }
    }
}
})


//판매완료
item_state3.addEventListener("click", function () {
    console.log(item_state3.value)
    console.log(item_num);
    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "stateUpdate");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("item_num=" + item_num + "&item_state=" + item_state3);
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            let result = xhttp.responseText.trim();
            if(result>0){
                item_state3.innerHTML=item_state3.value;
            }
        }
    }
}
)