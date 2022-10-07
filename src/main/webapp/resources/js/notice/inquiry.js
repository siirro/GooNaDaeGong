
const qna_code = document.getElementById("qna_code");
const qna_cate = document.getElementById("qna_cate");
const qna_title = document.getElementById("qna_title");
const qna_contents = document.getElementById("qna_contents");
const qnaSubmit = document.getElementById("qnaSubmit");

let check1=false;
let check2=false;
let check3=false;
let check4=false;

qna_code.addEventListener("change",function(){
    if(qna_code.value.length>0){
        check1=true;
        console.log("코드적용.트루");
    } else {
        check1=false;
    }
    qnaSubmit1();
});


qna_cate.addEventListener("change",function(){
    if(qna_cate.value.length>0){
        check2=true;
        console.log("카테적용.트루");
    } else {
        check2=false;
    }
    qnaSubmit1();
});


qna_title.addEventListener("keyup",function(){
    if(qna_title.value.length>0){
    check3=true;
    console.log("제목썼음.트루");
    } else {
        check3=false;
    }
    qnaSubmit1();
});

qna_contents.addEventListener("keyup",function(){
    if(qna_contents.value.length>0){
        check4=true;
        
    } else {
        check4=false;
        
    }
	if(qna_contents.value.length>5000){
		check4=false;
		console.log("글자수초과")
	}
    qnaSubmit1();
});



function qnaSubmit1(){

    if(check1&&check2&&check3&&check4) {
            console.log("넷다트루.버튼을 보라색으로");
            // qnaSubmit.setAttribute("disabled","false");
            qnaSubmit.removeAttribute("disabled");
            qnaSubmit.style.backgroundColor = "#6667AB";
    };
};





// if(check) {
//         button.disabled = false;
//         button.style.cursor = "pointer";
//         button.style.backgroundColor = "#1c7ed6";
// };

// qnaSubmit.disabled = check==false;

qnaSubmit.addEventListener("click",function(){
    
   
    
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

// $("#qna_contents").keyup(function(e) {
// 	console.log("키업!");
// 	var content = $(this).val();
// 	$("#textLengthCheck").val("(" + content.length + "/ 5000)"); //실시간 글자수 카운팅
// 	if (content.length > 200) {
// 		Alert("최대 5000자까지 입력 가능합니다.");
// 		$(this).val(content.substring(0, 5000));
// 		$('#textLengthCheck').html("(5000 / 최대 5000자)");
// 	}
// });



document.getElementById("qna_contents").addEventListener("keyup",function(){
	
	let content = this.value;
	
	document.getElementById("lengthCheck").textContent = content.length + "/ 5000";

	if(content.length >5000) {
		alert("최대 5000자까지 입력 가능합니다.");
		document.getElementById("lengthCheck").textContent = "5000 / 5000";
		this.value = content.slice(0, -1);

	}

});