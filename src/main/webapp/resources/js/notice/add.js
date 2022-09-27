
const code = document.getElementById("code");
const nt_yn = document.getElementById("nt_yn");
const nt_title = document.getElementById("nt_title");
const nt_contents = document.getElementById("nt_contents");
const ntSubmit = document.getElementById("ntSubmit");

let check1=false;
let check2=false;
let check3=false;
let check4=false;

code.addEventListener("change",function(){
    if(code.value.length>0){
        check1=true;
        console.log("코드적용.트루");
    } else {
        check1=false;
    }
    ntSubmit1();
});


nt_yn.addEventListener("change",function(){
    if(nt_yn.value.length>0){
        check2=true;
        console.log("노출적용.트루");
    } else {
        check2=false;
    }
    ntSubmit1();
});


nt_title.addEventListener("keyup",function(){
    if(nt_title.value.length>0){
    check3=true;
    console.log("제목썼음.트루");
    } else {
        check3=false;
    }
    ntSubmit1();
});

nt_contents.addEventListener("keyup",function(){
    if(nt_contents.value.length>0){
        check4=true;
        console.log("내용썻음.트루");
    } else {
        check4=false;
        
    }
    ntSubmit1();
});



function ntSubmit1(){

    if(check1&&check2&&check3&&check4) {
            console.log("넷다트루.버튼을 보라색으로");
            // qnaSubmit.setAttribute("disabled","false");
            ntSubmit.removeAttribute("disabled");
            ntSubmit.style.backgroundColor = "#6667AB";
    };
};





// if(check) {
//         button.disabled = false;
//         button.style.cursor = "pointer";
//         button.style.backgroundColor = "#1c7ed6";
// };

// qnaSubmit.disabled = check==false;


ntSubmit.addEventListener("click",function(){
    
    alert("클릭을 누름 ")
    //qnaSubmit.submit();
    
});





const addFiles = document.getElementById('addFiles');
const addFilesb = document.getElementById('addFilesb');



// ---------Add시 file add------------------
let count = 0;
let idx = 0;

function setCount(c){
	if(c>=0) {
		count=c;
	}
}

try{

addFilesb.addEventListener("click", function(){
	
	
	if(count>4) {
		alert("파일 첨부는 최대 5개만 가능합니다")
		return;
	}
	
	let d = document.createElement("div");
	let dch = document.createAttribute("class");
	dch.value="input-group mb-3";
	d.setAttributeNode(dch);
	//삭제기능을위해
	let c = document.createAttribute("id");
	c.value="file"+idx;
	d.setAttributeNode(c);
	

	let i = document.createElement("input");
	let it = document.createAttribute("type");
	it.value="file";
	let ic = document.createAttribute("class");
	ic.value="form-control";
	let ii = document.createAttribute("id");
	ii.value = "multipartFiles";
	let ina = document.createAttribute("name");
	ina.value = "multipartFiles";
	i.setAttributeNode(it);
	i.setAttributeNode(ic);
	i.setAttributeNode(ii);
	i.setAttributeNode(ina);
	d.appendChild(i);



	//삭제 버튼 Element 생성
	let b = document.createElement("button");
	let bc = document.createAttribute("class");
	bc.value="btn btn-secondary del";
	b.setAttributeNode(bc);

	bc = document.createAttribute("type");
	bc.value="button";
	b.setAttributeNode(bc);

	let bt = document.createTextNode("삭제");
	b.appendChild(bt);

	bc = document.createAttribute("title");
	bc.value=idx;
	b.setAttributeNode(bc);


	d.appendChild(b);

	addFiles.append(d)

	count++;
	idx++;

	

});

addFiles.addEventListener("click", function(event){
	let button = event.target;
	if(button.classList[2]=='del'){
		document.getElementById("file"+button.title).remove();
		count--;
		// alert(button.getAttribute("title"));

		//인풋,라벨,버튼을 전부 삭제해야한다.
		//remove는 자식포함 전부삭제
		//removechild는 내부의 자식들 중 하나를 삭제

	
	}
});

}catch(e){

}


function onTestChange() {
    var key = window.event.keyCode;

    // If the user has pressed enter
    if (key === 13) {
        document.getElementById("nt_contents").value = document.getElementById("nt_contents").value + "\n*";
        return false;
    }
    else {
        return true;
    }
}