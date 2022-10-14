const fileDelete = document.querySelectorAll(".fileDelete");
// const deal = document.querySelectorAll(".deal");
// const item_deal = document.querySelector("#item_deal");

// deal.forEach(function(e) {
//     if (item_deal.getAttribute('value') == e.value) {
//         e.setAttribute("selected","selected");
//     }
// })



//----------------------------수정시 이미지파일삭제----------------------------
fileDelete.forEach(function(e) {
    e.addEventListener("click", function () {
        let check = window.confirm('삭제하면 되돌릴 수 없습니다. 삭제하시겠습니까?');
        if (!check) {
            return;
        }

        let fileNum = e.getAttribute('data-file-num');

        //ajax
        const xhttp = new XMLHttpRequest();
        xhttp.open('POST', 'fileDelete');
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send('fileNum=' + fileNum);
        xhttp.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                let result = this.responseText.trim();
                if (result == 1) {
                    e.parentNode.remove();
                    count--;
                } else {
                    console.log(result);
                }
            }
        }
    })
})
