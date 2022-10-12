const likeButton = document.querySelectorAll(".likeButton");
const item_num = document.querySelectorAll(".item_num").value;
const user_id = document.querySelector("#user_id").value;
// const likeUpDown = document.querySelector("#likeUpDown");

for(let i=0; i<likeButton.length; i++){

    likeButton[i].addEventListener('click', function () {
        console.log("눌려 이놈아");
        let itemNum = likeButton[i].getAttribute("data-item-num");
        const xhttp = new XMLHttpRequest();
        xhttp.open("POST", "./heart");
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("item_num=" + itemNum + "&user_id=" + user_id);
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                let result = xhttp.responseText.trim();
                if (result == 1) {
                    likeButton[i].setAttribute("style", "color:red");
                    // likeUpDown.innerHTML = count + 1;
                } else {
                    likeButton[i].setAttribute("style", "color:black");
                    location.href="./myLike";
                    // likeUpDown.innerHTML = count - 1;
                }
            }
        }
    })
}
