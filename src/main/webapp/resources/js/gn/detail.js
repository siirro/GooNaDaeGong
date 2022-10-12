const likeButton = document.querySelector("#likeButton");
const likeUpDown = document.querySelector("#likeUpDown");
const item_num = document.querySelector("#item_num").value;
const user_id = document.querySelector("#user_id").value;
const category1 = document.querySelector("#category1");
const category2 = document.querySelector("#category2");
const category3 = document.querySelector("#category3");
const category4 = document.querySelector("#category4");
let json = JSON.parse(document.querySelector('#json').innerHTML);



//----------------------------좋아요(찜하기)----------------------------
likeButton.addEventListener('click', function () {
    const count = parseInt(likeUpDown.innerHTML);
    const xhttp = new XMLHttpRequest();
    xhttp.open("POST", "./like");
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("item_num=" + item_num + "&user_id=" + user_id);
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            let result = xhttp.responseText.trim();
            if (result == 1) {
                likeButton.setAttribute("style", "color:red");
                likeUpDown.innerHTML = count + 1;
            } else {
                likeButton.setAttribute("style", "color:black");
                likeUpDown.innerHTML = count - 1;
            }
        }
    }
})


//----------------------------좋아요수 조회----------------------------
function getLikeCount() {
    const xhttp = new XMLHttpRequest();
    xhttp.open("GET", "likeCount?item_num=" + item_num);
    xhttp.send();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            let count = xhttp.responseText;
            likeUpDown.innerHTML = count;
        }
    }
}





//----------------------------카테고리 나열----------------------------
function getCategory() {
    const xhttp = new XMLHttpRequest();
    xhttp.open("GET", "category");
    xhttp.send();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            let jsonData = JSON.parse(this.responseText.trim());
            let c1 = json.cate1;
            let c2 = json.cate2;
            let c3 = json.cate3;
            let c4 = json.cate4;

            for (c of jsonData) {
                if (c1 == c.cate_num) {
                    category1.innerHTML = c.cate_name + ' > ';
                }

                if (c2 == c.cate_num && c3 == null) {
                    category2.innerHTML = c.cate_name;
                } else if (c2 == c.cate_num) {
                    category2.innerHTML = c.cate_name + ' > ';
                }

                if (c3 == c.cate_num && c4 == null) {
                    category3.innerHTML = c.cate_name;
                } else if (c3 == c.cate_num) {
                    category3.innerHTML = c.cate_name + ' > ';
                }

                if (c4 == c.cate_num) {
                    category4.innerHTML = c.cate_name;
                }
            }
        }
    }
}
