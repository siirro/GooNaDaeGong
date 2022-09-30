const fileAdd = document.querySelector("#fileAdd");
const button = document.querySelector("#button");
const container = document.querySelector("#container");


//--------------------파일추가--------------------
let count = 0;
let idx = 0;

function setCount(c) { //update.jsp
    if (c >= 0) {
        count = c;
    }
}

button.addEventListener("click", function () {

    if (count > 4) {
        alert('최대 업로드파일 수를 초과 했습니다. 최대업로드 파일 갯수 : 5');
        return;
    }

    //<div id="file0">
    //<input type="file" id="files" name="files" accept="image/*" onchange="setThumbnail(event);"/>
//<img class="image" src="data:image/jpe">
    //<button type="button" class="del" title="0">삭제</button>
    //</div>
    let div = document.createElement("div");
    div.setAttribute("id", "file" + idx);
    container.appendChild(div);

    let input = document.createElement("input");
    input.setAttribute("type", "file");
    input.setAttribute("id", "files");
    input.setAttribute("name", "files");
    input.setAttribute("accept", "image/*");
    input.setAttribute("onchange", "setThumbnail(event);");
    div.appendChild(input);

    div.setAttribute

    let btn = document.createElement('button');
    btn.setAttribute("type", "button");
    btn.setAttribute("class", "del");
    btn.setAttribute("title", idx);
    let btntxt = document.createTextNode('삭제');
    btn.appendChild(btntxt);
    div.append(btn);
})

function setThumbnail(event) {

    for (let image of event.target.files) {
        let reader = new FileReader();
        reader.onload = function (event) {
            
            let img = document.createElement("img");
            img.setAttribute("src", event.target.result);
            img.setAttribute("style", "width: 120px; height: 90px;");
            container.appendChild(img);
            
            count++;
            idx++;
        };
        reader.readAsDataURL(image);
    }
}


//--------------------파일삭제--------------------
container.addEventListener("click", function (event) {
    if (event.target.className = "del") {
        const idxNum = document.getElementById('file' + event.target.title);
        idxNum.remove();
    }
})