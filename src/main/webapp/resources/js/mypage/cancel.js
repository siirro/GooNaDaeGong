

const qna_cate = document.getElementById("merchant_uid");
const qna_contents = document.getElementById("memo");
const qnaSubmit = document.getElementById("qnaSubmit");

let check2=false;
let check4=false;




qna_cate.addEventListener("change",function(){
    if(qna_cate.value.length>0){
        check2=true;
        console.log("카테적용.트루");
    } else {
        check2=false;
    }
    qnaSubmit1();
});

qna_contents.addEventListener("keyup",function(){
    if(qna_contents.value.length>0){
        check4=true;
        
    } if(qna_contents.value.length=="") {
        check4=false;
		console.log("내용비엇음.4는false");
		qnaSubmit.setAttribute("disabled","");
        qnaSubmit.style.backgroundColor = "rgb(221, 221, 221)";
    }
	if(qna_contents.value.length>5000){
		check4=false;
		console.log("글자수초과")
	}
    qnaSubmit1();
});






function qnaSubmit1(){

    if(check2&&check4) {
            console.log("넷다트루.버튼을 보라색으로");
            // qnaSubmit.setAttribute("disabled","false");
            qnaSubmit.removeAttribute("disabled");
            qnaSubmit.style.backgroundColor = "#6667AB";
    } else {
		console.log("False가생겼다");
		qnaSubmit.setAttribute("disabled","");
        qnaSubmit.style.backgroundColor = "rgb(221, 221, 221)";
	}
};







document.getElementById("memo").addEventListener("keyup",function(){
	
	let content = this.value;
	
	document.getElementById("lengthCheck").textContent = content.length + "/ 2000";

	if(content.length >2000) {
		alert("최대 2000자까지 입력 가능합니다.");
		document.getElementById("lengthCheck").textContent = "2000 / 2000";
		this.value = content.slice(0, -1);

	}

});