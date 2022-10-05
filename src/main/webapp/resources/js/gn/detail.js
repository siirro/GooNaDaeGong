const category1 = document.querySelector("#category1");
const category2 = document.querySelector("#category2");
const category3 = document.querySelector("#category3");
const category4 = document.querySelector("#category4");
let item = document.querySelector('#json').innerHTML;
let json = JSON.parse(item);
let cateNum = json.category.cate_num;

function getCategory() {
    const xhttp = new XMLHttpRequest();
    xhttp.open("GET", 'category');
    xhttp.send();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            let jsonData = JSON.parse(this.responseText.trim());
            let c1 = json.cate1;
            let c2 = json.cate2;
            let c3 = json.cate3;
            let c4 = json.cate4;

            for(c of jsonData) {
                if(c1 == c.cate_num) {
                    category1.innerHTML = c.cate_name + ' > ';
                }

                if(c2 == c.cate_num && c3 == null) {
                    category2.innerHTML = c.cate_name;
                }else if(c2 == c.cate_num) {
                    category2.innerHTML = c.cate_name + ' > ';
                }

                if(c3 == c.cate_num && c4 == null) {
                    category3.innerHTML = c.cate_name;
                }else if(c3 == c.cate_num) {
                    category3.innerHTML = c.cate_name + ' > ';
                }

                if(c4 == c.cate_num) {
                    category4.innerHTML = c.cate_name;
                }


            }
        }
    }
}