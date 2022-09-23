const qnaComment = document.getElementById("qnaComment");
const qnaCommentDelete = document.getElementById("qnaCommentDelete");
const qna_num = qnaComment.getAttribute("data-qna-num")
const commentList = document.getElementById("commentList");
const commentNull = document.getElementById("commentNull");

let count = 0;

getCommentList(qna_num);


try {
    //답변삭제 클릭 이벤트
    qnaCommentDelete.addEventListener("click",function(){
        
        let confirm1 = confirm("답변을 삭제하시겠습니까?");
        if(confirm1) {
            console.log("답변삭제");
            //답변삭제 ajax 
            //1. XMLHTTPRequest 생성 2.준비 3.enctype 4.전송
            const xhttp = new XMLHttpRequest();
            xhttp.open("POST","./comment");
            xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
            xhttp.send("qna_num="+qna_num+"&qna_comment="+"");
            //5.응답처리
            xhttp.onreadystatechange=function(){
                if(this.readyState==4 && this.status==200){
                    let result = xhttp.responseText.trim();
                    console.log("삭제완료?"+result);

                    try {
                        commentList.removeChild(divdiv);
                    }
                    catch {
                    }
                    getCommentList(qna_num);

                    location.reload();
                    

                }   
            };
            //답변제출,수정 ajax끝
        } else{
            console.log("삭제취소");
        }

    });
} catch (error) {
    
}



//답변수정,답변하기 버튼 클릭 이벤트
qnaComment.addEventListener("click",function(){

    try {
        commentNull.remove();
    } catch (error) {
    }

    if(count>0) {
        qnaComment.remove();
    };

    let qnaCommentDiv = document.createElement("div");
    let qnaCommentDivClass = document.createAttribute("class");
    qnaCommentDivClass.value="input-group";
    qnaCommentDiv.setAttributeNode(qnaCommentDivClass);

    let qnaCommentTA = document.createElement("textarea");
    let qnaCommentTAClass = document.createAttribute("class");
    qnaCommentTAClass.value="form-control";
    qnaCommentTA.setAttributeNode(qnaCommentTAClass);
    //textarea에 contents라는 아이디를 부여
    let qnaCommentTAId = document.createAttribute("id");
    qnaCommentTAId.value="contents";
    qnaCommentTA.setAttributeNode(qnaCommentTAId);

    let qnaCommentTAStyle = document.createAttribute("style");
    qnaCommentTAStyle.value="height: 300px;";
    qnaCommentTA.setAttributeNode(qnaCommentTAStyle);
    qnaCommentDiv.append(qnaCommentTA);

    let qcSubmitDiv = document.createElement("div");
    let qcSubmitDivClass = document.createAttribute("class");
    qcSubmitDivClass.value = "mt-3";
    qcSubmitDiv.setAttributeNode(qcSubmitDivClass);
    let qcSubmitDivStyle = document.createAttribute("style");
    qcSubmitDivStyle.value = "display: flex; justify-content: center";
    qcSubmitDiv.setAttributeNode(qcSubmitDivStyle);
    //div안에 답변제출버튼
    let qcSubmitB = document.createElement("button");
    // let qcSubmitAHref = document.createAttribute("href");
    //qcSubmitB.setAttributeNode(qcSubmitAHref);
    let qcSubmitBClass = document.createAttribute("class");
    qcSubmitBClass.value = "btn btn-info btn-icon-split";
    qcSubmitB.setAttributeNode(qcSubmitBClass);

    //답변제출 버튼의 아이디 생성
    let qcSubmitBId = document.createAttribute("id");
    qcSubmitBId.value = "commentAdd";
    qcSubmitB.setAttributeNode(qcSubmitBId);

    qcSubmitDiv.append(qcSubmitB);
    //버튼 안에 span링크
    let qcSubmitSpan = document.createElement("span");
    let qcSubmitSpanClass = document.createAttribute("class");
    qcSubmitSpanClass.value = "text";

    qcSubmitSpan.setAttributeNode(qcSubmitSpanClass);

    
    let qcSubmitSpanText = document.createTextNode("확인");
    
    
    qcSubmitSpan.appendChild(qcSubmitSpanText);
    qcSubmitB.append(qcSubmitSpan);

    //답변버튼idv 밑에 답변입력폼div 생성
    qnaComment.parentNode.parentNode.append(qnaCommentDiv);
    qnaComment.parentNode.parentNode.append(qcSubmitDiv);

    //답변제출하면 보내진다
    const commentAdd = document.getElementById("commentAdd");
    commentAdd.addEventListener("click",function(){
        
        
        
        const contents = document.getElementById("contents");
        let qna_comment = contents.value;

        //답변제출,수정 ajax 
        //1. XMLHTTPRequest 생성 2.준비 3.enctype 4.전송
        const xhttp = new XMLHttpRequest();
        xhttp.open("POST","./comment");
        xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xhttp.send("qna_num="+qna_num+"&qna_comment="+qna_comment);
        //5.응답처리
        xhttp.onreadystatechange=function(){
            if(this.readyState==4 && this.status==200){
                let result = xhttp.responseText.trim();
                console.log("답변제출성공result"+result);
                
                try {
                    commentList.removeChild(divdiv);
                }
                catch {
                }

                try {
                    commentNull.remove();
                } catch (error) {
                }

                getCommentList(qna_num);
                contents.value="";

                location.reload();

            }   
        };
        //답변제출,수정 ajax끝





    });


    //답변하기 버튼 누르면 그 버튼은 지워짐
    count++;
    qnaComment.remove();
    try {
        qnaCommentDelete.remove();
    } catch (error) {
        
    }

});



function getCommentList(qn){

    
    const xhttp = new XMLHttpRequest();
    xhttp.open("POST","./commentlist");
    xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded; charset=UTF-8");
    xhttp.send("qna_num="+qn);

    //5.응답처리
    xhttp.onreadystatechange=function(){
        if(this.readyState==4 && this.status==200){
            let result = xhttp.responseText.trim();
            console.log(result);

            result = JSON.parse(result)
            console.log("글내용파스후"+result.comment);
            let comment = result.comment;

            let cldiv = document.createElement("div");
            let cldivid = document.createAttribute("id");
            cldivid.value="divdiv";
            cldiv.setAttributeNode(cldivid);


            let clh3 = document.createElement("h3");

            let clh3t = document.createTextNode("답변 : "+result.comment);
            clh3.appendChild(clh3t);
            cldiv.appendChild(clh3);

            if(comment=='null') {
                console.log("답변없음");
            }else{
                commentList.appendChild(cldiv);
            }

            

            
        }   
    };
};