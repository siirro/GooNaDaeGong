const category1 = document.querySelector("#category1");
const category2 = document.querySelector("#category2");
const category3 = document.querySelector("#category3");
const category4 = document.querySelector("#category4");

function getCategory() {
    const xhttp = new XMLHttpRequest();
    xhttp.open("GET", 'category');
    xhttp.send();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {

            let jsonData = JSON.parse(this.responseText.trim());
            console.log(jsonData);

        }
    }
}