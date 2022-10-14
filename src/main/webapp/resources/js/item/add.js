const fileAdd = document.querySelector("#fileAdd");
const button = document.querySelector("#button");


//----------------------------이미지파일추가----------------------------
let count = 0;
let idx = 0;

function setCount(c) { //update.jsp
    if (c >= 0) {
        count = c;
    }
}

button.addEventListener("click", function () {
    if (count > 7) {
        alert('최대 업로드파일 수를 초과 했습니다. 최대업로드 파일 갯수 : 8');
        return;
    }

    //<div id="file0">
    //<input type="file" id="files0" name="files" accept="image/*" onchange="thumbnail(this);" style="display:none;"> 
    //<label for="files0"><img id="files0img" style="width: 120px; height: 90px;" src="></label>
    //<button type="button" class="del" title="0">삭제</button>
    //</div>
    let span = document.createElement("span");
    span.setAttribute("id", "file" + idx);
    fileAdd.append(span);

    let input = document.createElement("input");
    input.setAttribute("type", "file");
    input.setAttribute("id", "files" + idx);
    input.setAttribute("name", "files");
    input.setAttribute("accept", "image/*");
    input.setAttribute("onchange", "thumbnail(this);");
    input.setAttribute("style", "display:none;");
    span.appendChild(input);

    let label = document.createElement("label");
    label.setAttribute("for", "files" + idx);
    span.appendChild(label);

    let img = document.createElement("img");
    img.setAttribute("id", "files" + idx + "img");
    img.setAttribute("style", "width: 160px; height: 160px;");
    label.appendChild(img);

    let btn = document.createElement('button');
    btn.setAttribute("type", "button");
    btn.setAttribute("class", "del");
    btn.setAttribute("title", idx);
    let btntxt = document.createTextNode('삭제');
    btn.appendChild(btntxt);
    span.appendChild(btn);

    count++;
    idx++;
})


function thumbnail(input) {
    if (input.files && input.files[0]) {
        let reader = new FileReader();
        reader.onload = function (e) {
            document.getElementById(input.id + "img").src = e.target.result;
        };
        reader.readAsDataURL(input.files[0]);
    }
}


//----------------------------이미지파일삭제----------------------------
fileAdd.addEventListener("click", function (event) {
    if (event.target.className = "del") {
        const idxNum = document.getElementById('file' + event.target.title);
        idxNum.remove();
        count--;
    }
})