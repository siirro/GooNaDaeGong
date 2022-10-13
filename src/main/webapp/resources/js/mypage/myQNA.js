const qnatitle = document.querySelectorAll(".qnatitle");
const addqna = document.querySelectorAll(".addqna");
const user_id = document.getElementById("user_id");
const qnaDel = document.querySelectorAll(".qnaDel");
const revDel= document.querySelectorAll(".revDel");


//문의 아코디언
for(let i =0; i<qnatitle.length; i++){

qnatitle[i].addEventListener("click",function(){
    console.log("응애?");

    if(!qnatitle[i].classList.contains('css-4l2co')){
        qnatitle[i].classList.replace('css-14e35e','css-4l2co');

        addqna[i].classList.toggle('show');
    }else if(!qnatitle[i].classList.contains('css-14e35e')){
        qnatitle[i].classList.replace('css-4l2co','css-14e35e');
        addqna[i].classList.toggle('show');
    }
 })
    
}

//문의삭제
for(let q=0; q<qnaDel.length; q++){

    qnaDel[q].addEventListener("click",function(){
        console.log("문의삭제잉");
    
        let userID =user_id.value;
        let qnaNum= qnaDel[q].getAttribute("data-qna-num");
        console.log(qnaNum);
        const xhttp = new XMLHttpRequest();
        xhttp.open("POST","./delmyQNA");
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("qna_num="+qnaNum+"&user_id="+userID);
        xhttp.onreadystatechange=function(){
            if(xhttp.readyState==4 && xhttp.status==200){
                console.log(xhttp.responseText);
                let result = xhttp.responseText.trim();
                if(result==1){
                    window.location.reload();
                }else{
                    alert("문의삭제 실패");
                }
            }
    
        }
    });
}

//후기삭제
for(let r=0; r<revDel.length; r++){
    revDel[r].addEventListener("click",function(){
        console.log("후기삭제잉")
        let userID =user_id.value;
        let revNum = revDel[r].getAttribute("data-rv-num");
        const xhttp = new XMLHttpRequest();
        xhttp.open("POST","./delmyReview");
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("rv_num="+revNum+"&user_id="+userID);
        xhttp.onreadystatechange=function(){
            if(xhttp.readyState==4 && xhttp.status==200){
                console.log(xhttp.responseText);
                let result = xhttp.responseText.trim();
                if(result==1){
                    window.location.reload();
                }else{
                    alert("후기삭제 실패");
                }

            }
        }
    
    });
}