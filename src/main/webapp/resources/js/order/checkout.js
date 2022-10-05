var IMP = window.IMP; // 생략 가능
    IMP.init("imp26813326"); // 예: imp00000000

    const user_name = document.getElementById("user_name").value;
    const user_phone = document.getElementById("user_phone").value;
    const user_email = document.getElementById("user_email").value;
    const user_addr = document.getElementById("user_addr").value;
    const user_addr2 = document.getElementById("user_addr2").value;
    const user_post = document.getElementById("user_post").value;
    const item_name = document.getElementsByClassName("item_name");
    let lll = item_name.length-1;

    function requestPay() {

      //jsp파일의 메서드 계산 후에 뜨는 값이라 버튼누르기전에 깔아놓으면 0만뜸
      const ord_total2 = document.getElementById("ord_total2").value;


      console.log(ord_total2);

      // IMP.request_pay(param, callback) 결제창 호출
      IMP.request_pay({ // param
          pg: "html5_inicis",
          pay_method: "card",
          merchant_uid: new Date().getTime(),
          name: item_name[0].value+" 외 "+lll+"개",
          amount: ord_total2,
          buyer_email: user_email,
          buyer_name: user_name,
          buyer_tel: user_phone,
          buyer_addr: user_addr+" "+user_addr2,
          buyer_postcode: user_post
    }, function (rsp) { // callback
        if (rsp.success) {
            console.log("성공완료");
              // 결제 성공 시 로직,

            // jQuery로 HTTP 요청
            jQuery.ajax({
            url: "https://www.gndg.com/payments/complete", 
            method: "POST",
            headers: { "Content-Type": "application/json" },
            data: {
                imp_uid: rsp.imp_uid,
                merchant_uid: rsp.merchant_uid
            }

            }).done(function (data) {
              // DB 생성 성공시 로직
              // 주문내역으로 돌아가
            })


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
                    

                }   
            };
            //답변제출,수정 ajax끝
              
        } else {
            console.log("실패완");
              // 결제 실패 시 로직,
            alert("결제에 실패하였습니다. " +  rsp.error_msg);  
              
          }
      });
    }